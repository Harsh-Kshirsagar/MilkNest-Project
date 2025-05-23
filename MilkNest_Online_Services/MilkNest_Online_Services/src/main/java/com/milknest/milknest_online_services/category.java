/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.milknest.milknest_online_services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Santosh
 */
public class category {

    public int category_id;
    public String category_name;

    public String getCategory_img() {
        return category_img;
    }

    public void setCategory_img(String category_img) {
        this.category_img = category_img;
    }
    public String category_img;

    public int getCategory_id() {
        return category_id;
    }

    public void setCategory_id(int category_id) {
        this.category_id = category_id;
    }

    public String getCategory_name() {
        return category_name;
    }

    public void setCategory_name(String category_name) {
        this.category_name = category_name;
    }
    
    
    //display table
    
    public ResultSet getAllCategories() throws SQLException {
        Connection con = DataAccess.getConnection();
        try {
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM tb_categorymaster");
            if (rs.next()) {

                return rs;

            }
        } catch (SQLException ex) {
         //   System.out.print(ex.toString());
        }
        return null;

    }
    
    //insert data 
    
      public boolean insertCategories(category c) throws Exception {

        Connection con = DataAccess.getConnection();
        PreparedStatement ps = con.prepareStatement("INSERT INTO tb_categorymaster (category_name,category_img) VALUES(?,?)");

        ps.setString(1, c.getCategory_name());
        ps.setString(2, c.getCategory_img());
        int i = ps.executeUpdate();
        if (i == 1) {
            return true;
        }

        return false;
    }
      
      // 
      
      public ResultSet getCategory_Id() throws SQLException {
        Connection con = DataAccess.getConnection();
        try {
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("select ifnull(max(Category_id+1),1) as Category_id from tb_categorymaster");
            if (rs.next()) {
                return rs;
            }
        } catch (SQLException ex) {
        }
        return null;
    }

    //Update the data
      
    public boolean updateCategoriess(category c) throws SQLException {
        Connection con = DataAccess.getConnection();
        try {
            PreparedStatement ps = con.prepareStatement("update tb_categorymaster SET category_name=? where category_id=?");
            ps.setString(1, c.getCategory_name());
            ps.setInt(2, c.getCategory_id());
       
            
            int i = ps.executeUpdate();
            if (i == 1) {
                return true;
            }
        } catch (SQLException ex) {
            ex.printStackTrace();

        }
        return false;

    }
      
     //delete the data 
    
    public boolean deleteCategories(int id) throws SQLException {
        Connection con = DataAccess.getConnection();
        try {
            Statement stmt = con.createStatement();
            int i = stmt.executeUpdate("delete  from tb_categorymaster where category_id"
                    + "=" + id);

            if (i == 1) {
                return true;
            }
        } catch (SQLException ex) {
        }
        return false;
    }
    
        //get Category by id
    
    public ResultSet getCatsByid(int id) throws SQLException {
        Connection con = DataAccess.getConnection();
        try {
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM tb_productsmaster WHERE productCatID=" + id);
            if (rs.next()) {

                return rs;

            }
        } catch (SQLException ex) {
            System.out.print(ex.toString());
        }
        return null;

    }
     
    
  
}



