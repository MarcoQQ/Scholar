package com.web.service;

import com.web.bean.Institute;
import com.web.dao.InstituteMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class InstituteService {
    private final InstituteMapper instituteMapper;

    @Autowired
    public InstituteService(InstituteMapper instituteMapper) {
        this.instituteMapper = instituteMapper;
    }

    public Institute selectByName(String name) {
        return instituteMapper.selectByName(name);
    }

    public boolean instituteExist(Integer id) {
        return null != instituteMapper.selectByPrimaryKey(id);
    }

    public boolean instituteExist(String name) {
        return null != instituteMapper.selectByName(name);
    }

    public Institute getInstitute(Integer id) {
        return instituteMapper.selectByPrimaryKey(id);
    }

    public List<Institute> selectAll() {return instituteMapper.selectAll();}
}
