/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.octavian.models;

/**
 *
 * @author octavian
 */
public class ClientInfo {
    int id;
    String fname;
    String lname;
    String email;
    String password;
    String phone;
    String currency;
    String account;
    int buget; 
    int age;

    public ClientInfo(int id, String fname, String lname, String email, String password, String phone, String currency, String account, int buget, int age) {
        this.id = id;
        this.fname = fname;
        this.lname = lname;
        this.email = email;
        this.password = password;
        this.phone = phone;
        this.currency = currency;
        this.account = account;
        this.buget = buget;
        this.age = age;
    }

    public ClientInfo(String fname, String lname, String email, String phone, String currency, int buget, int age) {
        this.fname = fname;
        this.lname = lname;
        this.email = email;
        this.phone = phone;
        this.currency = currency;
        this.buget = buget;
        this.age = age;
    }
    
    public ClientInfo(){
        
    }
    
    //Getters and Setters

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getCurrency() {
        return currency;
    }

    public void setCurrency(String currency) {
        this.currency = currency;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public int getBuget() {
        return buget;
    }

    public void setBuget(int buget) {
        this.buget = buget;
    }

    @Override
    public String toString() {
        return "ClientInfo{" + "id=" + id + ", fname=" + fname + ", lname=" + lname + ", email=" + email + ", password=" + password + ", phone=" + phone + ", currency=" + currency + ", account=" + account + ", buget=" + buget + '}';
    }
    
}
