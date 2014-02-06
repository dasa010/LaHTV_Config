/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package data_clases;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author Dasael Sandoval
 */
public class dbConfig {
    private static final String connString = "jdbc:mysql://clubdelah.com:3306/clubdela_app";
    private static final String dbUser = "clubdela_applog";
    private static final String dbPass = "APPlog2513";
    private static final String JDBCDriver = "com.mysql.jdbc.Driver";
    private Connection conn;
    public dbConfig(){
        conn = null;
        try{
            Class.forName(this.JDBCDriver).newInstance();
        }catch(ClassNotFoundException e){
            
        } catch (InstantiationException ex) {
            Logger.getLogger(dbConfig.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            Logger.getLogger(dbConfig.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        try {
            conn = DriverManager.getConnection(connString, dbUser, dbPass);
        } catch (SQLException ex) {
            Logger.getLogger(dbConfig.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public String getConnString(){
        return this.connString;
    }
    
    public Connection getConection(){
        return this.conn;
    }
    
    public void closeConnection(Connection conn){
        try{
            if(conn!=null){
                conn.close();
            }
        }catch(SQLException e){
            e.printStackTrace();
        }
    }
    
    
}
