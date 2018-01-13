/*
 * Copyright (C) 2018 octavian
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */
package com.octavian.config;

/**
 *
 * @author octavian
 */
public interface DbTableColumns {
    
    //Clients
    String ID = "ID";
    String LAST_NAME = "LastName";
    String FIRST_NAME = "FirstName";
    String AGE = "Age";
    String EMAIL = "Email";
    String PHONE = "Phone";
    String CUR = "Currency";
    String ACCOUNT_ID = "AccountID";
    String CLIENT_AMOUNT = "amount";
    String PASSWORD = "password";
            
    //Transactions
    String ORDER_ID = "OrderId";
    String ORDER_NUMBER = "OrderNumber";
    String CLIENT_ID = "ClientId";
    String TRANSACTION_AMOUNT = "Amount";
    String PRODUCT = "Product";
    String ENTITY = "Entity";
    String DATE = "Date";
}
