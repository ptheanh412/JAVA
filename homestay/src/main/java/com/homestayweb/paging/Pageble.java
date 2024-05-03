package com.homestayweb.paging;

import com.homestayweb.sort.Sorter;

public interface Pageble {
    Integer getPage();
    Integer getOffset();
    Integer getLimit();
    Sorter getSorter();
}
