package nlu.web.project.entity;

import org.springframework.format.annotation.NumberFormat;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;
import java.util.Date;

@Entity
@Table(name = "User")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id", nullable = false)
    private Long id;
    @Size(min = 2, max = 20, message = "Username có từ 2-20 ký tự!")
    @Column(name = "username")
    private String username;

    @Size(min = 6, max = 20, message = "Pass có từ 6-20 ký tự!")
    @Column(name = "password")
    private String password;

    @Column(name = "address")
    private String address;

    @Column(name = "state")
    private String state;

    @NotBlank(message = "Không được bỏ trống tên!!!")
    @Column(name = "name")
    private String name;

    @Size(min = 9, max = 12, message = "sđt có từ 9-12 số!")
    @Column(name = "phone")
    private String phone;

    @Email(message = "Nhập đúng định dạng email")
    @Column(name = "email")
    private String email;

    @Column(name = "type")
    private String type;

    @Column(name = "gender")
    private String gender;

    @Column(name = "dob")
    private String dob;

    @Column(name = "avatar")
    private String avatar;

    public User() {
    }

    public User(String username, String password, String address, String state, String name, String phone, String email, String type, String gender, String dob, String avatar) {
        this.username = username;
        this.password = password;
        this.address = address;
        this.state = state;
        this.name = name;
        this.phone = phone;
        this.email = email;
        this.type = type;
        this.gender = gender;
        this.dob = dob;
        this.avatar = avatar;
    }

    public User(User user) {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }
}
