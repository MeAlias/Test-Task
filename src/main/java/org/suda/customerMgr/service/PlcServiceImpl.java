package org.suda.customerMgr.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.suda.customerMgr.dao.api.PlcDAO;
import org.suda.customerMgr.domain.Domain;
import org.suda.customerMgr.service.api.PlcService;

import java.util.List;

@Service
public class PlcServiceImpl implements PlcService {

    @Autowired
    private PlcDAO customerDAO;

    @Transactional
    public boolean addPlc(Domain domain) {
        return customerDAO.addCustomer(domain);
    }

    @Transactional
    public List<Domain> listPlc() {

        return customerDAO.listCustomer();
    }

    @Transactional
    public void removePlc(Integer id) {
        customerDAO.removeCustomer(id);
    }

    @Transactional
    public void editPlc(Domain domain) {
        customerDAO.editCustomer(domain);
    }


    @Transactional
    public List<Domain> editPlcforObject(Integer id) {
        return customerDAO.editCustomerforObject(id);
    }

    public PlcDAO getCustomerDAO() {
        return customerDAO;
    }

    public void setCustomerDAO(PlcDAO customerDAO) {
        this.customerDAO = customerDAO;
    }
}
