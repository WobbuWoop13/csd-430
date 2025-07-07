/**
 * Kyle Marlia-Conner
 * 7/06/2025
 * Module 8
 */

package com.cs430;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MovieBean implements java.io.Serializable {
    private int movie_id;
    private String title;
    private String director;
    private String genre;
    private int release_year;
    private double rating;

    // Database connection info
    private final String DB_URL = "jdbc:mysql://localhost:3306/CSD430";
    private final String DB_USER = "student1";
    private final String DB_PASS = "pass";

    // Getters and Setters
    public int getMovie_id() { return movie_id; }
    public void setMovie_id(int movie_id) { this.movie_id = movie_id; }

    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }

    public String getDirector() { return director; }
    public void setDirector(String director) { this.director = director; }

    public String getGenre() { return genre; }
    public void setGenre(String genre) { this.genre = genre; }

    public int getRelease_year() { return release_year; }
    public void setRelease_year(int release_year) { this.release_year = release_year; }

    public double getRating() { return rating; }
    public void setRating(double rating) { this.rating = rating; }

    /**
     * Helper method to get a connection to the database.
     */
    private Connection getConnection() throws SQLException {
        return DriverManager.getConnection(DB_URL, DB_USER, DB_PASS);
    }

    /**
     * Retrieves all movie IDs from the database to populate a dropdown.
     */
    public List<Integer> getAllMovieIds() {
        List<Integer> ids = new ArrayList<>();
        String sql = "SELECT movie_id FROM kyle_movies_data";
        try (Connection conn = getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {
            while (rs.next()) {
                ids.add(rs.getInt("movie_id"));
            }
        } catch (Exception e) {
            // Log error to console (Tomcat logs)
            e.printStackTrace();

            // Also send error to page for debugging
            System.out.println("ERROR in getAllMovieIds: " + e.getMessage());
        }
        return ids;
    }


    /**
     * Loads all data for a given movie_id and sets this bean’s fields.
     */
    public boolean loadMovieById(int id) {
        String sql = "SELECT * FROM kyle_movies_data WHERE movie_id = ?";
        try (Connection conn = getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                this.movie_id = rs.getInt("movie_id");
                this.title = rs.getString("title");
                this.director = rs.getString("director");
                this.genre = rs.getString("genre");
                this.release_year = rs.getInt("release_year");
                this.rating = rs.getDouble("rating");
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    /**
     * Updates this movie record in the database using the current field values.
     */
    public boolean updateMovie() {
        String sql = "UPDATE kyle_movies_data SET title=?, director=?, genre=?, release_year=?, rating=? WHERE movie_id=?";
        try (Connection conn = getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, title);
            ps.setString(2, director);
            ps.setString(3, genre);
            ps.setInt(4, release_year);
            ps.setDouble(5, rating);
            ps.setInt(6, movie_id);
            return ps.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }


/**
 * Inserts this MovieBean into the database.
 */
public boolean addMovie() {
    String sql = "INSERT INTO kyle_movies_data (title, director, genre, release_year, rating) VALUES (?, ?, ?, ?, ?)";
    try (Connection conn = getConnection();
         PreparedStatement ps = conn.prepareStatement(sql)) {
        ps.setString(1, title);
        ps.setString(2, director);
        ps.setString(3, genre);
        ps.setInt(4, release_year);
        ps.setDouble(5, rating);
        return ps.executeUpdate() > 0;
    } catch (Exception e) {
        e.printStackTrace();
    }
    return false;
}

/**
 * Returns a list of all movies in the database.
 */
public static List<MovieBean> getAllMovies() {
    List<MovieBean> movies = new ArrayList<>();
    String sql = "SELECT * FROM kyle_movies_data";
    try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/CSD430", "root", "#Conner1311995");
         Statement stmt = conn.createStatement();
         ResultSet rs = stmt.executeQuery(sql)) {
        while (rs.next()) {
            MovieBean movie = new MovieBean();
            movie.setMovie_id(rs.getInt("movie_id"));
            movie.setTitle(rs.getString("title"));
            movie.setDirector(rs.getString("director"));
            movie.setGenre(rs.getString("genre"));
            movie.setRelease_year(rs.getInt("release_year"));
            movie.setRating(rs.getDouble("rating"));
            movies.add(movie);
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
    return movies;
}
}