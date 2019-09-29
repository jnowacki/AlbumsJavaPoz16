package pl.jnowacki;

import java.io.Serializable;

public class AlbumServlet implements Serializable {
    private String title;
    private String author;
    private int year;

    public AlbumServlet() {
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }
}
