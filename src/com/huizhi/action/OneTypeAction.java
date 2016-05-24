package com.huizhi.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import java.io.UnsupportedEncodingException;
import java.util.*;

import dao.*;
import entity.*;

@SuppressWarnings("serial")
public class OneTypeAction extends ActionSupport{
	
	private BookManage bookManage;
	public void setBookManage(BookManage bookManage) {
		this.bookManage = bookManage;
	}
	
	public String execute() throws UnsupportedEncodingException{
		String page = "oneType";
		List<Book> bookList = new ArrayList<Book>();  //搜索出的符合要求的图书
		String typeDescribe = "";   //搜索的关键字
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setCharacterEncoding("UTF-8");
		String searchType = request.getParameter("searchType");    //用户所选择的搜索类别 按作者 出版社 或者书名来搜
		String searchDescribe = request.getParameter("searchDescribe");
		//searchDescribe =new String(searchDescribe.getBytes("ISO8859_1"),"GBK");
		//System.out.println(searchDescribe);
		if(searchType == null || "".equals(searchType.trim())){
			page = "error";
		}
		else {
			if(searchDescribe == null || "".equals(searchDescribe.trim())){
				page = "error";
			}else{
				if("bookName".equals(searchType)){//按图书名称
					bookList = bookManage.allBookByName(searchDescribe, 1, 10);    //根据书名查询
					typeDescribe = searchDescribe;
				}
				else if("bookAuthor".equals(searchType)){//按作者名称
					bookList = bookManage.allBookByAuthor(searchDescribe, 1, 10);
					typeDescribe = searchDescribe;
				}
				else if("bookPress".equals(searchType)){//按出版社
					bookList = bookManage.allBookByPress(searchDescribe, 1, 10);
					typeDescribe = searchDescribe;
				}
				else if("bookType".equals(searchType)){//按书本类别
					int typeId = Integer.parseInt(searchDescribe);
					Type type = bookManage.findType(typeId);
					bookList = bookManage.allBookByType(typeId, 1, 10);
					typeDescribe = type.getTypeName();
				}
				else if("bookStatus".equals(searchType)){//按书本现状，指特价、畅销、最新、推荐
					if("bestSelling".equals(searchDescribe)){
						//畅销书
						typeDescribe = "畅销图书";
						bookList = bookManage.bestSellingBook(1, 10);
					}
					else if("latest".equals(searchDescribe)){
						//最新书
						typeDescribe = "最新图书";
						bookList = bookManage.latestBook(1, 10);
					}
					else if("recommended".equals(searchDescribe)){
						//推荐书
						typeDescribe = "推荐图书";
						List<Recommended> allRecommended = bookManage.allRecommended(1, 6);
						for(Recommended recommended : allRecommended){
							Book book = new Book();
							book = recommended.getBook();
							bookList.add(book);
						}
					}
					else if("bargain".equals(searchDescribe)){
						//特价书
						typeDescribe = "特价图书";
						List<Bargain> allBargain = bookManage.allBargain(1, 6);
						for(Bargain bargain : allBargain){
							Book book = new Book();
							book = bargain.getBook();
							bookList.add(book);
						}
					}else{
						page = "error";
					}
				}else{
					page = "error";
				}
			}
		}
		request.setAttribute("typeDescribe", typeDescribe);
		request.setAttribute("bookList", bookList);
		return page;
	}

}


