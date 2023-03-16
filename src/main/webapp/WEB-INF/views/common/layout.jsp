<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
* {
	margin: 0;
	padding: 0
}

h1, h1 * {
	font-size: 1.5rem !important;
}

a {
	text-decoration: none;
	color: black;
}

.text-left {
	text-align: left
}

.text-right {
	text-align: right
}

.text-center {
	text-align: center
}
.flex {
    display: flex;
    height: calc(80vh - 2px);
}
.title {
    font-weight: bold;
    text-align: left;
    font-size: 1.2rem;
    margin-bottom: .5rem;
}
#container {
	width: 100%;
	margin: 0px auto;
	text-align: center;
	border: 0px solid #bcbcbc;
}

#header {
	padding: 1rem;
	border-bottom: 1px solid #bcbcbc;
}

#sidebar-left {
    display: inline-block;
width: 15%;
    padding: 2rem;
    box-sizing: border-box;
    border-right: 1px solid #ddd;
}

.side_menu {
    line-height: 2rem;
    font-size: 1rem;
}
#content {
      display: inline-block;
    width: 100%;
    padding: 1.5rem;
    box-sizing: border-box;
    border: 0px solid #bcbcbc;
    text-align: left;
    background: #f5f5f5;
}
div#content table {
    width: 100%;
    border-collapse: collapse;    
    border: 1px solid #ddd;
        line-height: 2rem;
    font-size: 14px;   
}

.article-outer {
    height: calc(55vh - 5px);
    background: white;
    border: 1px solid #ddd;
    border-radius: 10px;
    padding: 2rem;
    overflow: auto;
    margin-top:1rem
}
div#content table * {
    padding: 0 1rem;
}
    
#footer {
	    background: #e7e7e7;
    padding: 2rem;
}
#footer * {
    font-size: 13px;
    line-height: 1.2rem;
    color: gray;
}
span {
    line-height: 1rem;
    display: inline-block;
    font-size: 13px;
}
.btn {
      padding: 0.6rem 0.5rem;
    background: #599bd6;
    display: inline-block;
    color: white;
    border-radius: 5px;
    margin: 1.5rem .5rem 0 0;
    font-size: 1rem!important;
    font-weight: bold;
    text-align: center;
    min-width: 100px;
    width: fit-content;
    border: none;
}
.strong{font-weight:bold}
</style>
<title><tiles:insertAttribute name="title" /></title>
</head>
<body>
	<div id="container">
		<div id="header">
			<tiles:insertAttribute name="header" />
		</div>
		<div class="flex">
		<div id="sidebar-left">
			<tiles:insertAttribute name="side" />
		</div>
		<div id="content">
			<tiles:insertAttribute name="body" />
		</div>
		</div>
		<div id="footer">
			<tiles:insertAttribute name="footer" />
		</div>
	</div>
</body>
</html>