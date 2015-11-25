package org.suda.customerMgr.service.api;

import org.suda.customerMgr.domain.Domain;

import java.util.List;

public interface PlcService {

    public boolean addPlc(Domain domain);

    public List<Domain> listPlc();

    public void removePlc(Integer id);

    public void editPlc(Domain id);

    public  List<Domain> editPlcforObject(Integer id);



}
