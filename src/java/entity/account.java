package entity;

public class account {

    private int id;
    private String phone;
    private String pass;
    private int role;

    public account(int id, String phone, String pass, int role) {
        this.id = id;
        this.phone = phone;
        this.pass = pass;
        this.role = role;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    @Override
    public String toString() {
        return "account{" + "id=" + id + ", phone=" + phone + ", pass=" + pass + ", role=" + role + '}';
    }
    
    
}
