<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="cn.edu.cumt.ec.service.*" %>
<%@ page import="cn.edu.cumt.ec.entity.*" %>
<%@ page import="cn.edu.cumt.ec.dao.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.opensymphony.xwork2.ActionContext" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>安妮商城</title>

    <meta name="description" content="Source code generated using layoutit.com">
    <meta name="author" content="LayoutIt!">

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

  </head>
  <body>

    <div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<div class="row">
				<div class="col-md-4">
					 <span class="label  fl">欢迎来到安妮商城</span>
				</div>
				<div class="col-md-4">
				</div>
				<div class="col-md-4">
					 <span class="label  fr top"><a href="login1">[登录]</a><a href="register">[注册]</a></span>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<nav class="navbar navbar-default" role="navigation">
						<div class="navbar-header">
							 
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
								 <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
							</button> <a class="navbar-brand" href="#">安妮商城</a>
						</div>
						
						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav">
								<li class="active">
									<a href="index">3C产品</a>
								</li>
								<li>
									<a href="#">书籍</a>
								</li>
								<li class="dropdown">
									<a href="#">服装</a> 
								</li>
							</ul>
							<form class="navbar-form navbar-left" role="search">
								<div class="form-group">
									<input type="text" class="form-control">
								</div> 
								<button type="submit" class="btn btn-default">
									Submit
								</button>
							</form>
							<ul class="nav navbar-nav navbar-right">
								<li>
									<a href="shopcar">购物车</a>
								</li>
							</ul>
						</div>
					</nav>
				
        
           <% 
        String a=request.getParameter("id");
        int id=Integer.parseInt(a);
      	ItemsService itemsService=new ItemsService();
      	ItemsDaoJDBCImpl itemsDaoJDBCImpl=new ItemsDaoJDBCImpl();
      	itemsService.setItemsDao(itemsDaoJDBCImpl);
      	Items items=itemsService.getByIdItems(id);   	 
        %>
          	<form action="addshopcar" mothod="post">
					<div class="row">
						<div class="col-md-2">
						</div>
						<div class="col-md-4">
							<img alt="close" src=<%=items.getPicture()%> />
						</div>
						<div class="col-md-4">
						<p>商品编号：<input type="id"  class="list-group-item" id="Inputid"   name="id" value=<%=items.getId() %> readonly></p>
							<p><%=items.getPname() %></p>
							<p>价格：<%=items.getPrice() %></p>
					<input type="hidden"  id="Inputnumber"   name="pnumber" width="50px"></p>
							<span><input  type="submit" value="加入购物车"></span>
						</div>
						<div class="col-md-2">
						</div>
					</div>
					<%if(request.getAttribute("result1")!=null){ %>
			${requestScope.result1}
			<%} %>
			<%if(request.getAttribute("login")!=null){ %>
			<a href="login1">${requestScope.login}</a>
			<%} %>
					<div class="row">
						<div class="col-md-12">
							<hr>
							<h3 class="js">商品详情:</h3>
							<hr>
							<div class="row">
								<div class="col-md-2"></div>
								<div class="col-md-6">
									<%=items.getDetails() %>
								</div>
								<div class="col-md-4"></div>
							</div>
						</div>
						<div class="row">
						<div class="col-md-12">
							<hr>
							<h3 class="js">商品评论:</h3>
							<hr>
							<hr>
								<form>
									<div class="form-group">
										<div class="col-sm-6 fl">
											<input type="text"  name="pl" class="form-control"/>
										</div>
										<div class="col-sm-offset-2 col-sm-1 fl">		 
											<input  type="submit" value="提交评论">	
										</div>
						</div></form>
							<hr>
							<div class="row">
								<div class="col-md-4"></div>
								<div class="col-md-4">
									<table>
										<tr>
											<td name="username"></td>
											<td name=""pl></td>
										</tr>
									</table>
								</div>
								<div class="col-md-4"></div>
							</div>
						</div>
					</div>
				</form>	
				</div>
			</div>
		</div>
	</div>
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/scripts.js"></script>
  </body>
</html>