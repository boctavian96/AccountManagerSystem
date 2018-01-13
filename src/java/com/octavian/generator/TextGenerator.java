/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.octavian.generator;

import java.util.Random;

/**
 *
 * @author octavian
 */
public class TextGenerator {
    private static final String UPPER_CHARACTERS = "QWERTYUIOPASDFGHJKLZXCVBNM";
    private static final String LOWER_CHARACTERS = "qwertyuiopasdfghjklzxcvbnm";
    private static final String NUMBER_CHARACTERS = "1234567890";
    private static final String SPECIAL_CHARACTERS = "!@#$%^*?+";
    
    private TextGenerator(){
    }
    
    public static String generatePassword(int length){
        String chars = UPPER_CHARACTERS + LOWER_CHARACTERS + NUMBER_CHARACTERS + SPECIAL_CHARACTERS;
        StringBuilder sb = new StringBuilder();
        Random random = new Random();
        int rand; 
        
        for(int i=0; i<length; i++){
            rand = random.nextInt(chars.length());
            sb.append(chars.charAt(rand));
        }
        
        return sb.toString();
    }
    
    public static String generateAccountId(int length){
        StringBuilder sb = new StringBuilder();
        sb.append("BUTP");
        
        Random random = new Random();
        int rand;
        
        for(int i=0; i<length; i++){
            rand = random.nextInt(NUMBER_CHARACTERS.length());
            sb.append(NUMBER_CHARACTERS.charAt(rand));
        }
        
        return sb.toString();
            
        }
    
}
