package com.entities;

import java.util.Date;
import java.util.Random;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

//17-02-2024 main in remote
@Entity
@Table(name="notes")
public class Note {
	@Id
	private int id;
	public Note() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Note( String title, String content, Date adedDate) {
		super();
		this.id = new Random().nextInt(1000000);
		this.title = title;
		this.content = content;
		this.adedDate = adedDate;
	}
	@Override
	public String toString() {
		return "Note [id=" + id + ", title=" + title + ", content=" + content + ", adedDate=" + adedDate + "]";
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
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getAdedDate() {
		return adedDate;
	}
	public void setAdedDate(Date adedDate) {
		this.adedDate = adedDate;
	}
	private String title;
	
	@Column(length=2500)
	private String content;
	private Date adedDate;
}
