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

    <title>注册</title>

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
				修改密码
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
					<form class="form-horizontal" role="form" action="updatepassword" method="post">
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
							<label for="inputPassword3" class="col-sm-2 control-label">
								旧密码：
							</label>
							<div class="col-sm-10">
								<input type="password" class="form-control" id="inputPassword3" name="oldpassword"/>
							</div>
						</div>
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-2 control-label">
								新密码：
							</label>
							<div class="col-sm-10">
								<input type="password" class="form-control" id="inputPassword3" name="password"/>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10"> 
								<input type="submit" class="btn btn-default" value="修改">
							</div>
						</div>
					</form>
					<span class="label label-default fr"><a href="login1">返回登录&gt;&gt;</a></span>
				</div>
				<div class="col-md-4">
				  ${requestScope.result}
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