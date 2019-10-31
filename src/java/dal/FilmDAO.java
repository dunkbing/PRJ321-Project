/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import entity.Actor;
import entity.Film;
import entity.Review;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author dangb
 */
public class FilmDAO extends DBContext{
    public List<Film> getFilmList(String sql){
        List<Film> films = new ArrayList<>();
        //String sql = "select * from film";
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
                f.setDescription(rs.getString("description"));
                f.setDuration(rs.getInt("duration"));
                films.add(f);
            }
        } catch (SQLException ex) {
            Logger.getLogger(FilmDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return films;
    }
    
    public Film getFilm(String sql){
        Film f = new Film();
        try {
            Statement s = connection.createStatement();
            ResultSet rs = s.executeQuery(sql);
            if(rs.next()){
                f.setFilmId(rs.getInt("film_id"));
                f.setTitle(rs.getString("title"));
                f.setReleaseYear(rs.getInt("release_year"));
                f.setCountry(rs.getString("country"));
                f.setLanguage("language");
                f.setGross(rs.getInt("gross"));
                f.setBudget(rs.getInt("budget"));
                f.setType(rs.getBoolean("type"));
                f.setImagePath(rs.getString("imagepath"));
                f.setDescription(rs.getString("description"));
                f.setDuration(rs.getInt("duration"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(FilmDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return f;
    }
    
    public List<Actor> getActors(String sql){
        List<Actor> actors = new ArrayList();
        try {
            Statement s = connection.createStatement();
            ResultSet rs = s.executeQuery(sql);
            while(rs.next()){
                Actor a = new Actor();
                a.setActId(rs.getInt("actor_id"));
                a.setName(rs.getString("name"));
                a.setTitle(rs.getString("title"));
                a.setFilmId(rs.getInt("film_id"));
                actors.add(a);
            }
        } catch (SQLException ex) {
            Logger.getLogger(FilmDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return actors;
    }
    
    public List<String> getDirectors(String sql){
        List<String> directors = new ArrayList();
        try {
            Statement s = connection.createStatement();
            ResultSet rs = s.executeQuery(sql);
            while(rs.next()){
                directors.add(rs.getString("name"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(FilmDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return directors;
    }
    
    public List<Review> getReviews(String sql){
        List<Review> reviews = new ArrayList();
        try {
            //String sql = "select * from review";
            Statement s = connection.createStatement();
            ResultSet rs = s.executeQuery(sql);
            while(rs.next()){
                Review r = new Review();
                r.setReviewId(rs.getInt("review_id"));
                r.setUsername(rs.getString("username"));
                r.setFilmId(rs.getInt("film_id"));
                r.setUpvote(rs.getInt("upvote"));
                r.setDate(rs.getDate("date").toString());
                r.setContent(rs.getString("content"));
                reviews.add(r);
            }
        } catch (SQLException ex) {
            Logger.getLogger(FilmDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return reviews;
    }
    
    
}
