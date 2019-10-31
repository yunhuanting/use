<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>合同</title>
</head>
<script type="text/javascript" src="static\js\jquery-1.12.4.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="static\bootstrap-3.3.7-dist\css\bootstrap.min.css">
<script src="static\bootstrap-3.3.7-dist\js\bootstrap.min.js"
	type="text/javascript"></script>
<body>
<%@include file="head.jsp"%>
<script>
		  $(function() {
			
		         $("#checkAll").click(function() {
		        /*    alert($("#checkAll").prop("checked"));  */
		            if ($("#checkAll").prop("checked")== true) {
		                // 上面的复选框已被选中
		                $(":checkbox[name='ids']").prop("checked", true);
		            } else {
		                // 上面的复选框没被选中
		                $(":checkbox[name='ids']").prop("checked", false);
		            }
		        });
		    });
</script>
		<!-- 状态 -->
		<div class="container-fluid">
			<div>
				<ul class="nav nav-tabs">
					<li role="presentation" class="active"><a href="#"
						class="glyphicon glyphicon-briefcase">合同</a></li>
					<li role="presentation"><a href="#"
						class="glyphicon glyphicon-question-sign">帮助</a></li>
				</ul>
			</div>
			
		<!-- 查看 -->
		<br>
				<nav class="navbar navbar-default">
				  <div class="container-fluid">
				  			<br>
				    		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>视图 :</b>&nbsp;
							<b class="glyphicon glyphicon-align-justify"></b>&nbsp;<a href="#" ><b>全部</b></a>&nbsp;|&nbsp;
							<a href="">我负责的</a>&nbsp;|&nbsp;
							<a href="">下属负责的</a>&nbsp;|&nbsp;
							<a href="">我创建的</a>&nbsp;|&nbsp;
							<a href="">下属创建</a>&emsp;&emsp;&emsp;
							<b class="glyphicon glyphicon-time"></b>&nbsp;<a href="">今日签约</a>&nbsp;|&nbsp;
							<a href="">本周签约</a>&nbsp;|&nbsp;
							<a href="">本月签约</a>&nbsp;|&nbsp;
							<a href="">最近创建</a>&nbsp;|&nbsp;
							<a href="">最近更新</a>&emsp;&emsp;&emsp;
							<b class="glyphicon glyphicon-trash"></b>&nbsp;<a href="">回收站 </a>
				  </div><!-- /.container-fluid -->
				</nav>
				
		<!-- 操作行 -->
			<div class="row">
				<div class="col-md-1">
							<div class="dropdown">
								<button class="btn btn-default dropdown-toggle" type="button"
									onclick="deleteht(${contract.id})">
									<b class="glyphicon glyphicon-remove">删除</b>
								</button>
							</div>
						</div>
				<div class="col-md-2">
	
					<div class="dropdown">
	
						<button class="btn btn-default dropdown-toggle" type="button"
							id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="true">
							--选择筛选条件-- <span class="caret"></span>
						</button>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
							<li><a href="#">Action</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="#">Separated link</a></li>
						</ul>
					</div>
				</div>
	
				<div class="col-md-1">
					<div class="dropdown">
						<button class="btn btn-default dropdown-toggle" type="button"
							id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="true">
							包含 <span class="caret"></span>
						</button>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
							<li><a href="#">Action</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="#">Separated link</a></li>
						</ul>
					</div>
				</div>
	
				<div class="col-md-3">
	
					<form class="form-inline">
						<div class="form-group">
							<input type="email" class="form-control" id="####"
								placeholder="搜索内容">
						</div>
						<button type="submit" class="btn btn-default">搜索</button>
					</form>
				</div>
	
				<div class="col-md-2 navbar-right">
					<button id="btn" type="button" class="btn btn-primary" onclick="jump()">＋添加合同</button>
					&nbsp;&nbsp;&nbsp;
				</div>
			</div>
			<br>
		<!-- 信息表格 -->
			<div>
				<table class="table table-bordered">
					<tr class="info">
						<td>全选    <input type="checkbox" id="checkAll"></td>
						<td>合同编号</td>
						<td>联系人</td>
						<td>负责人</td>
						<td>签约日期</td>
						<td>合同金额(元)</td>
						<td>状态</td>
						<td>距合同到期天数</td>
						<td>操作</td>
					</tr>
					<c:forEach items="${pageInfo.list}" var="contract">
						<tr class="info">
							<td><input value="${contract.id }" type="checkbox" name="ids"></td>
							<td>${contract.number }</td>
							<td>${contract.ownerUserId}</td>
							<td>${contract.creatorUserId }</td>
							<td>${contract.createTime }</td>
							<td>${contract.price }</td>
							<td>${contract.status }</td>
							<td>${contract.endDate }</td>
							<td><a href="${sessionScope.basePath}/selectht.crm">查看及修改</a></td>
						</tr>
					</c:forEach>
				</table>
			</div>
		
			<!-- 分页 -->	
				 <div class="col-md-6">
			    	<span>当前显示第&nbsp;${pageInfo.getPageNum()}&nbsp;页,共&nbsp;${pageInfo.getTotal()}&nbsp;条记录,共&nbsp;${pageInfo.getPages()}&nbsp;页</span>
					<div class="pagination pagination-centered" >
					   <ul class="bottom" >
						  	<a href="${sessionScope.basePath}/hetong.crm?pn=1">首页</a>
						  <c:if test="${pageInfo.isFirstPage == false}">
						  		<a href="${sessionScope.basePath}/hetong.crm?pn=${pageInfo.prePage}">上一页</a>
						  </c:if>
								<c:forEach items="${pageInfo.navigatepageNums}" var="item">
									<a href="${sessionScope.basePath}/hetong.crm?pn=${item}">${item}</a>
								</c:forEach>
							<c:if test="${pageInfo.hasNextPage == true}">
						  		<a  href="${sessionScope.basePath}/hetong.crm?pn=${pageInfo.nextPage}">下一页</a>
						  </c:if>
						  		<a href="${sessionScope.basePath}/hetong.crm?pn=${pageInfo.getPages()}">末页</a>
						</ul>
					</div>
				</div>	
					 <span><form action="${sessionScope.basePath}/hetong.crm" method="POST">跳转至&nbsp;<input type="text" name="pn"/>&nbsp;页&nbsp;&nbsp;&nbsp;<input type="submit" value="跳转"></form></span>	
	</div>
<%@ include file="foot.jsp" %>
<script>
<!-- 添加合同跳转 -->
	function jump(){
	 window.location.href="${sessionScope.basePath}/goaddht.crm";
	}
/*
	删除合同点击事件Ajax
*/ 	
	function deleteht(id){   
	    flag = confirm('您确定要删除本条合同信息?请谨慎考虑.');
	    if(flag){
	    	 $.ajax({
	             type:"GET",
	             url:'${sessionScope.basePath}/deleteht.crm?id='+id,
	             datatype:"json",
	             success:function(data){
	                 alert(data.message);
	                 window.location.reload();
	             }
	         });
	    }
	}
</script>
</body>
</html>