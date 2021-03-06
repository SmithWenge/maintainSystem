<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/include/header.jsp"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>

<div class="layui-layout layui-layout-admin">
    <!-- 头部区域 -->
    <div class="layui-header header">
        <!-- logo -->
        <div class="logo">
            <h1>报修管理系统 <span class="version">v6.5</span></h1>
        </div>

        <ul class="layui-nav" lay-filter="">
            <%--<li class="layui-nav-item"><a href="">大数据</a></li>--%>
            <li class="layui-nav-item">
                <a href="">${sessionScope.adminInfo.adminName}</a>
                <dl class="layui-nav-child">
                    <dd><a href="${contextPath}/login/changePassword.action">修改密码</a></dd>
                    <dd><a href="${contextPath}/login/logout.action">退出</a></dd>
                </dl>
            </li>
        </ul>
    </div>

    <!-- 侧边栏 -->
    <div class="layui-side layui-bg-black side">
        <div class="layui-side-scroll">
            <ul class="layui-nav layui-nav-tree" lay-filter="test">
                <li class="layui-nav-item" id="seven">
                    <dd id="index"><a href="${contextPath}/admin/home/index.action"><i class="layui-icon">&#xe602;</i> 待办工作</a></dd>
                </li>
                <li class="layui-nav-item" id="five">
                    <dd id="maintenanceList"><a href="${contextPath}/admin/maintenance/list/manage/index.action"><i class="layui-icon">&#xe602;</i> 报修查询与分配</a></dd>
                </li>
                <li class="layui-nav-item" id="first">
                    <a href="javascript:;"><i class="layui-icon">&#xe649;</i> 区域与设备</a>
                    <dl class="layui-nav-child">
                        <dd id="placeDistinct"><a href="${contextPath}/admin/place/distinct/list.action"><i class="layui-icon">&#xe602;</i> 校区管理</a></dd>
                        <dd id="placeBuilding"><a href="${contextPath}/admin/place/building/list.action"><i class="layui-icon">&#xe602;</i> 地点管理</a></dd>
                        <dd id="placeRoom"><a href="${contextPath}/admin/place/room/index.action"><i class="layui-icon">&#xe602;</i> 位置管理</a></dd>
                        <dd id="equipment"><a href="${contextPath}/admin/equipment/index.action"><i class="layui-icon">&#xe602;</i> 设备管理</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item" id="two">
                    <dd id="printer"><a href="${contextPath}/admin/printer/list.action"><i class="layui-icon">&#xe602;</i> 打印机管理</a></dd>
                </li>
                <li class="layui-nav-item" id="three">
                    <a href="javascript:;"><i class="layui-icon">&#xe613;</i> 人员与分组</a>
                    <dl class="layui-nav-child">
                        <dd id="workerInfo"><a href="${contextPath}/admin/worker/info/list.action"><i class="layui-icon">&#xe602;</i>工人信息管理</a></dd>
                        <dd id="workerType"><a href="${contextPath}/admin/worker/type/list.action"><i class="layui-icon">&#xe602;</i>部门管理</a></dd>
                        <dd id="repairGroup"><a href="${contextPath}/admin/repairgroup/list.action"><i class="layui-icon">&#xe602;</i> 维修小组管理</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item" id="six">
                    <a href="javascript:;"><i class="layui-icon">&#xe612;</i> 用户管理</a>
                    <dl class="layui-nav-child">
                        <dd id="role"><a href="${contextPath}/admin/role/list.action"><i class="layui-icon">&#xe602;</i> 角色管理</a></dd>
                        <dd id="userInfo"><a href="${contextPath}/admin/userInfo/list.action"><i class="layui-icon">&#xe602;</i> 用户添加与编辑</a></dd>
                        <dd id="userRole"><a href="${contextPath}/admin/userInfo/userRole/list.action"><i class="layui-icon">&#xe602;</i> 用户角色指派</a></dd>
                        <dd id="password"><a href="${contextPath}/admin/userInfo/changePassword/list.action"><i class="layui-icon">&#xe602;</i>重置用户密码</a></dd>
                    </dl>
                </li>
            </ul>
        </div>
    </div>