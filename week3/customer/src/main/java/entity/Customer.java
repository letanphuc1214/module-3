package entity;

public class Customer {
    String hoten;
    String email;
    String diachi;
    String username;
    String password;

    public Customer(String hoten, String email, String diachi, String username, String password) {
        this.hoten = hoten;
        this.email = email;
        this.diachi = diachi;
        this.username = username;
        this.password = password;
    }

    public String getHoten() {
        return hoten;
    }

    public void setHoten(String hoten) {
        this.hoten = hoten;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDiachi() {
        return diachi;
    }

    public void setDiachi(String diachi) {
        this.diachi = diachi;
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

    @Override
    public String toString() {
        return "customer{" +
                "hoten='" + hoten + '\'' +
                ", email='" + email + '\'' +
                ", diachi='" + diachi + '\'' +
                '}';
    }
}
