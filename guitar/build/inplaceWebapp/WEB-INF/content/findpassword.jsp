<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <title>找回密码</title>

    <meta name="description" content="Source code generated using layoutit.com"/>
    <meta name="author" content="LayoutIt!"/>

    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/style.css" rel="stylesheet"/>

  </head>
  <body>

   <div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
		<hr/>
			<h3>
				安妮商城
			</h3>
		<hr>
		<a class="fr" href="index.jsp">进入首页&gt;&gt;</a>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
			<div class="row">
				<div class="col-md-3">
				</div>
				<div class="col-md-5">
					<form class="form-horizontal" role="form" action="findPassword" method="post">
						<div class="form-group">
							<label for="inputEmail3" class="col-sm-2 control-label">
								用户名：
							</label>
							<div class="col-sm-10">
								<input type="text"  name="username" class="form-control"/>
							</div>
						</div>
						<div class="form-group">
							<label for="inputEmail3" class="col-sm-2 control-label">
								email：
							</label>
							<div class="col-sm-10">
								<input type="email" class="form-control" id="inputEmail3"  name="email"/>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10"> 
								<input type="submit" value="找回"/>
							</div>
						</div>
					</form>
					<span class="label label-default fr"><a href="login">登录&gt;&gt;</a></span>
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