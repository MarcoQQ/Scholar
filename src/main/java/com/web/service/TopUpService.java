package com.web.service;

import com.web.bean.CreditOrder;
import com.web.dao.CreditOrderMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

// 充值
@Service
public class TopUpService {
    @Autowired
    private CreditOrderMapper creditOrderMapper;

    public void insertOrder() {
    }
}
