/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import entity.Film;
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
public class FilmDAO extends DBContext{
    public List<Film> getFilmList(){
        List<Film> films = new ArrayList<>();
        String sql = "select * from film";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Film f = new Film();
                f.setFilmId(rs.getInt("film_id"));
                f.setTitle(rs.getString("title"));
                f.setReleaseYear(rs.getInt("release_year"));
                f.setCountry(rs.getString("country"));
                f.setLanguage("language");
                f.setGross(rs.getInt("gross"));
                f.setBudget(rs.getInt("budget"));
                f.setType(rs.getBoolean("type"));
                f.setImagePath(rs.getString("imagepath"));
                films.add(f);
            }
        } catch (SQLException ex) {
            Logger.getLogger(FilmDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return films;
    }
    public static void main(String[] args) {
        System.out.println(new FilmDAO().getFilmList());
    }
}
