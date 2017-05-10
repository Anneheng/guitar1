<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="cn.edu.cumt.ec.service.*" %>
<%@ page import="cn.edu.cumt.ec.entity.*" %>
<%@ page import="cn.edu.cumt.ec.dao.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.util.HashMap" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>购物车</title>

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
				<div class="col-md-12">
				<hr>
					<h3>
						<a href="index" class="shopcar">安妮商城</a> &rarr;购物车
					</h3>
				<hr>
				</div>
			</div>
<%Car car=(Car)request.getSession().getAttribute("car");
if(car==null){%>
	您的购车为空
<% }
else{ 
HashMap<Items,Integer> product=car.getProduct();
Set<Items> items=product.keySet();
Iterator<Items> it=items.iterator();%>

			<div class="row">
				<div class="col-md-12">
					<table class="table">
						<thead>
							<tr>
								<th>
									图片
								</th>
								<th>
									商品名称
								</th>
								<th>
									单价
								</th>
								<th>
									数量
								</th>
								<th>
									共计
								</th>
								<th>
									添加购买数量
								</th>
								<th>
									操作
								</th>
							</tr>
						</thead>
						<tbody>
						
<% while(it.hasNext()){
	Items i=it.next();
%>
						<tr >
							<td ><img src=<%=i.getPicture() %> width="25%" height="25%" /></td>
							<td ><%=i.getPname() %></td>		
							<td ><%=i.getPrice() %></td>
							<td ><%=product.get(i) %></td>
							<td ><%=i.getPrice()*product.get(i) %></td>
		<td >
		<form action="updatecar" method="post">
			<input type="text" name="pnumber" value=<%=product.get(i) %>>件</td>
			<input id="id" type="hidden" name="id" style="width: 5px;" value="<%=i.getId() %>"></input>
			<td>           
			 <input type="submit" class="btn btn-default" value="保存修改">
			  <input type="button" value="立即购买" onclick="javascript:location.href='neworder?id=<%=i.getId()%>&number=<%=product.get(i)%>'">
		 	<a href="main/java/cn/edu/cumt/ec/action/Deletecar?id=<%=i.getId()%>" onclick="delcfm();">删除</a></td>
		</form>
		
		<td><input type="checkbox" data-itemid="<%=product.get(i) %>"  name="id1" value="<%=i.getId()%>"></td>
	</tr>
	
	<%} %>

	</tbody>
</table>
<b style="right">购物车的总金额为：</b><%=car.calTotalPrice() %>元

<%} %>

					<div class="row">
						<div class="col-md-10">
						</div>
						<div class="col-md-2">
						</div>
						<hr>
					<p class="fl">ps:本网站商品一律货到付款</p>
				<hr>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/scripts.js"></script>
  </body>
</html>