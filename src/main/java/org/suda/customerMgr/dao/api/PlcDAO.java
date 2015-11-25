package org.suda.customerMgr.dao.api;


import org.suda.customerMgr.domain.Domain;

import java.util.List;

public interface PlcDAO {

    public boolean addCustomer(Domain domain);

    public List<Domain> listCustomer();

    public void removeCustomer(Integer id);

    public void  editCustomer(Domain domain);

    public  List<Domain> editCustomerforObject(Integer id);
}
