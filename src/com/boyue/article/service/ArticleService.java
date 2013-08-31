package com.boyue.article.service;

import java.util.List;

import com.boyue.sort.dao.SortDao;
import com.boyue.sort.entity.Sort;

public class ArticleService {
    public List<Sort> getSort() {
        SortDao sortDao = new SortDao();
        return sortDao.getSort();
    }
    
}
