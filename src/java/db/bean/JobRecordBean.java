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
public class JobRecordBean {

    int jobID;
    int activitiesID;
    int memberID;

    public JobRecordBean(int jobID, int activitiesID, int memberID) {
        this.jobID = jobID;
        this.activitiesID = activitiesID;
        this.memberID = memberID;
    }

    public int getJobID() {
        return jobID;
    }

    public void setJobID(int jobID) {
        this.jobID = jobID;
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

}
