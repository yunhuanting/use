<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
<title>添加合同</title>
<script type="text/javascript"charset="utf-8" src="ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="ueditor/ueditor.all.js"></script>
<style type="text/css">
    .demo{
	    text-align: right;   		 	
	    width:100%;
	}
	.div1{
		background: #f6f5ec;
		height: 680px;
		width: 100%;
		padding:20px 100px 20px 100px;
		border:0px solid;
	}
	.div2{
		background: #fffffb;
		height: 650px;
		padding:30px 20px 20px 20px;
	}
	.jc{
		/* 字体加粗  */
		font-weight:bold;
	}
	.td1{
		border-right-style: none;
		border-left-style: none;
	}
	.td2{
		border-right-style: none;
		border-left-style: none;
		background: #EAEAEA;
	}
	.bj{
		padding:5px 5px 5px 5px;
	}
</style>
</head>
<body>
<%@include file="head.jsp" %>
		<!-- 顶部 -->
		<div class="div1">
		<div class="div2">
			<font class="jc" size="4">
			新建合同
			</font>
			<hr>
			<form action="${sessionScope.basePath}/addht.crm" method="post">
				<table bordercolor="#BCD2EE" width="100%"> 
					<tr>
						<td colspan="4">
							<div class="jc" style="padding:7px 5px 7px 5px;">
							基本信息
							</div>
						</td>
					</tr>
					<tr>
						<td class="td2">
							<div align='right'>
								合同编号：
							</div>
						</td>
						<td class="td1" width="350px">
							<div class="bj">
								<input class="form-control" name="" onclick="addSJS()" id="number" placeholder="点击随机生成合同编号" style=display:inline;width:200px; autocomplete="off"/>
							</div>
						</td>
						<td class="td2">
							<div align='right'>
								签约时间：
							</div>
						</td>
						<td class="td1" width="350px">
							<div class="bj">
								<input type="date" name="" class="form-control" style=display:inline;width:250px; autocomplete="off"/>
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
								<input class="form-control" style=display:inline;width:200px; autocomplete="off"/>
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
								<input type="text" class="form-control" style=display:inline;width:250px; autocomplete="off"/>
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
								<input  type="text" class="form-control" style=display:inline;width:200px; autocomplete="off"/>

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
								<input type="text" class="form-control" style=display:inline;width:250px; autocomplete="off"/>
							</div>
						</td>
						<td class="td2">
							<div align='right'>
								合同金额(元)：
							</div>
						</td>
						<td class="td1" width="350px">
							<div class="bj">
								<input type="text" class="form-control" style=display:inline;width:250px; autocomplete="off"/>
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
								<input type="date" class="form-control" style=display:inline;width:250px; autocomplete="off"/>
							</div>
						</td>
						<td class="td2">
							<div align='right'>
								合同到期时间:
							</div>
						</td>
						<td class="td1" width="350px">
							<div class="bj">
								<input type="date" class="form-control" style=display:inline;width:250px; autocomplete="off"/>
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
										    <script id="editor" type="text/plain" style="width:800px;height:300px;"></script>
										</div>
										<div id="btns">
										    <div>
										        <button id="btn1" "btn btn-primary">获取html</button>
												<button id="btn2" "btn btn-primary">获取text</button>
										    </div>
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
								<textarea id="description" name="description" style=width:70%; cols="4" rows="3" name="myself"></textarea>
							</div>
							<!-- 文本编辑器 -->
						</td>
					</tr>
					<tr>
						<td colspan="4" align="center">
							<div class="bj">
								<button type="submit" class="btn btn-info">保存</button>&nbsp;&nbsp;
								<a href="${sessionScope.basePath}/hetong.crm" class="btn btn-default">返回</a>
							</div>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
		
<script type="text/javascript">
/* 
	合同随机编号
*/
	function addSJS(){
		var myDate = new Date();
		var year = myDate.getFullYear();//获取当前年份(2位)
		var month = myDate.getMonth()+1;//获取当前月份(0-11,0代表1月)
		var monthval=("0" + month).slice(-2);
		var day = myDate.getDate();//获取当前日(1-31)
		var dateval=("0" + day).slice(-2);
		var week = myDate.getDay();//获取当前星期
		var day = year+""+monthval+""+dateval+""+week;
		var randoms = ("000" + Math.floor(Math.random()*10000)).slice(-4);
		$("#number").val("HT"+day+"-"+randoms);
	}
/* 
	添加合同提交
*/
	/* function addht() {
		var number=$("#number").val();
		var createTime=$("#createTime").val();
		var businessId=$("#businessId").val();
		var creatorUserId=$("#creatorUserId").val();
		var ownerUserId=$("#ownerUserId").val();
		var creatorUserId=$("#creatorUserId").val();
		var price=$("#price").val();
		var startDate=$("#startDate").val();
		var endDate=$("#endDate").val();
		var content=$("#editor").val();
		var description=$("#description").val();
		/* 判断为空触发弹窗消息 
		if(number=="" || createTime=="" || businessId=="" || creatorUserId=="" || ownerUserId=="" creatorUserId=="" || price=="" || startDate=="" || endDate=="" || content=="" || description==""){
			alert("请将合同建立信息补充完整");
		}else{
	            $.getJSON('${sessionScope.basePath}/addht',function(data,textStatus,jqXHR){
	    		console.log(data);
	    		alert(data.message); 
	    		 window.location.reload();
			});
		} 
	}*/
</script>
<%@ include file="foot.jsp" %>
<!-- 实例化编辑器 -->
<script type="text/javascript">
			    //实例化编辑器
			    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
		var ue = UE.getEditor('editor');
</script>
<!-- 实例化编辑器 -->
<!-- <script type="text/javascript">
	var E = window.wangEditor
	var editor = new E('#txtdEditor')
	//隐藏“网络图片”tab
	editor.customConfig.showLinkImg = false;
	editor.customConfig.uploadImgShowBase64 = true;  // 使用 base64 保存图片
	editor.customConfig.menus = [
		'head',  // 标题
	    'bold',  // 粗体
	    'fontSize',  // 字号
	    'fontName',  // 字体
	    'italic',  // 斜体
	    'underline',  // 下划线
	    'strikeThrough',  // 删除线
	    'foreColor',  // 文字颜色
	    'backColor',  // 背景颜色
	    'link',  // 插入链接
	    'list',  // 列表
	    'justify',  // 对齐方式
	    'quote',  // 引用
	    'emoticon',  // 表情
	    'image',  // 插入图片
	    'table',  // 表格
	    //'video',  插入视频
	   	// 'code',   插入代码
	    'undo',  // 撤销
	    'redo'  // 重复
    ]
	// 将图片大小限制为 3M
	editor.customConfig.uploadImgMaxSize = 3 * 1024 * 1024;
	// 限制一次最多上传 5 张图片
	editor.customConfig.uploadImgMaxLength = 5;
	editor.create();

</script> -->
</body>
</html>