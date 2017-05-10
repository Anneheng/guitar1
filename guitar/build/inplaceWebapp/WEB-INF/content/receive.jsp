<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="cn.edu.cumt.ec.service.*" %>
<%@ page import="cn.edu.cumt.ec.entity.*" %>
<%@ page import="cn.edu.cumt.ec.dao.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.opensymphony.xwork2.ActionContext" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>中国矿业大学物流园</title>

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
						<h3>中国矿业大学物流园</h3>
					</div>
				</div>
				<div class="row">
						<div class="col-md-12">
							<nav class="navbar navbar-default" role="navigation">
								<div class="navbar-header">
									
									<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
										<span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
									</button> <a class="navbar-brand" href="index">物流园</a>
								</div>
								
								<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
									<ul class="nav navbar-nav">
										<li>
											<a href="index">通知取件</a>
										</li>
										<li>
											<a href="search">订单查询</a>
										</li>
										<li  class="active">
											<a href="receive">订单签收</a>
										</li>
										<li >
											<a href="ycdd">异常订单</a> 
										</li>
									</ul>

								</div>
							</nav>	
						</div>
				
				</div>
			</div>
				<div class="row">
		
	</div>
		<div class="row">
			
		<div class="col-md-12">
			<div class="row">
				<div class="col-md-3">
				</div>
				<div class="col-md-5">

					<form class="form-horizontal"  method="post" action="login">
						<div class="form-group">
							<label for="inputEmail3" class="col-sm-2 control-label">
								快递公司
							</label>
							<div class="col-sm-10">
								<select class="form-control">
									<option>圆通快递</option>
									<option>中通快递</option>
									<option>申通快递</option>
									<option>顺丰快递</option>
									<option>EMS</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-2 control-label">
								手机号码
							</label>
							<div class="col-sm-10">
								<input type="text"  name="phone" class="form-control">
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">		 
								<input  type="submit" value="确定">	
							</div>
						</div>
					</form>
					
					
				</div>
				<div class="col-md-4">
				</div>
			</div>
		</div>
		</div>	
		
							<hr>
				<div class="row">
			
		<div class="col-md-12">
			<div class="row">
				<div class="col-md-3">
				</div>
				<div class="col-md-6">

					<div class="row-fluid">
					<div class="span12">
						<div class="row-fluid">
							<div class="span12">
								<div class="page-header">
									<h1>
										<small>查询结果：</small>
									</h1>
								</div>
							</div>
						</div>
						<div class="row-fluid">
							<div class="span12">
								<table class="table">
									<thead>
										<tr>
											<th>
												编号
											</th>
											<th>
												公司
											</th>
											<th>
												姓名
											</th>
											<th>
												状态
											</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>
												1
											</td>
											<td>
												TB - Monthly
											</td>
											<td>
												01/04/2012
											</td>
											<td>
												Default
											</td>
										</tr>
									</tbody>
								</table>
												<div class="form-group">
							<div class="col-sm-offset-2 col-sm-5 fr">		 
								<input  type="submit" value="拒收" class="fr">
							</input>
							<div class="col-sm-offset-2 col-sm-5 fr">
								<input  type="submit" value="签收" class="fr">	
							</div>
						</div>
						
							</div>
						</div>
					</div>
				</div>
					
					
				</div>
				<div class="col-md-3">

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
				