<%@ page import="org.springframework.web.servlet.support.RequestContextUtils" %>
<%@ page import="com.SoftwareFactory.model.Project" %>
<%@ page import="java.util.*" %>
<%@ page import="com.SoftwareFactory.constant.ProjectEnum" %><%--<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>--%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="kr">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no, minimal-ui" />
    <meta name="format-detection" content="telephone=no" />
    <meta name="format-detection" content="address=no" />

    <meta property="og:site_name" content="software factory" />
    <meta property="og:title" content="소팩소개" />
    <meta property="og:image" content="images/web-logo.jpg" />
    <meta property="og:url" content="http://sofac/" />
    <meta property="og:description" content="" />

    <meta name="description" content="" />
    <meta name="keywords" content="" />

    <title>소팩소개 :: Software Factory</title>

    <link href="/resources/newIndexPage/css/bootstrap.min.css" rel="stylesheet" />
    <link href="/resources/newIndexPage/css/bootstrap-select.min.css" rel="stylesheet" />
    <link href="/resources/newIndexPage/css/jquery.fancybox.min.css" rel="stylesheet" />
    <link href="/resources/newIndexPage/css/jquery.sweet-alert.min.css" rel="stylesheet" />
    <link href="/resources/newIndexPage/css/font-awesome.min.css" rel="stylesheet" />
    <link href="/resources/newIndexPage/css/awesome-bootstrap-checkbox.min.css" rel="stylesheet" />
    <link href="/resources/newIndexPage/css/fileinput.min.css" rel="stylesheet" />
    <link href="/resources/newIndexPage/css/style.css" rel="stylesheet" />
    <link href="/resources/newIndexPage/css/responsive.css" rel="stylesheet" />

    <link rel="apple-touch-icon" sizes="57x57" href="/resources/newIndexPage/images/apple-icon-57x57.png" />
    <link rel="apple-touch-icon" sizes="60x60" href="/resources/newIndexPage/images/apple-icon-60x60.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="/resources/newIndexPage/images/apple-icon-72x72.png" />
    <link rel="apple-touch-icon" sizes="76x76" href="/resources/newIndexPage/images/apple-icon-76x76.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="/resources/newIndexPage/images/apple-icon-114x114.png" />
    <link rel="apple-touch-icon" sizes="120x120" href="/resources/newIndexPage/images/apple-icon-120x120.png" />
    <link rel="apple-touch-icon" sizes="144x144" href="/resources/newIndexPage/images/apple-icon-144x144.png" />
    <link rel="apple-touch-icon" sizes="152x152" href="/resources/newIndexPage/images/apple-icon-152x152.png" />
    <link rel="apple-touch-icon" sizes="180x180" href="/resources/newIndexPage/images/apple-icon-180x180.png" />
    <link rel="icon" type="image/png" sizes="192x192"  href="/resources/newIndexPage/images/android-icon-192x192.png" />
    <link rel="icon" type="image/png" sizes="32x32" href="/resources/newIndexPage/images/favicon-32x32.png" />
    <link rel="icon" type="image/png" sizes="96x96" href="/resources/newIndexPage/images/favicon-96x96.png" />
    <link rel="icon" type="image/png" sizes="16x16" href="/resources/newIndexPage/images/favicon-16x16.png" />
    <link rel="manifest" href="/resources/newIndexPage/images/manifest.json" />
    <meta name="msapplication-TileColor" content="#ffffff" />
    <meta name="msapplication-TileImage" content="/resources/newIndexPage/images/ms-icon-144x144.png" />
    <meta name="theme-color" content="#ffffff" />

    <!--[if lt IE 9]>
    <script src="/resources/newIndexPage/js/html5shiv.js"></script>
    <script src="/resources/newIndexPage/js/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<!-- Header -->
<header class="container header">
    <div class="row">
        <div class="col-lg-6 col-md-6 col-sm-6 logo">
            <a href="./">소프트웨어<span>팩토리</span></a>
            <div class="small-logo">SoFAC : <i>Software Factory</i></div>
        </div>
        <div class="col-lg-6 col-md-6 col-sm-6 text-right login">
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <span class="avatar-welcome"><%out.print((String)request.getAttribute("customerName"));%> 님 접속을 환영합니다.</span>
                    <a href="javascript:void(0);" class="dropdown-toggle avatar" data-toggle="dropdown"><i class="fa fa-user"></i></a>
                    <ul class="dropdown-menu">
                        <li class="dropdown-menu-header text-center">설정</li>
                        <li><a href="javascript:void(0);"><i class="fa fa-user"></i> MY</a></li>
                        <li><a href="<c:url value="/logout" />"><i class="fa fa-lock"></i> 로그 아웃</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</header>
<div class="header-line"></div>
<!-- #End Header -->

<section class="container mb20">

        <%String currentProjectId= (String) request.getAttribute("projectId");
            List<Project> projectSet =  (List<Project>)request.getAttribute("projects");%>

        <div class="col-md-12">
            <!-- Warning Block -->
            <div class="row mb20">
                <div class="col-md-12">

                    <!-- Text warning -->
                    <p class="bg-warning p10">
                        우선 기존에 같은 이슈에 대해서 CASE를 오픈한 내용이 있는지 확인하시기 바랍니다. <br />
                        하나의 이슈에 대해서는 하나의 CASE만 오픈 하셔야 합니다.<br />
                        (이슈는 구체적으로 기록해 주세요 : ex  견적진행, 개발작업스토리, 앱작동불능, 유지보수요청 등)<br /><br />

                        <a href="<c:url value="/cabinet/" />">Check current CASE lise... </a>

                    </p>
                    <!-- #End text warning -->

                </div>
            </div>
            <!-- #End Warning Block -->

            <!-- Estimation -->
            <c:url var="createCase" value="/createCase?${_csrf.parameterName}=${_csrf.token}"/>
            <form action="${createCase}" enctype="multipart/form-data" method="POST">
                <div class="form-group">
                    <label for="project">Project</label>
                    <select name="projectName" class="form-control selectpicker" id="project">
                        <%
                            Iterator<Project> itr = projectSet.iterator();
                            while (itr.hasNext()) {
                                Project project = itr.next();%>
                        <option value=" <%out.print(project.getProjectName());%>">
                            <%
                            if(project.getProjectName().equals(ProjectEnum.projectNameNormal.getDbValue())) {
                                out.print(ProjectEnum.projectNameNormal.getValue());
                            } else if(project.getProjectName().equals(ProjectEnum.projectNameEstimate.getDbValue())){
                                out.print(ProjectEnum.projectNameEstimate.getValue());
                            } else {
                                out.print(project.getProjectName());
                            }
                            %>
                        </option>

                        <%}%>
                    </select>
                </div>

                <div class="form-group">
                    <label for="title">Issue title</label>
                    <input type="text" class="form-control" name="caseName" id="title" placeholder="Issue title" required>
                </div>

                <div class="form-group">
                    <label for="lang">Language</label>
                    <select class="form-control selectpicker" name="language" id="lang">
                        <option value="KO">한국어 / Korean</option>
                        <option value="AR">العربية / Arabic</option>
                        <option value="BE">Беларускі / Belarusian</option>
                        <option value="BG">Български / Bulgarian</option>
                        <option value="CS">Čeština / Czech</option>
                        <option value="DA">Dansk / Danish</option>
                        <option value="DE">Deutsch / German</option>
                        <option value="EL">Ελληνικά / Greek</option>
                        <option value="EN">English / English</option>
                        <option value="ES">Español / Spanish</option>
                        <option value="ET">Eesti / Estonian</option>
                        <option value="FI">Suomi / Finnish</option>
                        <option value="FR">Français / French</option>
                        <option value="GA">Gaeilge / Irish</option>
                        <option value="HI">हिंदी / Hindi</option>
                        <option value="HR">Hrvatski / Croatian</option>
                        <option value="HU">Magyar / Hungarian</option>
                        <option value="IN">Bahasa indonesia / Indonesian</option>
                        <option value="IS">Íslenska / Icelandic</option>
                        <option value="IT">Italiano / Italian</option>
                        <option value="IW">עברית / Hebrew</option>
                        <option value="JA">日本語 / Japanese</option>
                        <option value="LT">Lietuvių / Lithuanian</option>
                        <option value="LV">Latviešu / Latvian</option>
                        <option value="MK">Македонски / Macedonian</option>
                        <option value="MS">Bahasa melayu / Malay</option>
                        <option value="MT">Malti / Maltese</option>
                        <option value="NL">Nederlands / Dutch</option>
                        <option value="NO">Norsk / Norwegian</option>
                        <option value="PL">Polski / Polish</option>
                        <option value="PT">Português / Portuguese</option>
                        <option value="RO">Română / Romanian</option>
                        <option value="RU">Русский / Russian</option>
                        <option value="SK">Slovenčina / Slovak</option>
                        <option value="SL">Slovenščina / Slovenian</option>
                        <option value="SQ">Shqipe / Albanian</option>
                        <option value="SR">Српски / Serbian</option>
                        <option value="SV">Svenska / Swedish</option>
                        <option value="TH">ไทย / Thai</option>
                        <option value="TR">Türkçe / Turkish</option>
                        <option value="UK">Українська / Ukrainian</option>
                        <option value="VI">Tiếng việt / Vietnamese</option>
                        <option value="ZH">中文 / Chinese</option>
                        <option value="OL">Other language</option>
                    </select>
                </div>

                <div class="form-group">
                    <label for="editor">Message</label>
                    <textarea class="form-control" name="message" rows="7" id="editor" placeholder="Message" required></textarea>
                </div>

                <div class="form-group">
                    <div class="checkbox abc-checkbox">
                        <input type="checkbox" id="emergency" name="emergency">
                        <label for="emergency">Emergency</label>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-6 col-sm-12 col-xs-12">
                        <div class="form-group">
                            <label class="control-label">Select File</label>
                            <input id="caseInput" name="fileCase[]" type="file" multiple class="file-loading">
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-12 col-xs-12">
                        <div class="form-group text-right mt25">
                            <button type="submit" class="btn btn-primary btn-mobile">Send case</button>
                        </div>
                    </div>
                </div>
            </form>
            <!-- #End Estimation -->

        </div>
    </div>
</section>

<!-- Footer -->
<footer class="container footer mb20">
    <div class="mt20 text-center">Copyright &copy; 2017. All rights reserved.</div>
</footer>
<!-- #End Footer -->


<script src="/resources/newIndexPage/js/jquery.min.js"></script>
<script src="/resources/newIndexPage/js/jquery-ui.min.js"></script>
<script src="/resources/newIndexPage/js/jquery.mousewheel.min.js"></script>
<script src="/resources/newIndexPage/js/jquery.fancybox.min.js"></script>
<script src="/resources/newIndexPage/js/jquery.sweet-alert.min.js"></script>
<script src="/resources/newIndexPage/js/jquery.timeago.js"></script>
<script src="/resources/newIndexPage/js/jquery.timeago.ko.js"></script>
<script src="/resources/newIndexPage/js/bootstrap.min.js"></script>
<script src="/resources/newIndexPage/js/bootstrap-form-helpers.min.js"></script>
<script src="/resources/newIndexPage/js/bootstrap-select.min.js"></script>
<script src="/resources/newIndexPage/js/bootstrap.validator.min.js"></script>
<script src="/resources/newIndexPage/js/fileinput.min.js"></script>
<script src="/resources/newIndexPage/js/sortable.min.js"></script>
<script src="/resources/newIndexPage/js/form-validation.min.js"></script>
<script src="/resources/newIndexPage/js/pagination.min.js"></script>
<script src="/resources/newIndexPage/js/ckeditor/ckeditor.js"></script>
<script src="/resources/newIndexPage/js/main.js"></script>
</body>
</html>