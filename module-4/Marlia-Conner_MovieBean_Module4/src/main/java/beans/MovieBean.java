/** Kyle Marlia-Conner
 *  06/15/2025
 *  Module 4
 */

package beans;

/**
 * This "MovieBean" holds information about LotR: The Fellowship of the Ring,
 * including title, director, genre, release year, and rating (from IMDB).
 */

public class MovieBean implements java.io.Serializable {

	    private String title;
	    private String director;
	    private String genre;
	    private int releaseYear;
	    private double rating;

	    // Constructor for the bean
	    public MovieBean() {}

	    // This is all the getters and setters for all the fields.
	    
	    // Gets Movie Title
	    public String getTitle() { return title; }
	    
	    // Sets Movie Title
	    public void setTitle(String title) { this.title = title; }

	    // Gets Director
	    public String getDirector() { return director; }
	    
	    // Sets Director
	    public void setDirector(String director) { this.director = director; }

	    // Gets Genre
	    public String getGenre() { return genre; }
	    
	    // Sets Genre
	    public void setGenre(String genre) { this.genre = genre; }

	    // Gets Release Year
	    public int getReleaseYear() { return releaseYear; }
	 
	    // Sets Release Year
	    public void setReleaseYear(int releaseYear) { this.releaseYear = releaseYear; }

	    // Gets Rating
	    public double getRating() { return rating; }
	    
	    // Sets Rating
	    public void setRating(double rating) { this.rating = rating; }
	}


