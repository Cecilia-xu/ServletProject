/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package user.dbmanage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import user.vo.UserVo;


/**
 *
 * @author 64167
 */
public class DbManage {

     public void conn() {
        String connectionURL = "jdbc:derby://localhost:1527/IS2560";
 //ConnectionURL, username and password should be specified in getConnection()
        try {
        Connection conn = DriverManager.getConnection(connectionURL, "IS2560", "IS2560");
            System.out.println("Connect successfully ! ");
            conn.close();
        } catch (SQLException ex) {
            System.out.println("Connect failed ! ");
        }
      }
     
    public String select(UserVo user){
        String connectionURL = "jdbc:derby://localhost:1527/IS2560";
        //ConnectionURL, username and password should be specified in getConnection()
        try {
        Connection conn = DriverManager.getConnection(connectionURL, "IS2560", "IS2560");
        String sql = "SELECT * FROM IS2560.userinfo where email='"+user.getEmail()+ "' AND password= '" + user.getPassword() + "'";
        Statement st = conn.createStatement();
            ResultSet rs=null;
            rs = st.executeQuery(sql);
            if(rs.next()){
                return rs.getString("username");
            }
        }catch (SQLException ex) {
        System.out.println("Connect failed ! ");
        } 
        return null;
    }
    
    public void insertUser(UserVo user){
        String connectionURL = "jdbc:derby://localhost:1527/IS2560";
        //ConnectionURL, username and password should be specified in getConnection()
        try {
            Connection conn = DriverManager.getConnection(connectionURL, "IS2560", "IS2560");
            String sql = "INSERT INTO IS2560.USERINFO VALUES ('" +user.getEmail()+"','" +user.getPassword()+"','" +user.getUsername()+"','" +user.getGender()+"')";
            Statement st = conn.createStatement();
            st.executeUpdate(sql);
            st.close();
            conn.close();
        } catch (SQLException ex) {
            System.out.println("Connect failed ! ");
        }
    }
    
}
    
     
