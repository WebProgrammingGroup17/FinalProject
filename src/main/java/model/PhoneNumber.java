package model;

import java.io.Serializable;

public class PhoneNumber implements Serializable {

    private int id;
    private String titlePhone;
    private String phoneNumber;

    public PhoneNumber() {}

    public PhoneNumber(int id, String titlePhone, String phoneNumber) {
        this.id = id;
        this.titlePhone = titlePhone;
        this.phoneNumber = phoneNumber;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitlePhone() {
        return titlePhone;
    }

    public void setTitlePhone(String titlePhone) {
        this.titlePhone = titlePhone;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

}
