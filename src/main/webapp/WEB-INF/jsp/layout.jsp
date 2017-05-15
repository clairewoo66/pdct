<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta charset="utf-8" />
    <title>多发性骨髓瘤数据采集器</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
    <%--<meta http-equiv="refresh" content="1800" />--%>
    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="${contextPath}/static/assets/css/bootstrap.css" />
    <link rel="stylesheet" href="${contextPath}/static/assets/css/font-awesome.css" />
    <!-- text fonts -->
    <link rel="stylesheet" href="${contextPath}/static/assets/css/ace-fonts.css" />
    <link rel="stylesheet" href="${contextPath}/static/assets/css/activities-serverload.css" />

    <!-- ace styles -->
    <link rel="stylesheet" href="${contextPath}/static/assets/css/ace.css" class="ace-main-stylesheet" id="main-ace-style" />
    <link rel="stylesheet" href="${contextPath}/static/assets/css/reset.css" />
    <!--[if lte IE 9]>
    <link rel="stylesheet" href="${contextPath}/static/assets/css/ace-part2.css" class="ace-main-stylesheet" />
    <![endif]-->
    <!--[if lte IE 9]>
    <link rel="stylesheet" href="${contextPath}/static/assets/css/ace-ie.css" />
    <![endif]-->
    <!-- ace settings handler -->
    <script src="${contextPath}/static/assets/js/ace-extra.js"></script>
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lte IE 8]>
    <script src="${contextPath}/static/assets/js/html5shiv.js"></script>
    <script src="${contextPath}/static/assets/js/respond.js"></script>
    <![endif]-->
</head>
<body class="no-skin">
<!-- #section:basics/navbar.layout -->
<div id="navbar" class="navbar navbar-default">
    <script type="text/javascript">
        try {
            ace.settings.check('navbar', 'fixed')
        } catch (e) {
        }
    </script>
    <div class="navbar-container" id="navbar-container">
        <!-- #section:basics/sidebar.mobile.toggle -->
        <button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler" data-target="#sidebar">
                    <span class="sr-only">
                        Toggle sidebar
                    </span>
            <span class="icon-bar">
                    </span>
            <span class="icon-bar">
                    </span>
            <span class="icon-bar">
                    </span>
        </button>
        <!-- /section:basics/sidebar.mobile.toggle -->
        <div class="navbar-header pull-left">
            <!-- #section:basics/navbar.layout.brand -->
            <a href="#" class="navbar-brand">
                <small>
                    <i class="fa fa-leaf"></i> 多发性骨髓瘤数据采集器
                </small>
            </a>
            <!-- /section:basics/navbar.layout.brand -->
            <!-- #section:basics/navbar.toggle -->
            <!-- /section:basics/navbar.toggle -->
        </div>
        <!-- #section:basics/navbar.dropdown -->
        <div class="navbar-buttons navbar-header pull-right" role="navigation">
            <ul class="nav ace-nav">
                <!-- #section:basics/navbar.user_menu -->
                <li class="blue">
                    <a data-toggle="dropdown" href="#" class="dropdown-toggle">
                        <img class="nav-user-photo" src="${contextPath}/static/assets/avatars/user.jpg" alt="Jason's Photo" />
                        <span class="user-info">
                                    <small>
										欢迎您,
                                    </small>
									<c:out value="${sessionScope.SESSION_USER.name}"/>
                                </span>
                        <i class="ace-icon fa fa-caret-down"></i>
                    </a>
                    <ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
                        <!--
                        <li>
                            <a href="#">
                                <i class="ace-icon fa fa-cog"></i>
                                设置
                            </a>
                        </li>
                        -->

                        <li>
                            <a data-url="page/sysuserprofile" href="">
                                <i class="ace-icon fa fa-user"></i>
                                修改密码
                            </a>
                        </li>
                        <li class="divider">
                        </li>
                        <li>
                            <a href="${contextPath}/logout">
                                <i class="ace-icon fa fa-power-off"></i>
                                退出
                            </a>
                        </li>
                    </ul>
                </li>
                <!-- /section:basics/navbar.user_menu -->
            </ul>
        </div>
        <!-- /section:basics/navbar.dropdown -->
    </div>
    <!-- /.navbar-container -->
</div>
<!-- /section:basics/navbar.layout -->
<div class="main-container" id="main-container">
    <script type="text/javascript">
        try {
            ace.settings.check('main-container', 'fixed')
        } catch (e) {
        }
    </script>
    <!-- #section:basics/sidebar -->
    <div id="sidebar" class="sidebar responsive">
        <script type="text/javascript">
            try {
                ace.settings.check('sidebar', 'fixed')
            } catch (e) {
            }
        </script>

        <!-- /.sidebar-shortcuts -->
        <ul class="nav nav-list">
            <c:forEach var="menu" items="${menuList}">
                <c:if test="${menu.subMenu.size() >= 0}">
                    <li class="">
                        <a href="home#<c:out value='${menu.dataUrl}'/>">
                            <i class="<c:out value='${menu.menuClass}'/>"></i>
                            <span class="menu-text"><c:out value="${menu.menuName}"/></span>
                            <b class="arrow fa fa-angle-down"></b>
                        </a>
                        <b class="arrow"></b>
                        <ul class="submenu">
                            <c:forEach var="subMenu" items="${menu.subMenu}">
                                <li class="">
                                    <a <c:if test="${subMenu.subMenu.size() > 0}"> </c:if> data-url="<c:out value='${subMenu.dataUrl}'/>" href="home#<c:out value='${subMenu.dataUrl}'/>">
                                        <i class="<c:out value='${subMenu.menuClass}'/>"></i><c:out value="${subMenu.menuName}"/>
                                        <c:if test="${subMenu.subMenu.size() > 0}">
                                            <b class="arrow fa fa-angle-down"></b>
                                        </c:if>
                                    </a>
                                    <b class="arrow"></b>
                                    <ul class="submenu">
                                        <c:forEach var="subSubMenu" items="${subMenu.subMenu}">
                                            <c:if test="${menu.subMenu.size() > 0}">
                                                <li class="">
                                                    <a data-url="<c:out value='${subSubMenu.dataUrl}'/>" href="home#<c:out value='${subSubMenu.dataUrl}'/>">
                                                        <i class="<c:out value='${subSubMenu.menuClass}'/>"></i><c:out value="${subSubMenu.menuName}"/>
                                                    </a>
                                                    <b class="arrow"></b>
                                                </li>
                                            </c:if>
                                        </c:forEach>
                                    </ul>
                                </li>
                            </c:forEach>
                        </ul>
                    </li>
                </c:if>
            </c:forEach>
        </ul>
        <!-- /.nav-list -->
        <!-- #section:basics/sidebar.layout.minimize -->
        <div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
            <i class="ace-icon fa fa-angle-double-left" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
        </div>
        <!-- /section:basics/sidebar.layout.minimize -->
        <script type="text/javascript">
            try {
                ace.settings.check('sidebar', 'collapsed')
            } catch (e) {
            }
        </script>
    </div>
    <!-- /section:basics/sidebar -->
    <div class="main-content">
        <!-- #section:basics/content.breadcrumbs -->
        <div class="breadcrumbs" id="breadcrumbs">
            <script type="text/javascript">
                try {
                    ace.settings.check('breadcrumbs', 'fixed')
                } catch (e) {
                }
            </script>
            <ul class="breadcrumb">
                <li>
                    <i class="ace-icon fa fa-home home-icon"></i>
                    <a href="${contextPath}/home#page/homepage">
                        首页
                    </a>
                </li>
            </ul>
            <!-- /.breadcrumb -->
            <!-- #section:basics/content.searchbox -->
            <!--
            <div class="nav-search" id="nav-search">
                <form class="form-search">
                    <span class="input-icon">
                        <input type="text" placeholder="全文检索 ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
                        <i class="ace-icon fa fa-search nav-search-icon"></i>
                    </span>
                </form>
            </div>
            -->
            <!-- /.nav-search -->
            <!-- /section:basics/content.searchbox -->
        </div>
        <!-- /section:basics/content.breadcrumbs -->
        <div class="page-content">
            <!-- #section:settings.box -->
            <div class="ace-settings-container" id="ace-settings-container">
                <div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
                    <i class="ace-icon fa fa-cog bigger-130"></i>
                </div>
                <div class="ace-settings-box clearfix" id="ace-settings-box">
                    <div class="pull-left width-50">
                        <!-- #section:settings.skins -->
                        <div class="ace-settings-item">
                            <div class="pull-left">
                                <select id="skin-colorpicker" class="hide">
                                    <option data-skin="no-skin" value="#438EB9">
                                        #438EB9
                                    </option>
                                    <option data-skin="skin-1" value="#222A2D">
                                        #222A2D
                                    </option>
                                    <option data-skin="skin-2" value="#C6487E">
                                        #C6487E
                                    </option>
                                    <option data-skin="skin-3" value="#D0D0D0">
                                        #D0D0D0
                                    </option>
                                </select>
                            </div>
                            <span>
                                        &nbsp;
                                       	 选择皮肤
                                    </span>
                        </div>
                        <!-- /section:settings.skins -->
                        <!-- #section:settings.navbar -->
                        <div class="ace-settings-item">
                            <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-navbar" />
                            <label class="lbl" for="ace-settings-navbar">
                                固定导航栏
                            </label>
                        </div>
                        <!-- /section:settings.navbar -->
                        <!-- #section:settings.sidebar -->
                        <div class="ace-settings-item">
                            <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-sidebar" />
                            <label class="lbl" for="ace-settings-sidebar">
                                固定侧边栏
                            </label>
                        </div>
                        <!-- /section:settings.sidebar -->
                        <!-- #section:settings.breadcrumbs -->
                        <div class="ace-settings-item">
                            <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-breadcrumbs" />
                            <label class="lbl" for="ace-settings-breadcrumbs">
                                固定面包屑导航
                            </label>
                        </div>
                        <!-- /section:settings.breadcrumbs -->
                        <!-- #section:settings.rtl -->
                        <div class="ace-settings-item">
                            <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl" />
                            <label class="lbl" for="ace-settings-rtl">
                                切换到左边
                            </label>
                        </div>
                        <!-- /section:settings.rtl -->
                        <!-- #section:settings.container -->
                        <div class="ace-settings-item">
                            <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-add-container" />
                            <label class="lbl" for="ace-settings-add-container">
                                切换到窄屏
                            </label>
                        </div>
                        <!-- /section:settings.container -->
                    </div>
                    <!-- /.pull-left -->
                    <div class="pull-left width-50">
                        <!-- #section:basics/sidebar.options -->
                        <div class="ace-settings-item">
                            <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-hover" />
                            <label class="lbl" for="ace-settings-hover">
                                鼠标滑过显示子菜单
                            </label>
                        </div>
                        <div class="ace-settings-item">
                            <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-compact" />
                            <label class="lbl" for="ace-settings-compact">
                                紧凑侧边栏
                            </label>
                        </div>
                        <div class="ace-settings-item">
                            <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-highlight" />
                            <label class="lbl" for="ace-settings-highlight">
                                菜单项突出
                            </label>
                        </div>
                        <!-- /section:basics/sidebar.options -->
                    </div>
                    <!-- /.pull-left -->
                </div>
                <!-- /.ace-settings-box -->
            </div>
            <!-- /.ace-settings-container -->
            <!-- /section:settings.box -->
            <div class="page-content-area" data-ajax-content="true">
                <!-- ajax content goes here -->
            </div>
            <!-- /.page-content-area -->
        </div>
        <!-- /.page-content -->
    </div>
    <!-- /.main-content -->
    <div class="footer">
        <div class="footer-inner">
            <!-- #section:basics/footer -->
            <div class="footer-content-nobordertop">
                <img class="nav-user-photo" src="${contextPath}/static/assets/avatars/logo.png" alt="logo" />
                <br/>
                <span class="bigger-80">
                        <span class="blue bolder">
                                                                                                Powered By 诺民卫生
                            </span>
                    &copy;
                    2016-2020

                        </span>
                <br/>
                <span class="blue bolder">
                                                                                                服务电话热线:0731-82737955
                       </span>
            </div>



            <!-- /section:basics/footer -->
        </div>
    </div>
    <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
        <i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
    </a>
</div>
<!-- /.main-container -->
<!-- basic scripts -->
<!--[if !IE]> -->
<script type="text/javascript">
    window.jQuery || document.write("<script src='${contextPath}/static/assets/js/jquery.js'>" + "<"+"/script>");
</script>
<!-- <![endif]-->
<!--[if IE]>
<script type="text/javascript">
    window.jQuery || document.write("<script src='${contextPath}/static/assets/js/jquery1x.js'>"+"<"+"/script>");
</script>
<![endif]-->
<script type="text/javascript">
    if ('ontouchstart' in document.documentElement)
        document.write("<script src='${contextPath}/static/assets/js/jquery.mobile.custom.js'>" + "<"+"/script>");
</script>
<script src="${contextPath}/static/assets/js/bootstrap.js"></script>
<!-- ace scripts -->
<script src="${contextPath}/static/assets/js/ace/elements.scroller.js"></script>
<script src="${contextPath}/static/assets/js/ace/elements.colorpicker.js"></script>
<script src="${contextPath}/static/assets/js/ace/elements.fileinput.js"></script>
<script src="${contextPath}/static/assets/js/ace/elements.typeahead.js"></script>
<script src="${contextPath}/static/assets/js/ace/elements.wysiwyg.js"></script>
<script src="${contextPath}/static/assets/js/ace/elements.spinner.js"></script>
<script src="${contextPath}/static/assets/js/ace/elements.treeview.js"></script>
<script src="${contextPath}/static/assets/js/ace/elements.wizard.js"></script>
<script src="${contextPath}/static/assets/js/ace/elements.aside.js"></script>
<script src="${contextPath}/static/assets/js/ace/ace.js"></script>
<script src="${contextPath}/static/assets/js/ace/ace.ajax-content.js"></script>
<script src="${contextPath}/static/assets/js/ace/ace.touch-drag.js"></script>
<script src="${contextPath}/static/assets/js/ace/ace.sidebar.js"></script>
<script src="${contextPath}/static/assets/js/ace/ace.sidebar-scroll-1.js"></script>
<script src="${contextPath}/static/assets/js/ace/ace.submenu-hover.js"></script>
<script src="${contextPath}/static/assets/js/ace/ace.widget-box.js"></script>
<script src="${contextPath}/static/assets/js/ace/ace.settings.js"></script>
<script src="${contextPath}/static/assets/js/ace/ace.settings-rtl.js"></script>
<script src="${contextPath}/static/assets/js/ace/ace.settings-skin.js"></script>
<script src="${contextPath}/static/assets/js/ace/ace.widget-on-reload.js"></script>
<script src="${contextPath}/static/assets/js/ace/ace.searchbox-autocomplete.js"></script>
</body>
</html>
