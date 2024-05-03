<%@ include file="/common/taglib.jsp" %>
<c:url var="APIurl" value="/api-admin-room"/>
<c:url var="NEWurl" value="/admin-room"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset =UTF-8">
    <title>Danh sách phòng</title>

</head>
<body>
<div class="main-content">
    <form action="<c:url value='/admin-room'/>" id="formSubmit" method="get">
        <div class="main-content">
            <div class="main-content-inner">
                <div class="breadcrumbs ace-save-state" id="breadcrumbs">
                    <ul class="breadcrumb">
                        <li>
                            <i class="ace-icon fa fa-home home-icon"></i>
                            <a href="#"> Trang chủ</a>
                        </li>
                    </ul>
                </div>
                <div class="page-content">
                    <br>
                    <div class="row">
                        <div class="col-xs-12">
                                                    <c:if test="${not empty messageResponse}">
                                                        <div class="alert alert-${alert}">
                                                                ${messageResponse}
                                                        </div>
                                                    </c:if>
                            <br>
                            <div class="widget-box table-filter">
                                <div class="table-btn-controls">
                                    <div class="pull-right tableTools-container">
                                        <div class="dt-buttons btn-overlap btn-group">
                                            <a flag="info"
                                               class="dt-button buttons-col vis btn btn-white btn-primary btn-bold"
                                               data-toggle="tooltip"
                                               title="Thêm bài viết" href="<c:url value="/admin-room?type=Edit"/> ">
                                            <span>
                                                <i class="fa fa-plus-circle bigger-110 purple"></i>
                                            </span>
                                            </a>
                                            <button id="btnDelete" type="button"
                                                    class="dt-button buttons-html5 btn btn-white btn-primary btn-bold"
                                                    data-toggle="tooltip" title="Xóa bài viết">
                                            <span>
                                                <i class="fa fa-trash-o bigger-110-pink"></i>
                                            </span>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-12">
                                    <div class="table-responsive">
                                        <br>
                                        <table class="table table-bordered">
                                            <thead>
                                            <tr>
                                                <th><input type="checkbox" id="checkAll"></th>
                                                <th>Title</th>
                                                <th>Price</th>
                                                <th>Acreage</th>
                                                <th>Capacity</th>
                                                <th>Thao tác</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach var="item" items="${model.listResult}">
                                                <tr>
                                                    <td><input type="checkbox" id="checkbox_${item.id}" value="${item.id}"></td>
                                                    <td>${item.title}</td>
                                                    <td>${item.price}</td>
                                                    <td>${item.acreage}</td>
                                                    <td>${item.capacity}</td>
                                                    <td>
                                                        <c:url var="editURL" value="/admin-room">
                                                            <c:param name="type" value="Edit"/>
                                                            <c:param name="id" value="${item.id}"/>
                                                        </c:url>
                                                        <a class="btn btn-sm btn-primary btn-edit" data-toggle="tooltip"
                                                           title="Cập nhật phòng" href="${editURL}">
                                                            <i class="fa fa-pencil-square-o" aria-hidden="true"></i>
                                                        </a>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                            </tbody>
                                        </table>
                                        <ul class="pagination" id="pagination"></ul>
                                        <input type="hidden" value="" id="page" name="page"/>
                                        <input type="hidden" value="" id="maxPageItem" name="maxPageItem"/>
                                        <input type="hidden" value="" id="sortName" name="sortName"/>
                                        <input type="hidden" value="" id="sortBy" name="sortBy"/>
                                        <input type="hidden" value="" id="type" name="type"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </form>
</div>
<script>

    var totalPages = ${model.totalPage};
    var currentPage = ${model.page};
    var limit = 3;
    $(function () {
        window.pagObj = $('#pagination').twbsPagination({
            totalPages: totalPages,
            visiblePages: 10,
            startPage: currentPage,
            onPageClick: function (event, page) {
                if (currentPage != page) {
                    $('#maxPageItem').val(limit);
                    $('#page').val(page);
                    $('#sortName').val('title');
                    $('#sortBy').val('desc');
                    $('#type').val('List');
                    $('#formSubmit').submit();
                }
            }
        });
    });
    $(function() {
        $('#pagination').on('click', 'a', function(event) {
            event.preventDefault();
            var page = $(this).attr('href');
            loadPage(page);
        });
    });

    function loadPage(page) {
        $.ajax({
            type: 'GET',
            url: page,
            success: function(data) {
                $('#table-body').html($(data).find('#table-body').html());
                // Cập nhật các giá trị khác nếu cần
            }
        });
    }
    $("#btnDelete").click(function () {
        var data = {};
        var ids = $('tbody input[type=checkbox]:checked').map(function () {
            return $(this).val();
        }).get();
                 data['ids'] = ids;
                 deleteRoom(data);
    });

    function deleteRoom(data) {
        $.ajax({
            url: `${APIurl}`,
            type: 'DELETE',
            contentType: 'application/json',
            data: JSON.stringify(data),
            success: function (result) {
                window.location.href = "${NEWurl}?type=List&page=1&maxPageItem=6&sortName=title&sortBy=desc&message=delete_success";
            },
            error: function (error) {
                window.location.href = "${NEWurl}?type=List&page=1&maxPageItem=6&sortName=title&sortBy=desc&message=error_system";
            }
        });
    }
</script>
</body>
</html>