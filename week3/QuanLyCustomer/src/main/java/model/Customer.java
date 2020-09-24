package model;

public class Customer {
    private int id;
    private String fullname;
    private String address;
    private String email;

    public Customer() {
    }

    public Customer(int id, String fullname, String address, String email) {
        this.id = id;
        this.fullname = fullname;
        this.address = address;
        this.email = email;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}


