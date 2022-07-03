package nlu.web.project.model;

import java.util.Date;

public class User {
    private String username;
    private String password;
    private String address;
    private String state;
    private String name;
    private String phone;
    private String email;
    private String type;
    private String sex;
    private Date dob;
    private Date createdDate;
    private String avatar;
    private String key;
    private Date keyTime;

    public User(String username, String password, String address, String state, String name, String phone,
                String email, String type, String sex, Date dob, Date createdDate, String avatar, String key, Date keyTime) {
        this.username = username;
        this.password = password;
        this.address = address;
        this.state = state;
        this.name = name;
        this.phone = phone;
        this.email = email;
        this.type = type;
        this.sex = sex;
        this.dob = dob;
        this.createdDate = createdDate;
        this.avatar = avatar;
        this.key = key;
        this.keyTime = keyTime;
    }
    // danh cho chu nang quen mat khau
    public User(String username, String password) {
        this.username = username;
        this.password = password;
    }

    // for admin
    public User(String username, String password, String address, String name, String phone, String email, String sex, Date dob) {
        this.username = username;
        this.password = password;
        this.address = address;
        this.name = name;
        this.phone = phone;
        this.email = email;
        this.sex = sex;
        this.dob = dob;
    }
    // for admin

    public User(String username, String password, String address, String phone, String email, String type, String avatar) {
        this.username = username;
        this.password = password;
        this.address = address;
        this.phone = phone;
        this.email = email;
        this.type = type;
        this.avatar = avatar;
    }

    // dành cho chức năng thay đổi thông tin khách hàng
    public User( String name, String phone, String email,String address,Date dob, String sex) {
        this.address = address;
        this.name = name;
        this.phone = phone;
        this.email = email;
        this.sex = sex;
        this.dob = dob;
    }

    public User(String name, String email, String type, String state, Date date) {
        this.name= name;
        this.email= email;
        this.type= type;
        this.state= (state.equalsIgnoreCase("active")?"Không khóa":"Khóa");
        this.createdDate= date;
    }


    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }

    public String getAddress() {
        return address;
    }

    public String getState() {
        return state;
    }

    public String getName() {
        return name;
    }

    public String getPhone() {
        return phone;
    }

    public String getEmail() {
        return email;
    }

    public String getType() {
        return type;
    }

    public String getSex() {
        return sex;
    }

    public Date getDob() {
        return dob;
    }

    public Date getCreatedDate() {
        return createdDate;
    }

    public String getAvatar() {
        return avatar;
    }

    public String getKey() {
        return key;
    }

    public Date getKeyTime() {
        return keyTime;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setState(String state) {
        this.state = state;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setTyle(String type) {
        this.type = type;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public void setKey(String key) {
        this.key = key;
    }

    public void setKeyTime(Date keyTime) {
        this.keyTime = keyTime;
    }
}