package pl.jnowacki;

import org.apache.commons.lang3.StringUtils;

import java.io.Serializable;

public class Album implements Serializable {
    private String title;
    private String author;
    private Integer year;

    public Album() {
    }

    public Album(String title, String author, Integer year) {
        this.title = title;
        this.author = author;
        this.year = year;
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

    public Integer getYear() {
        return year;
    }

    public void setYear(Integer year) {
        this.year = year;
    }

    public boolean isValid () {
        return  !StringUtils.isEmpty(this.author) &&
                !StringUtils.isEmpty(this.title) &&
                this.year != null &&
                this.year > 1900;
    }

    @Override
    public String toString() {
        return "Album{" +
                "title='" + title + '\'' +
                ", author='" + author + '\'' +
                ", year=" + year +
                '}';
    }
}
