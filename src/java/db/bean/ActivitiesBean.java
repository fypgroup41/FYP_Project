package db.bean;

public class ActivitiesBean {

    int activitiesID;
    String name;
    int districtNo;
    int quota;
    int remain;
    int targetAgeMax;
    int tagerAgeMin;
    String deadline;
    String venue;
    String date;
    String tag;
    int staffID;
    int sqID;
    String description;

    public ActivitiesBean(int activitiesID, String name, int districtNo, int quota, int remain, int targetAgeMax, int tagerAgeMin, String deadline, String venue, String date, String tag, int staffID, int sqID, String description) {
        this.activitiesID = activitiesID;
        this.name = name;
        this.districtNo = districtNo;
        this.quota = quota;
        this.remain = remain;
        this.targetAgeMax = targetAgeMax;
        this.tagerAgeMin = tagerAgeMin;
        this.deadline = deadline;
        this.venue = venue;
        this.date = date;
        this.tag = tag;
        this.staffID = staffID;
        this.sqID = sqID;
        this.description = description;
    }

    public int getActivitiesID() {
        return activitiesID;
    }

    public void setActivitiesID(int activitiesID) {
        this.activitiesID = activitiesID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getDistrictNo() {
        return districtNo;
    }

    public void setDistrictNo(int districtNo) {
        this.districtNo = districtNo;
    }

    public int getQuota() {
        return quota;
    }

    public void setQuota(int quota) {
        this.quota = quota;
    }

    public int getRemain() {
        return remain;
    }

    public void setRemain(int remain) {
        this.remain = remain;
    }

    public int getTargetAgeMax() {
        return targetAgeMax;
    }

    public void setTargetAgeMax(int targetAgeMax) {
        this.targetAgeMax = targetAgeMax;
    }

    public int getTagerAgeMin() {
        return tagerAgeMin;
    }

    public void setTagerAgeMin(int tagerAgeMin) {
        this.tagerAgeMin = tagerAgeMin;
    }

    public String getDeadline() {
        return deadline;
    }

    public void setDeadline(String deadline) {
        this.deadline = deadline;
    }

    public String getVenue() {
        return venue;
    }

    public void setVenue(String venue) {
        this.venue = venue;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getTag() {
        return tag;
    }

    public void setTag(String tag) {
        this.tag = tag;
    }

    public int getStaffID() {
        return staffID;
    }

    public void setStaffID(int staffID) {
        this.staffID = staffID;
    }

    public int getSqID() {
        return sqID;
    }

    public void setSqID(int sqID) {
        this.sqID = sqID;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

}
