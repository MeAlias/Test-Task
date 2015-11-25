package org.suda.customerMgr.dao;

import org.hibernate.SessionFactory;
import org.hibernate.classic.Session;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.suda.customerMgr.dao.api.PlcDAO;
import org.suda.customerMgr.domain.Domain;

import java.util.List;


@Repository
public class PlcDAOImpl implements PlcDAO {
    private static final Logger LOGGER = LoggerFactory.getLogger(PlcDAO.class);
    @Autowired
    public SessionFactory sessionFactory;
    public boolean addCustomer(Domain domain) {
        LOGGER.info("Adding domain: " + domain);
        try {
            sessionFactory.getCurrentSession().save(domain);
            //return true;
        }
        catch (RuntimeException e ){
            LOGGER.error("Error in adding dich", e);
        }
        catch (Exception e) {
            LOGGER.error("Error in adding Domain", e);
        }

        return false;
    }

    public List<Domain> listCustomer() {
        LOGGER.info("Listing all users ");
        return sessionFactory.getCurrentSession().createQuery("from Domain").list();
    }

    public void removeCustomer(Integer id) {
        Domain domain = (Domain) sessionFactory.getCurrentSession().load(
                Domain.class, id);
        if (null != domain) {
            sessionFactory.getCurrentSession().delete(domain);
        }

    }


    public List<Domain> editCustomerforObject(Integer id) {
        return sessionFactory.getCurrentSession().createQuery("from Domain where id = :customerid").setParameter("customerid",id).list();
    }


    public void editCustomer(Domain domain) {
        Session session = sessionFactory.getCurrentSession();
        // Retrieve existing person via id
        Domain Plc = (Domain) session.get(Domain.class, domain.getId());
        // Assign updated values to this person
        Plc.setParentId(domain.getParentId());
        Plc.setSerial(domain.getSerial());
        Plc.setSignal(domain.getSignal());
        Plc.setPlcGroup(domain.getPlcGroup());
        sessionFactory.getCurrentSession().update(Plc);
    }
}
