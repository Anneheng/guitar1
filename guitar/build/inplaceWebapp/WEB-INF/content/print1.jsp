<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>print</title>
    <link href="css/bootstrap.min.css" rel="stylesheet"  type="text/css">
    <link href="css/bootstrap.css" rel="stylesheet"  type="text/css">
    <link href="css/bootstrap-theme.css" rel="stylesheet"  type="text/css">
    <link href="css/bootstrap-theme.min.css" rel="stylesheet"  type="text/css">
</head>
<body>

<main class="container" id="main" role="main">
<s:iterator id="li" value="#request.li">
<form  method="post">
<div class="col-sm-6">
<p> 
<strong class="sub-heading">serialNumber：<s:property value="#li.serialNumber"/></strong><br/></p>
<p class="link-a"><strong class="sub-heading">price<s:property value="#li.price"/></strong><br></p>
<p> <strong class="sub-heading">model:<s:property value="#li.model"/></strong><br> </p><p> 
<strong class="sub-heading">builder：<s:property value="#li.builder"/></strong><br> </p><p> 
<strong class="sub-heading">type：<s:property value="#li.type"/></strong><br></p><p> 
<strong class="sub-heading">backWood：<s:property value="#li.backWood"/></strong><br> </p>
<strong class="sub-heading">topwood：<s:property value="#li.topWood"/></strong><br></p>
</div> 
 </article>
 </div> 
</form>
</s:iterator>
 </main>    
 <script src="js/jquery-3.0.0.js"></script>
    <script src="js/jquery-3.0.0.min.js"></script>
    <script src="js/bootstrap.js"></script>
</body>
</html>