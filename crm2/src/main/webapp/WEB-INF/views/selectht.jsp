<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户详细信息</title>
</head>
<body>
<%@include file="head.jsp" %>
	<div align="center" style="border:2">
	<h3>合同详细信息</h3>
		<form action="${sessionScope.basePath}/updateht.crm" method="POST">
			<table bordercolor="#BCD2EE" width="100%"> 
					<input type="hidden" name="id" value="${sessionScope.CrmContract.id}">
					<tr>
						<td class="td2">
							<div align='right'>
								合同编号：
							</div>
						</td>
						<td class="td1" width="350px">
							<div class="bj">
								<input class="form-control" id="number" name="number" placeholder="${sessionScope.CrmContract.number}" style=display:inline;width:200px; autocomplete="off"/>
							</div>
						</td>
						<td class="td2">
							<div align='right'>
								签约时间：
							</div>
						</td>
						<td class="td1" width="350px">
							<div class="bj">
								<input type="date" class="form-control" name="createTime" placeholder="${sessionScope.CrmContract.createTime}" style=display:inline;width:250px; autocomplete="off"/>
							</div>
						</td>
					</tr>
					<tr>
						<td class="td2">
							<div align='right'>
								来源商机(单机选择)：
							</div>
						</td>
						<td class="td1" width="350px">
							<div class="bj">
								<input class="form-control" name="businessId" placeholder="${sessionScope.CrmContract.businessId}" style=display:inline;width:200px; autocomplete="off"/>
								<a href="#" class="info">新建商机</a>
							</div>
						</td>
						<td class="td2">
							<div align='right'>
								联系人：
							</div>
						</td>
						<td class="td1" width="350px">
							<div class="bj">
								<input type="text" name="ownerUserId" placeholder="${sessionScope.CrmContract.ownerUserId}" class="form-control" style=display:inline;width:250px; autocomplete="off"/>
							</div>
						</td>
					</tr>
					<tr>
						<td class="td2">
							<div align='right'>
								来源客户：
							</div>
						</td>
						<td class="td1" width="350px">
							<div class="bj">
								<input  type="text" name="ownerUserId" placeholder="${sessionScope.CrmContract.ownerUserId}" class="form-control" style=display:inline;width:200px; autocomplete="off"/>

							</div>
						</td>
					</tr>
					<tr>
						<td class="td2">
							<div align='right'>
								负责人：
							</div>
						</td>
						<td class="td1" width="350px">
							<div class="bj">
								<input type="text" name="creatorUserId" placeholder="${sessionScope.CrmContract.creatorUserId}" class="form-control" style=display:inline;width:250px; autocomplete="off"/>
							</div>
						</td>
						<td class="td2">
							<div align='right'>
								合同金额(元)：
							</div>
						</td>
						<td class="td1" width="350px">
							<div class="bj">
								<input type="text" name="price" placeholder="${sessionScope.CrmContract.price}" class="form-control" style=display:inline;width:250px; autocomplete="off"/>
							</div>
						</td>
					</tr>
					<tr>
						<td class="td2">
							<div align='right'>
								合同生效时间：
							</div>
						</td>
						<td class="td1" width="350px">
							<div class="bj">
								<input type="date" name="startDate" placeholder="${sessionScope.CrmContract.startDate}" class="form-control" style=display:inline;width:250px; autocomplete="off"/>
							</div>
						</td>
						<td class="td2">
							<div align='right'>
								合同到期时间:
							</div>
						</td>
						<td class="td1" width="350px">
							<div class="bj">
								<input type="date" name="endDate" placeholder="${sessionScope.CrmContract.endDate}" class="form-control" style=display:inline;width:250px; autocomplete="off"/>
							</div>
						</td>
					</tr>
					<tr>
						<td class="td2">
							<div align='right'>
								条件和条款：
							</div>
						</td>
						<td colspan="3">
							<!-- 富文本编辑器 -->
						       <div class="demo">
						        		<div>
										    <script id="editor" name="content" placeholder="${sessionScope.CrmContract.content}" type="text/plain" style="width:800px;height:300px;"></script>
										</div>
						       </div>
						       <!-- 富文本编辑器 -->
						</td>
					</tr>
					<tr>
						<td class="td2">
							<div align='right'>
								合同描述(不多于150个字)：
							</div>
						</td>
						<td colspan="3">
							<!-- 文本编辑器 -->
							<div class="bj">
								<textarea id="description" name="description" placeholder="${sessionScope.CrmContract.description}" name="description" style=width:70%; cols="4" rows="3" name="myself"></textarea>
							</div>
							<!-- 文本编辑器 -->
						</td>
					</tr>
					<tr>
						<td colspan="4" align="center">
							<div class="bj">
								<button type="submit" id="updateht" class="btn btn-info">修改</button>&nbsp;&nbsp;
								<a href="${sessionScope.basePath}/hetong.crm" class="btn btn-default">返回</a>
							</div>
						</td>
					</tr>
				</table>
		</form>	
	</div>		
	<script type="text/javascript">
	 $(function(){
	    	$("#updateht").click(function(){
				alert("您确定要修改信息吗？请谨慎选择");
	    }) 
	    }) 
	  
	</script>
</body>
</html>