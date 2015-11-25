package org.suda.customerMgr.domain;

import javax.persistence.*;

@Entity
@Table(name = "PLCPOINT")
public class Domain {

    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private int id;

    @Column(name = "SERIAL")
    private String serial;

    public String getSerial() {
        return serial;
    }

    public void setSerial(String serial) {
        this.serial = serial;
    }

    public String getParentId() {
        return parentId;
    }

    public void setParentId(String parentId) {
        this.parentId = parentId;
    }

    public String getPlcGroup() {
        return plcGroup;
    }

    public void setPlcGroup(String plcGroup) {
        this.plcGroup = plcGroup;
    }

    public String getSignal() {
        return signal;
    }

    public void setSignal(String signal) {
        this.signal = signal;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Column(name = "PARENT")
     private String parentId;

    @Column(name = "PLCGROUP")
    private String plcGroup;

    @Column(name = "SIGNAL")
   // @Pattern(regexp = "^[0-9]{6,14}$")
    private String signal;

}
