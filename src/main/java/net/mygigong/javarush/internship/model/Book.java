package net.mygigong.javarush.internship.model;

import javax.persistence.*;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.Size;

@Entity
@Table(name = "book")
public class Book {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "title")
    @Size(max = 100, min = 3, message = "messageTitle")
    private String title;

    @Column(name = "description")
    @Size(max = 255, min = 3, message = "messageTitle")
    private String description;

    @Column(name = "author")
    @Size(max = 100, min = 3, message = "messageAuthor")
    private String author;

    @Column(name = "isbn")
    @Size(max = 20, min = 3, message = "messageIsbn")
    private String isbn;

    @Column(name = "printYear")
    @Max(2017) //Максимальный год
    @Min(1800) //Минимальный год
    private int printYear;

    @Column (name = "readAlready")  //(columnDefinition = "TINYINT")
    private boolean readAlready;

    public boolean isReadAlready() {
        return readAlready;
    }

    public void setReadAlready(boolean readAlready) {
        this.readAlready = readAlready;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getPrintYear() {
        return printYear;
    }

    public void setPrintYear(int printYear) {
        this.printYear = printYear;
    }

    @Override
    public String toString() {
        return "Book{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", description=" + description +
                ", author=" + author +
                ", isbn=" + isbn +
                ", printYear=" + printYear +
                ", readAlready=" + readAlready +
                '}';
    }

}