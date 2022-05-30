package com.example.asm1.Model;

public class Products {
    public int id;
    public String name;
    public String email;
    public String address;
    public int phone;

    public Products() {
    }

    public String toString(int id, String name, String email, String address, int phone) {
        return id+name+email+address+phone;
    }

    public Products(String name, String email, String address, int phone) {
        this.name = name;
        this.email = email;
        this.address = address;
        this.phone = phone;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getPhone() {
        return phone;
    }

    public void setPhone(int phone) {
        this.phone = phone;
    }
}
