<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>角色列表</title>
<%@ include file="/static/base/common.jspf" %>
<style type="text/css">
.layui-table-cell .layui-form-checkbox[lay-skin=primary] {
   top: 5px !important;
}
</style>
</head>
<body>
	<div style="padding: 15px;">
		<input type="hidden" value="${param.id}" id="id">
		<form>
			<div class="demoTable">
				角色名：
				<div class="layui-inline">
					<input class="layui-input" name="role" id="roleName"
						autocomplete="off">
				</div>
				<button class="layui-btn bt_search" data-type="reload">搜索</button>
				<button type="reset" class="layui-btn layui-btn-primary">重置</button>
			</div>
		</form>
		<div style="height: 10px;" />
		<table class="layui-hide" id="role" lay-data="{id: 'role'}"></table>
		<div>
			<button class="layui-btn bt_setRole">立即提交</button>
			<button class="layui-btn layui-btn-primary bt_close">关闭</button>
		</div>
	</div>
	<script>
		layui.use('table', function() {
			var table = layui.table;
			var $ = layui.jquery;
			var id = $('#id').val();

			table.render({
				elem : '#role',
				<%--url : '${ctx}/a/role/roleList?userId='+id,--%>
				cellMinWidth : 80,
				cols : [ [ {
					type : 'checkbox'
				}, {
					field : 'id',
					width : 300,
					title : 'ID',
					sort : true
				}, {
					field : 'role',
					title : '角色名'
				}, {
					field : 'remark',
					title : '备注'
				}] ],
                data:[{"id":"233223333","role":"root","remark":"备注说明"}]
			});

			//搜索条件
			var $ = layui.$, active = {
				reload : function() {
					table.reload($('table').attr("id"), {
						where : {
							role : $('#roleName').val()
						}
					});
				}
			};
			//触发搜索条件事件
			$('.bt_search').on('click', function (e){
				var type = $(this).data('type');
				active[type] ? active[type].call(this) : '';
				return false;
			})

			//关闭
			$('.bt_close').on('click', function() {
				parent.layer.closeAll();
			});

		});
	</script>
</body>
</html>
