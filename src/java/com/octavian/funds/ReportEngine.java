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
package com.octavian.funds;

import com.octavian.database.DBManager;
import com.octavian.models.TransactionInfo;
import java.util.List;

/**
 *
 * @author octavian
 */
public class ReportEngine {

    private List<TransactionInfo> transactions_list;
    private int userInfo;
    private int income;
    private int expenses;
    private DBManager dbm;

    /**
     *
     * @param userInfo CLIENT_ID;
     */
    public ReportEngine(int userInfo) {
        this.userInfo = userInfo;
    }

    public void calculateIncomeExpenses(int month) {
        interogateDB();

        for (TransactionInfo i : transactions_list) {
            if (month == extractMonth(i)) {

                if (i.getAmount() >= 0) {
                    income += i.getAmount();
                } else {
                    expenses += i.getAmount();
                }
            }
        }
    }

    private int extractMonth(TransactionInfo ti) {
        return ti.getDate().getMonth();
    }

    private void interogateDB() {
        dbm = new DBManager();
        dbm.connectToDB();

        transactions_list = dbm.getTransactionInfo(userInfo);

        dbm.closeConnection();

    }

    public int getUserInfo() {
        return userInfo;
    }

    public void setUserInfo(int userInfo) {
        this.userInfo = userInfo;
    }

    public DBManager getDbm() {
        return dbm;
    }

    public void setDbm(DBManager dbm) {
        this.dbm = dbm;
    }

    public int getIncome() {
        return income;
    }

    public int getExpenses() {
        return expenses;
    }

}
