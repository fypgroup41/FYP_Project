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
public class SurveyAnswer {

    int saID;
    String answer;
    int sqID;
    int memberID;
    int userID;

    public SurveyAnswer(int saID, String answer, int sqID, int memberID, int userID) {
        this.saID = saID;
        this.answer = answer;
        this.sqID = sqID;
        this.memberID = memberID;
        this.userID = userID;
    }

    public int getSaID() {
        return saID;
    }

    public void setSaID(int saID) {
        this.saID = saID;
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    public int getSqID() {
        return sqID;
    }

    public void setSqID(int sqID) {
        this.sqID = sqID;
    }

    public int getMemberID() {
        return memberID;
    }

    public void setMemberID(int memberID) {
        this.memberID = memberID;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

}
