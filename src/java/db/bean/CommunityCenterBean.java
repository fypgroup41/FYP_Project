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
public class CommunityCenterBean {

    int communityCenterID;
    int districtID;
    String name;
    String address;
    String tel;
    String fax;
    String email;
    String info;

    public CommunityCenterBean(int communityCenterID, int districtID, String name, String address, String tel, String fax, String email, String info) {
        this.communityCenterID = communityCenterID;
        this.districtID = districtID;
        this.name = name;
        this.address = address;
        this.tel = tel;
        this.fax = fax;
        this.email = email;
        this.info = info;
    }

    public int getCommunityCenterID() {
        return communityCenterID;
    }

    public void setCommunityCenterID(int communityCenterID) {
        this.communityCenterID = communityCenterID;
    }

    public int getDistrictID() {
        return districtID;
    }

    public void setDistrictID(int districtID) {
        this.districtID = districtID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getFax() {
        return fax;
    }

    public void setFax(String fax) {
        this.fax = fax;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

}