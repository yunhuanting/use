<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>京唐国际CRM</title>
<script type="text/javascript" src="${sessionScope.basePath}\static\js\jquery-1.12.4.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="${sessionScope.basePath}\static\bootstrap-3.3.7-dist\css\bootstrap.min.css">
<script src="${sessionScope.basePath}\static\bootstrap-3.3.7-dist\js\bootstrap.min.js"
	type="text/javascript"></script>
</head>
<body>
		<nav class="navbar navbar-default">
		  <div class="container-fluid">
		    <!-- Brand and toggle get grouped for better mobile display -->
		    <!-- 从商标开始部分 -->
		    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		      <ul class="nav navbar-nav">
		      	<li role="presentation" class="active"><a href="#"><img src="${sessionScope.basePath}/static/img/logo.png" height="26px" lang="26px">
		    		 	京唐国际CRM</a></li>
		        <li><a href="${sessionScope.basePath}/user/xs.crm">线索</a></li>
		        <li><a href="#">客户</a></li>
		        <li><a href="#">商机</a></li>
		        <li ><a href="#">产品</a></li>
		       <li><a href="#">任务</a></li>
		       <li><a href="#">日程</a></li>
		       <li><a href="${sessionScope.basePath}/hetong.crm">合同</a></li>
		       	<li><a href="#">财务</a></li>
		        <li class="dropdown">
		          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">更多 <span class="caret"></span></a>
		          <ul class="dropdown-menu">
		            <li><a href="#">Action</a></li>
		            <li><a href="#">Another action</a></li>
		            <li><a href="#">Something else here</a></li>
		            <li role="separator" class="divider"></li>
		            <li><a href="#">Separated link</a></li>
		          </ul>
		        </li>
		      </ul>
		      <!-- 靠右部分 -->
		      <ul class="nav navbar-nav navbar-right">
		       	<li><a href="#" class="glyphicon glyphicon-envelope"><span class="badge">0</span></a></li>
		       	<li><a href="#" class="glyphicon glyphicon-tasks"><span class="badge">0</span></a></li>
		       	<li><a href="#" class="glyphicon glyphicon-screenshot"><span class="badge">0</span></a></li>
		       	<li><a href="#" class="glyphicon glyphicon-star-empty"><span class="badge">0</span></a></li>
		        <li class="dropdown">
		          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">更多 <span class="caret"></span></a>
		          <ul class="dropdown-menu">
		          </ul>
		        </li>
				<!-- 用户栏 -->
		        <li class="dropdown">
		          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">${sessionScope.crmSystemUser.getSname()}<span class="caret"></span></a>
		          <ul class="dropdown-menu">
		            <li><a href="${sessionScope.basePath}/user/userinfo.crm" class="btn btn-info">用户信息</a></li>
		            <li><a href="${sessionScope.basePath}/user/close.crm" class="btn btn-danger">登出</a></li>
		            <li><a class="btn btn-success" onclick="$('#insertsystem').modal();">注册</a></li>
		          </ul>
		        </li>
		      </ul>
		    </div>
		  </div>
</nav>
</body>
</html>