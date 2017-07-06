<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<div class="navbar navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container-fluid">
            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> 
             <span class="icon-bar"><img alt="Brand" src="images/logoIndex.png"></span>
            </a>
            <a class="brand" href="#">多粉官网后台管理系统</a>
            <div class="nav-collapse collapse">
                <ul class="nav pull-right">
                    <li class="dropdown">
                        <a href="#" role="button" class="dropdown-toggle" data-toggle="dropdown"> 
                        	<i class="icon-user"></i> 用户名 <i class="caret"></i>
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <a tabindex="-1" href="#">详情</a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a tabindex="-1" href="login.html">注销</a>
                            </li>
                        </ul>
                    </li>
                </ul>
                <ul class="nav">
                    <li class="active">
                        <a href="">首页</a>
                    </li>
                    <li class="dropdown" >
                        <a href="#" role="button" data-toggle="dropdown" class="dropdown-toggle">设置 <b class="caret"></b>

                        </a>
                        <ul class="dropdown-menu" id="menu1">
                            <li>
                                <a href="#">工具
                                </a>
                                <ul class="dropdown-menu sub-menu">
                                    <li>
                                        <a href="#">日志</a>
                                    </li>
                                    <li>
                                        <a href="#">错误</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">SEO 设置</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
            <!--/.nav-collapse -->
        </div>
    </div>
</div>