/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.razzak.sms;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class Temp {
   public static void main(String args[]) {
      Connection c = null;
      Statement stmt = null;
      ResultSet rs = null;
      try {
         Class.forName("org.postgresql.Driver");
         c = DriverManager
            .getConnection("jdbc:postgresql://localhost:5432/semestermaintainance",
            "postgres", "123456");
         System.out.println("Hello: "+c);
         String sql = "SELECT * FROM teacherinfo";
         stmt = c.createStatement();
         rs = stmt.executeQuery(sql);
         while(rs.next()){
         System.out.println(rs.getString("teachername"));
         
         }
      } catch (Exception e) {
         e.printStackTrace();
         System.err.println(e.getClass().getName()+": "+e.getMessage());
         System.exit(0);
      }
      System.out.println("Opened database successfully");
   }
}
