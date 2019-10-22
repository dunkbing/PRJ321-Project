/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import entity.Type;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author dangb
 */
public class TypeDAO extends DBContext{
    public ArrayList<Type> getTypes(){
        ArrayList<Type> types = new ArrayList<Type>();
        try {
            String sql = "select * from type";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Type t = new Type();
                t.setId(rs.getInt("id"));
                t.setName(rs.getString("name"));
                types.add(t);
            }
        } catch (SQLException ex) {
            Logger.getLogger(TypeDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return types;
    }
    
    
}
