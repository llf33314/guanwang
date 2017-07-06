<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<div class="span3" id="sidebar">
    <ul class="nav nav-list bs-docs-sidenav nav-collapse collapse">
        <li class="active">
            <a href="index.html"><i class="icon-chevron-right"></i> Dashboard</a>
        </li>
        <li>
	
			<a href="#systemSetting" data-toggle="collapse" data-parent="#sidebar">
			<i class="icon-chevron-right icon-chevron-down"></i> Calendar</a>
            
			<ul id="systemSetting" class="nav nav-list collapse">
			    <li><a href="#"> 用户管理</a></li>
			    <li><a href="#"> 菜单管理</a></li>
			    <li><a href="#"> 角色管理</a></li>
			    <li><a href="#"> 修改密码</a></li>
			    <li><a href="#"> 日志查看</a></li>
			</ul>

        </li>
        <li>
            <a id="systemMenu" href="#systemSetting2" data-toggle="collapse" data-parent="#sidebar">
            <i class="icon-chevron-right"></i> Statistics (Charts)</a>
            
            <ul id="systemSetting2" class="nav nav-list collapse">
			    <li><a href="#">用户管理</a></li>
			    <li><a href="#">菜单管理</a></li>
			    <li><a href="#">角色管理</a></li>
			    <li><a href="#">修改密码</a></li>
			    <li><a href="#">日志查看</a></li>
			</ul>
            
        </li>
        <li>
            <a href="form.html"><i class="icon-chevron-right"></i> Forms</a>
        </li>
        <li>
            <a href="tables.html"><i class="icon-chevron-right"></i> Tables</a>
        </li>
        <li>
            <a href="buttons.html"><i class="icon-chevron-right"></i> Buttons & Icons</a>
        </li>
        <li>
            <a href="editors.html"><i class="icon-chevron-right"></i> WYSIWYG Editors</a>
        </li>
        <li>
            <a href="interface.html"><i class="icon-chevron-right"></i> UI & Interface</a>
        </li>
        <li>
            <a href="#"><span class="badge badge-success pull-right">731</span> Orders</a>
        </li>
        <li>
            <a href="#"><span class="badge badge-success pull-right">812</span> Invoices</a>
        </li>
        <li>
            <a href="#"><span class="badge badge-info pull-right">27</span> Clients</a>
        </li>
        <li>
            <a href="#"><span class="badge badge-info pull-right">1,234</span> Users</a>
        </li>
        <li>
            <a href="#"><span class="badge badge-info pull-right">2,221</span> Messages</a>
        </li>
        <li>
            <a href="#"><span class="badge badge-info pull-right">11</span> Reports</a>
        </li>
        <li>
            <a href="#"><span class="badge badge-important pull-right">83</span> Errors</a>
        </li>
        <li>
            <a href="#"><span class="badge badge-warning pull-right">4,231</span> Logs</a>
        </li>
    </ul>
</div>