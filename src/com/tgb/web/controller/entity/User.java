package com.tgb.web.controller.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="T_USER")
public class User {

	@Id
//	@GenericGenerator(name = "system-uuid", strategy = "uuid") 
	@GeneratedValue(strategy=GenerationType.IDENTITY)   
	@Column(name = "id", unique = true,nullable=false)  
	private int id;

	@Column(length=32)
	private String userName;

	@Column(length=32)
	private String age;

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

}
