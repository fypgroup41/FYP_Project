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
public class ActivitiesRecordBean {

    int activitiesRecordID;
    int activitiesID;
    int memberID;
    String state;

    public ActivitiesRecordBean(int activitiesRecordID, int activitiesID, int memberID, String state) {
        this.activitiesRecordID = activitiesRecordID;
        this.activitiesID = activitiesID;
        this.memberID = memberID;
        this.state = state;
    }

    public int getActivitiesRecordID() {
        return activitiesRecordID;
    }

    public void setActivitiesRecordID(int activitiesRecordID) {
        this.activitiesRecordID = activitiesRecordID;
    }

    public int getActivitiesID() {
        return activitiesID;
    }

    public void setActivitiesID(int activitiesID) {
        this.activitiesID = activitiesID;
    }

    public int getMemberID() {
        return memberID;
    }

    public void setMemberID(int memberID) {
        this.memberID = memberID;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

}
