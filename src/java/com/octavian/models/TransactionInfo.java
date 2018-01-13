/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.octavian.models;

import java.sql.Date;

/**
 *
 * @author octavian
 */
public class TransactionInfo {
        int id;
        int ord_id;
        int client_id;
        int amount;
        String product;
        String entity;
        Date date;

    public TransactionInfo(int id, int ord_id, int client_id, int amount, String product, String entity, Date date) {
        this.id = id;
        this.ord_id = ord_id;
        this.client_id = client_id;
        this.amount = amount;
        this.product = product;
        this.entity = entity;
        this.date = date;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getOrd_id() {
        return ord_id;
    }

    public void setOrd_id(int ord_id) {
        this.ord_id = ord_id;
    }

    public int getClient_id() {
        return client_id;
    }

    public void setClient_id(int client_id) {
        this.client_id = client_id;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public String getProduct() {
        return product;
    }

    public void setProduct(String product) {
        this.product = product;
    }

    public String getEntity() {
        return entity;
    }

    public void setEntity(String entity) {
        this.entity = entity;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
        
        
}
