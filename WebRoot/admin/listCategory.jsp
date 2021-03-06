<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet/less" type="text/css" href="style.less" />
	<script type="text/javascript" src="../js/jquery.min.js"></script>
	<script type="text/javascript" src="../js/less-1.3.0.js"></script>
<title>类别列表</title>
</head>
<body>
<div>
	<s:if test="%{listCategory.size()!=0}">
		<table class="listTable" cellspacing="0" border="0">
			<thead>
				<tr>
					<th>序号</th>
					<th>类别名称</th>
					<th>类别描述</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<s:iterator value="%{listCategory}" id="category" status="st">
					<tr>
						<td><s:property value="#st.count" /></td>
						<td><s:property value="#category.catName"/></td>
						<td><s:property value="#category.catDescription" /></td>
						<td>
						<s:url id="edtUrl" action="edtCategory.action">
							<s:param name="categoryId"><s:property value="#category.id" /></s:param>
						</s:url>
						<s:url id="delUrl" action="delCategory.action">
							<s:param name="categoryId"><s:property value="#category.id" /></s:param>
						</s:url>
						<s:a href="%{edtUrl}">编辑</s:a>
						<s:a href="%{delUrl}">删除</s:a>
						</td>
					</tr>
				</s:iterator>
			</tbody>
		</table>
	</s:if>
	<s:else>
		<p>目前系统中还没有产品类别，请添加。</p>
	</s:else>
</div>
</body>
</html>