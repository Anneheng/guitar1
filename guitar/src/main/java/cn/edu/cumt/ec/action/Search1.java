package cn.edu.cumt.ec.action;

import java.sql.ResultSet;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import cn.edu.cumt.ec.entity.News;


public class Search1 extends Print{
	private String guitar_Builder;
	private String guitar_Model;
	private String guitar_Type;
	private String guitar_BackWood;
	private String guitar_TopWood;
	

	public String getGuitar_Builder() {
		return guitar_Builder;
	}


	public void setGuitar_Builder(String guitar_Builder) {
		this.guitar_Builder = guitar_Builder;
	}


	public String getGuitar_Model() {
		return guitar_Model;
	}


	public void setGuitar_Model(String guitar_Model) {
		this.guitar_Model = guitar_Model;
	}


	public String getGuitar_Type() {
		return guitar_Type;
	}


	public void setGuitar_Type(String guitar_Type) {
		this.guitar_Type = guitar_Type;
	}


	public String getGuitar_BackWood() {
		return guitar_BackWood;
	}


	public void setGuitar_BackWood(String guitar_BackWood) {
		this.guitar_BackWood = guitar_BackWood;
	}


	public String getGuitar_TopWood() {
		return guitar_TopWood;
	}


	public void setGuitar_TopWood(String guitar_TopWood) {
		this.guitar_TopWood = guitar_TopWood;
	}
	public String execute() throws  Exception{

		News gg = new News("",getGuitar_Builder(),getGuitar_Builder(),getGuitar_Type(),getGuitar_BackWood(),getGuitar_TopWood(),1);
		addGuitar();
		List li=search(gg);
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("li",li);
		return SUCCESS;
	}
	
}