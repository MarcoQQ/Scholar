package com.web.service;

import com.web.bean.Institute;
import com.web.dao.InstituteMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
}