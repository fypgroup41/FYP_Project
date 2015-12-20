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
public class Atype_ABean {

    int activityTypeID;
    int activitiesID;

    public Atype_ABean(int activityTypeID, int activitiesID) {
        this.activityTypeID = activityTypeID;
        this.activitiesID = activitiesID;
    }

    public int getActivityTypeID() {
        return activityTypeID;
    }

    public void setActivityTypeID(int activityTypeID) {
        this.activityTypeID = activityTypeID;
    }

    public int getActivitiesID() {
        return activitiesID;
    }

    public void setActivitiesID(int activitiesID) {
        this.activitiesID = activitiesID;
    }

}
