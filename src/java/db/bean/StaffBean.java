package db.bean;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author test
 */
public class StaffBean {

    int staffID;
    int districtID;
    int ccID;
    int ccDistrictID;
    String position;

    public StaffBean(int staffID, int districtID, int ccID, int ccDistrictID, String position) {
        this.staffID = staffID;
        this.districtID = districtID;
        this.ccID = ccID;
        this.ccDistrictID = ccDistrictID;
        this.position = position;
    }

    public int getStaffID() {
        return staffID;
    }

    public void setStaffID(int staffID) {
        this.staffID = staffID;
    }

    public int getDistrictID() {
        return districtID;
    }

    public void setDistrictID(int districtID) {
        this.districtID = districtID;
    }

    public int getCcID() {
        return ccID;
    }

    public void setCcID(int ccID) {
        this.ccID = ccID;
    }

    public int getCcDistrictID() {
        return ccDistrictID;
    }

    public void setCcDistrictID(int ccDistrictID) {
        this.ccDistrictID = ccDistrictID;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

}
