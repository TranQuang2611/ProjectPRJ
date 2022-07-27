/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author admin
 */
public class Account {
    int id;
    String name;
    String pass;   
    int isSell;
    int isAdmin;
    String realname;
    String gmail;
    String phone;
    int accountbalance;
    
    
    public Account() {
    }

    public Account(int id, String name, String pass, int isSell, int isAdmin, String realname, String gmail, String phone, int accountbalance) {
        this.id = id;
        this.name = name;
        this.pass = pass;
        this.isSell = isSell;
        this.isAdmin = isAdmin;
        this.realname = realname;
        this.gmail = gmail;
        this.phone = phone;
        this.accountbalance = accountbalance;
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

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public int getIsSell() {
        return isSell;
    }

    public void setIsSell(int isSell) {
        this.isSell = isSell;
    }

    public int getIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(int isAdmin) {
        this.isAdmin = isAdmin;
    }

    public String getRealname() {
        return realname;
    }

    public void setRealname(String realname) {
        this.realname = realname;
    }

    public String getGmail() {
        return gmail;
    }

    public void setGmail(String gmail) {
        this.gmail = gmail;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public int getAccountbalance() {
        return accountbalance;
    }

    public void setAccountbalance(int accountbalance) {
        this.accountbalance = accountbalance;
    }

   
    
    
    
}
