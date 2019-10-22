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
public class Film {
    private int filmId;
    private String title;
    private int releaseYear;
    private String country;
    private String language;
    private int gross;
    private int budget;
    private boolean type;
    private String imagePath;

    public Film() {
    }

    public Film(int filmId, String title, int releaseYear, String country, String language, int gross, int budget, boolean type, String imagePath) {
        this.filmId = filmId;
        this.title = title;
        this.releaseYear = releaseYear;
        this.country = country;
        this.language = language;
        this.gross = gross;
        this.budget = budget;
        this.type = type;
        this.imagePath = imagePath;
    }

    public int getFilmId() {
        return filmId;
    }

    public void setFilmId(int fileId) {
        this.filmId = fileId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getReleaseYear() {
        return releaseYear;
    }

    public void setReleaseYear(int releaseYear) {
        this.releaseYear = releaseYear;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    public int getGross() {
        return gross;
    }

    public void setGross(int gross) {
        this.gross = gross;
    }

    public int getBudget() {
        return budget;
    }

    public void setBudget(int budget) {
        this.budget = budget;
    }

    public boolean isType() {
        return type;
    }

    public void setType(boolean type) {
        this.type = type;
    }

    public String getImagePath() {
        return imagePath;
    }

    public void setImagePath(String imagePath) {
        this.imagePath = imagePath;
    }
    
     
}
