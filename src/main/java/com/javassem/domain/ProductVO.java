package com.javassem.domain;

import java.io.File;
import java.io.IOException;

import org.springframework.web.multipart.MultipartFile;
//since function setFile and getFile is overwritten, @Data lombok couldn't be used
public class ProductVO {

	private int pno;
	private String img;
	private String pname;
	private int price;
	private String description;
	private Integer stock;
	private String type;
	
	MultipartFile file;
	
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
		this.img = file.getOriginalFilename();
		
		if(!file.isEmpty()) {
			File f = new File("D:\\springweb\\sj\\src\\main\\webapp\\resources\\assets\\img\\products\\" + img);
			try { file.transferTo(f); }
			catch (IllegalStateException | IOException e) {	e.printStackTrace(); }
		}//if
	
	}//setFile
	
	public int getPno() {
		return pno;
	}
	public void setPno(int pno) {
		this.pno = pno;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	
}
