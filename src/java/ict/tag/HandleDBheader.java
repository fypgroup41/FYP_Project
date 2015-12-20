/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ict.tag;

/**
 *
 * @author test
 */
public class HandleDBheader {

    public String[] getAdminBean() {
        String[] header = new String[3];
        header[0] = "Administrator ID";
        header[1] = "Loign Time";
        header[2] = "Modify Time";
        return header;
    }

    public String[] getActivitiesBean() {
        String[] header = new String[14];
        header[0] = "Activities";
        header[1] = "Name";
        header[2] = "District No";
        header[3] = "Quota ";
        header[4] = "Remain ";
        header[5] = "Target Age Max ";
        header[6] = "TargetAge Min ";
        header[7] = "Deadline ";
        header[8] = "Venue ";
        header[9] = "Date ";
        header[10] = "Tag ";
        header[11] = "Staff ID ";
        header[12] = "SQ ID ";
        header[13] = "Description ";
        return header;
    }

}
