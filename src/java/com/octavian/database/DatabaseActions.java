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
package com.octavian.database;

import com.octavian.models.ClientInfo;
import com.octavian.models.TransactionInfo;
import com.octavian.database.DBManager;
import java.util.Random;

/**
 *
 * @author octavian
 */
public class DatabaseActions {
    
    public DatabaseActions(){
        
    }
    
    /**
     * Insert data in DB
     * @param ci ClientInfo
     * @param mode UPDATE = 'u' or INSERT 'i'
     */
    public static void insertIntoDB(ClientInfo ci, char mode){
        DBManager dbm;
        StringBuilder sb = new StringBuilder();
        Random random = new Random();
        
        if(mode == 'u'){
            sb.append("UPDATE Clients SET ");
            sb.append("LastName=\'"+ci.getLname()+"\', ");
            sb.append("FirstName=\'"+ci.getFname()+"\', ");
            sb.append("Age="+ci.getAge()+", ");
            sb.append("Phone=\'"+ci.getPhone()+"\', ");
            sb.append("Email=\'"+ci.getEmail()+"\', ");
            sb.append("password=\'"+ci.getPassword()+"\'");
            sb.append(" WHERE ID=" + ci.getId() + ";");
        }else if(mode == 'i'){
            int id = random.nextInt(1000000);
            sb.append("INSERT INTO Clients VALUES(");
            sb.append(id).append(", ");
            sb.append("\'" + ci.getLname()).append("\', ");
            sb.append("\'" +ci.getFname()).append("\', ");
            sb.append(ci.getAge()).append(", ");
            sb.append("\'" +ci.getEmail()).append("\', ");
            sb.append("\'" +ci.getPhone()).append("\', ");
            sb.append("\'" +ci.getCurrency()).append("\', ");
            sb.append("\'" +ci.getAccount()).append("\', ");
            sb.append(ci.getBuget()).append(", ");
            sb.append("\'" +ci.getPassword()).append("\');");
        }
        
        dbm = new DBManager();
        dbm.connectToDB();
        System.out.println(sb.toString());
        dbm.execute(sb.toString());

    }
    
    /**
     * Insert data in DB
     * @param ti TransactionInfo
     * @param mode UPDATE = 'u' or INSERT 'i'
     */
    public static void insertIntoDB(TransactionInfo ti, char mode){
        
    }
}
