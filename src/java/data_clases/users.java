/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package data_clases;

import java.util.Date;
import java.sql.*;
/**
 *
 * @author Dasael Sandoval
 */
public class users {
    private String aliasUsuario;
    private String password;
    private String usuarioIngreso;
    private String usuarioModifica;
    private Date fechaIngresa;
    private Date fechaModifica;
    
    public users(String aliasUsuario, String password, String usuarioIngreso){
        this.aliasUsuario = aliasUsuario;
        this.password = password;
        this.usuarioIngreso = usuarioIngreso;
        this.fechaIngresa = new Date();
    }
    
    public users(){
        
    }

    public String getAliasUsuario() {
        return aliasUsuario;
    }

    public String getPassword() {
        return password;
    }

    public String getUsuarioIngreso() {
        return usuarioIngreso;
    }

    public String getUsuarioModifica() {
        return usuarioModifica;
    }

    public Date getFechaIngresa() {
        return fechaIngresa;
    }

    public Date getFechaModifica() {
        return fechaModifica;
    }

    public void setAliasUsuario(String aliasUsuario) {
        this.aliasUsuario = aliasUsuario;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setUsuarioIngreso(String usuarioIngreso) {
        this.usuarioIngreso = usuarioIngreso;
    }

    public void setUsuarioModifica(String usuarioModifica) {
        this.usuarioModifica = usuarioModifica;
    }

    public void setFechaIngresa(Date fechaIngresa) {
        this.fechaIngresa = fechaIngresa;
    }

    public void setFechaModifica(Date fechaModifica) {
        this.fechaModifica = fechaModifica;
    }
    
    public boolean buscarUsuario(users usuario){
        Connection conn;
        dbConfig _dbConfig = new dbConfig();
        conn = _dbConfig.getConection();
        boolean userFound = false;
        ResultSet rsdoLogin = null;
        PreparedStatement psdoLogin = null;

        String sUser = usuario.getAliasUsuario();
        String sPassword = usuario.getPassword();
        String message = "";

        try{
            String sqlOption="SELECT * FROM usuarios where"
                        +" alias_usuario=? and password_usuario=? ";

            psdoLogin=conn.prepareStatement(sqlOption);
            psdoLogin.setString(1,sUser);
            psdoLogin.setString(2,sPassword);

            rsdoLogin=psdoLogin.executeQuery();

            if(rsdoLogin.next())
            {
                userFound = true;
            }
            else
            {
                userFound = false;
            }
        }catch(SQLException e){
            e.printStackTrace();
        }

        try{
             if(psdoLogin!=null){
                 psdoLogin.close();
             }
             if(rsdoLogin!=null){
                 rsdoLogin.close();
             }

             _dbConfig.closeConnection(conn);
        }
        catch(SQLException e)
        {
            e.printStackTrace();
        }
        return userFound;
    }
}
