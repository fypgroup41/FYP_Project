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
public class SurveyqTypeBean {

    int sQTypeID;
    String name;

    public SurveyqTypeBean(int sQTypeID, String name) {
        this.sQTypeID = sQTypeID;
        this.name = name;
    }

    public int getsQTypeID() {
        return sQTypeID;
    }

    public void setsQTypeID(int sQTypeID) {
        this.sQTypeID = sQTypeID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

}
