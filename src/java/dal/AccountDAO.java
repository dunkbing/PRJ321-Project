/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import entity.Account;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import utility.EncriptPassword;

/**
 *
 * @author dangb
 */
public class AccountDAO extends DBContext{
    public Account login(String username, String password){
        String query = "select * from account where username = ?";
        try {
            PreparedStatement s = connection.prepareStatement(query);
            s.setString(1, username);
            ResultSet rs = s.executeQuery();
            if(rs.next()){
                Account a = new Account();
                a.setEmail(rs.getString("email"));
                a.setUsername(rs.getString("username"));
                if(EncriptPassword.encriptPass(password).equals(rs.getString("password"))) {
                    a.setPassword(password);
                    return a;
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public void register(Account a){
        String sql = "insert into account values (\n" +
                    "	(select COUNT(*) from account)+1,\n" +
                    "'"+a.getEmail()+"'," +
                    "'"+a.getUsername() +"'," +
                    "'"+EncriptPassword.encriptPass(a.getPassword()) +
                    "')";
        try {
            Statement s = connection.createStatement();
            s.executeQuery(sql);
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
