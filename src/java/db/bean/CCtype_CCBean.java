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
public class CCtype_CCBean {

    int ccTypeID;
    int ccID;

    public CCtype_CCBean(int ccTypeID, int ccID) {
        this.ccTypeID = ccTypeID;
        this.ccID = ccID;
    }

    public int getCcTypeID() {
        return ccTypeID;
    }

    public void setCcTypeID(int ccTypeID) {
        this.ccTypeID = ccTypeID;
    }

    public int getCcID() {
        return ccID;
    }

    public void setCcID(int ccID) {
        this.ccID = ccID;
    }

}
