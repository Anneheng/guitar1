<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>登录</title>

    <meta name="description" content="Source code generated using layoutit.com">
    <meta name="author" content="LayoutIt!">

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

  </head>
  <body>

   <div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
		<hr>
			<h3>
			安妮商城 &nbsp;&nbsp;欢迎登录
			</h3>
		<hr>
		<a class="fr" href="index">进入首页&gt;&gt;</a>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
			<div class="row">
				<div class="col-md-3">
				</div>
				<div class="col-md-5">
				
				 <% 
      String username="";
      String password = "";

      Cookie[] cookies = request.getCookies();
      if(cookies!=null)
      {
    	  for(Cookie c:cookies)
          {
             if(c.getName().equals("username"))
             {
                  username = c.getValue();
             }
             if(c.getName().equals("password"))
             {
                  password = c.getValue();
             }
          }
      }
    %>
				
					<form class="form-horizontal"  method="post" action="login">
						<div class="form-group">
							 
							<label for="inputEmail3" class="col-sm-2 control-label">
								用户名：
							</label>
							<div class="col-sm-10">
								<input type="text"  name="username" class="form-control" value="<%=username %>" >
							</div>
						</div>
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-2 control-label">
								密&nbsp;&nbsp;码：
							</label>
							<div class="col-sm-10">
								<input type="password" class="form-control" id="inputPassword3" name="password" value="<%=password %>" />
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<div class="checkbox">
									 <label>
										<input type="checkbox" name="isUseCookie" checked="checked" value="1"/>记住密码
									</label>
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">		 
								<input  type="submit" value="登录">	
							</div>
							
						</div>
					</form>
					<span class="label label-default fr"><a href="findPassword1">找回密码</a></span>
					<span class="label label-default fr"><a href="updatepassword1">修改密码</a></span>
					<hr>
					<span class="label label-default fr"><a href="register">注册&gt;&gt;</a></span>
				</div>
				<div class="col-md-4">
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