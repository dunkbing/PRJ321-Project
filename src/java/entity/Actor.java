/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author dangb
 */
public class Actor {
    private int actId;
    private String name;
    private String title;
    private int filmId;

    public Actor() {
    }

    public Actor(int actId, String name, String title, int filmId) {
        this.actId = actId;
        this.name = name;
        this.title = title;
        this.filmId = filmId;
    }

    public int getActId() {
        return actId;
    }

    public void setActId(int actId) {
        this.actId = actId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getFilmId() {
        return filmId;
    }

    public void setFilmId(int filmId) {
        this.filmId = filmId;
    }
    
}
