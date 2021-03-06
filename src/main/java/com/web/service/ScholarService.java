package com.web.service;

import com.web.bean.Scholar;
import com.web.dao.ScholarMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ScholarService {
    private final ScholarMapper scholarMapper;

    @Autowired
    public ScholarService(ScholarMapper scholarMapper) {
        this.scholarMapper = scholarMapper;
    }

    public boolean scholarExist(Integer id) {
        return null != scholarMapper.selectByPrimaryKey(id);
    }

    public void addScholar(Scholar scholar) {
        scholarMapper.insert(scholar);
    }

    public String getName(int id){
        Scholar scholar = scholarMapper.selectByPrimaryKey(id);
        return scholar.getUsername();
    }

    public Scholar getScholar(int id) {
        return scholarMapper.selectByPrimaryKey(id);
    }
}
