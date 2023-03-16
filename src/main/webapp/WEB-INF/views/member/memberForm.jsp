<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<%
   request.setCharacterEncoding("UTF-8");
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입창</title>
<style>
   .text_center{
     text-align:center;
   }
</style>
</head>
<body>

<p class="title">회원가입</p>
<div class="article-outer">
	<form method="post"   action="${contextPath}/member/addMember.do">
	<table border="1"  width="80%" align="center" >
	   <tr>
	      <td width="200" class="strong" bgcolor="#e1f1ff">아이디</td>
	      <td width="400"><input type="text" name="id"></td>
	   </tr>
	   <tr>
	      <td width="200"class="strong" bgcolor="#e1f1ff">비밀번호</td>
	      <td width="400"><input type="password" name="pwd"></td>
	    </tr>
	    <tr>
	       <td width="200"class="strong" bgcolor="#e1f1ff">이름</td>
	       <td width="400"><input type="text" name="name"></td>
	    </tr>
	    <tr>
	       <td width="200"class="strong" bgcolor="#e1f1ff">이메일</td>
	       <td width="400"><input type="text" name="email"></td>
	    </tr>
	</table>
	 <div class="text-center">
	 <input  class="btn"  type="submit" value="가입하기"><input  class="btn"  type="reset" value="다시입력">
	 </div>
	</form></div>
</body>
