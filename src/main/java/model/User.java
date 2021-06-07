package model;


import java.io.Serializable;

public class User implements Serializable {

    private int userID;
    private String name;
    private String user_name;
    private String password;
    private String email;
    private String address;
    private String role;

    public User(int userID, String name, String user_name, String password, String email, String address, String role) {
        this.userID = userID;
        this.name = name;
        this.user_name = user_name;
        this.password = password;

        this.email = email;
        this.address=address;
        this.role=role;
    }



    public int getUserID() {
        return userID;
    }

    public String getName() {
        return name;
    }

    public String getUser_name() {
        return user_name;
    }

    public String getPassword() {
        return password;
    }



    public String getEmail() {
        return email;
    }

    public String getAddress() {
        return address;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public void setPassword(String password) {
        this.password = password;
    }



    public void setEmail(String email) {
        this.email = email;
    }

    public void setAddress(String day_birthday) {
        this.address =address;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    @Override
    public String toString() {
        return "User{" +
                "userID=" + userID +
                ", name='" + name + '\'' +
                ", user_name='" + user_name + '\'' +
                ", password='" + password + '\'' +

                ", email=" + email +
                ", day_birthday=" +address +
                '}';
    }
}


