<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<c:url var="APIurl" value="/api-admin-room"/>
<c:url var="NEWurl" value="/admin-room"/>
<html>
<head>
    <title>Chỉnh sửa bài viết</title>
</head>
<body>
<div class="main-content">
    <div class="main-content-inner">
        <div class="breadcrumbs" id="breadcrumbs">
            <script type="text/javascript">
                try {
                    ace.settings.check('breadcrumbs', 'fixed')
                } catch (e) {
                }
            </script>
            <ul class="breadcrumbs">
                <li>
                    <i class="ace-icon fa fa-home home-icon"></i>
                    <a href="#">Trang chủ</a>
                </li>
                <li class="active">Chỉnh sửa bài viết</li>
            </ul>
        </div>
        <div class="page-content">
            <div class="row">
                <br>
                <div class="col-xs-12">
                    <c:if test="${not empty messageResponse}">
                        <div class="alert alert-${alert}">
                                ${messageResponse}
                        </div>
                    </c:if>
                    <form id="formSubmit" enctype="multipart/form-data">
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right">Loại phòng</label>
                            <div class="col-sm-9">
                                <select class="form-control" id="categoryCode" name="categoryCode">
                                    <c:if test="${empty model.categoryCode}">
                                        <option value="">Chọn loại phòng</option>
                                        <c:forEach var="item" items="${categories}">
                                            <option value="${item.code}">${item.name} </option>
                                        </c:forEach>
                                    </c:if>
                                    <c:if test="${not empty model.categoryCode}">
                                        <option value="">Chọn loại phòng</option>
                                        <c:forEach var="item" items="${categories}">
                                            <option value="${item.code}"
                                                    <c:if test="${item.code == model.categoryCode}">selected="selected"</c:if>>
                                                    ${item.name}
                                            </option>
                                        </c:forEach>
                                    </c:if>
                                </select>
                            </div>
                        </div>
                        <br/>
                        <br/>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right">Tên phòng</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="title" name="title" value="${model.title}"/>
                            </div>
                        </div>
                        <br/>
                        <br/>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right">Giá phòng</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="price" name="price" value="${model.price}"/>
                            </div>
                        </div>
                        <br/>
                        <br/>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right">Diện tích</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="acreage" name="acreage"
                                       value="${model.acreage}"/>
                            </div>
                        </div>
                        <br/>
                        <br/>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right">Tiện ích</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="amenities" name="amenities"
                                       value="${model.amenities}"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right">Số lượng giường</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="amount_bed" name="amount_bed"
                                       value="${model.amount_bed}"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right">Số lượng WC</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="amount_badroom" name="amount_badroom "
                                       value="${model.amount_badroom}"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right">Số người</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="capacity" name="capacity"
                                       value="${model.capacity}"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right">Mô tả</label>
                            <div class="col-sm-9">
                                <textarea rows="" cols="" id="description" name="description" style="   width: 820px;height: 175px">
                                    ${model.description}
                                </textarea>
                            </div>
                        </div>
<%--                        <div class="form-group">--%>
<%--                            <label class="col-sm-3 control-label no-padding-right">Chọn hình ảnh</label>--%>
<%--                            <div class="col-sm-9">--%>
<%--                                <input type="file" id="image" name="image" value="${model.img}">--%>
<%--                            </div>--%>
<%--                        </div>--%>
                        <br/>
                        <br/>
                        <div class="form-group">
                            <div class="col-sm-12">
                                <c:if test="${not empty model.id}">
                                    <input type="button" class="btn btn-white btn-warning btn-bold" value="Cập nhật"
                                           id="btnAddOrUpdateRoom">
                                </c:if>
                                <c:if test="${empty model.id}">
                                    <input type="button" class="btn btn-white btn-warning btn-bold" value="Thêm"
                                           id="btnAddOrUpdateRoom">
                                </c:if>
                            </div>
                        </div>
                        <input type="hidden" value="${model.id}" id="id" name="id"/>
                    </form>
                </div>
            </div>
        </div>
    </div>

</div>
<script>
    var editor = '';
    $(document).ready(function () {
        editor = CKEDITOR.replace('description');
    });

    $('#btnAddOrUpdateRoom').click(function (e) {
        e.preventDefault();
        var data = {};
        var formData = $('#formSubmit').serializeArray();
        $.each(formData, function (i, v) {
            data[""+v.name+""] = v.value;
        });
        data["content"] = editor.getData();
        var id = $('#id').val();
        if (id == "") {
            addRoom(data);
        } else {
            updateRoom(data);
        }
    });

    function addRoom(data) {
        $.ajax({
            url: '${APIurl}',
            type: 'POST',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {
                window.location.href = "${NEWurl}?type=Edit&id="+result.id+"&message=insert_success";
            },
            error: function (error) {
                window.location.href = "${NEWurl}?type=List&page=2&maxPageItem=3&message=error_system";
            }
        });
    }

    function updateRoom(data) {
        $.ajax({
            url: '${APIurl}',
            type: 'PUT',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {
                window.location.href = "${NEWurl}?type=Edit&id="+result.id+"&message=update_success";
            },
            error: function (error) {
                console.log(error);
                window.location.href = "${NEWurl}?type=List&page=2&maxPageItem=3&sortName=title&sortBy=desc&message=error_system";
            }
        });
    }
</script>
</body>
</html>
