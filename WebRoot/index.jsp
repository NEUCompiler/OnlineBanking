<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登录页面</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="resource/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="resource/css/login.css">
  </head>
  
  <body>
  	
  	<div class="loginBox">
  		
  	</div>
  
  	
  	
  	<form action="login.action" method="post"> 
  		<div class="form-group"> 
  			<label for="exampleInputEmail1">用户名</label> 
  			<input type="text" class="form-control" placeholder="Username"> 
  		</div> 
  		<div class="form-group"> 
  			<label for="exampleInputPassword1">密码</label> 
  			<input type="password" class="form-control" placeholder="Password"> 
  		</div> 
  		<div class="checkbox"> 
  			<label> <input type="checkbox">记住密码</label> 
  		</div> 
  		<div>
  			
  		</div>
  		<button type="submit" class="btn btn-default">登录</button> 
  		<button class="btn btn-default">注册</button>
  	</form>
  	
  </body>
</html>
