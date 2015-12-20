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
public class ActivityBudgetBean {

    int itemID;
    int activitiesID;
    String itemName;
    String itemType;
    double cost;
    int number;
    String remark;

    public ActivityBudgetBean(int itemID, int activitiesID, String itemName, String itemType, double cost, int number, String remark) {
        this.itemID = itemID;
        this.activitiesID = activitiesID;
        this.itemName = itemName;
        this.itemType = itemType;
        this.cost = cost;
        this.number = number;
        this.remark = remark;
    }

    public int getItemID() {
        return itemID;
    }

    public void setItemID(int itemID) {
        this.itemID = itemID;
    }

    public int getActivitiesID() {
        return activitiesID;
    }

    public void setActivitiesID(int activitiesID) {
        this.activitiesID = activitiesID;
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    public String getItemType() {
        return itemType;
    }

    public void setItemType(String itemType) {
        this.itemType = itemType;
    }

    public double getCost() {
        return cost;
    }

    public void setCost(int cost) {
        this.cost = cost;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

}
