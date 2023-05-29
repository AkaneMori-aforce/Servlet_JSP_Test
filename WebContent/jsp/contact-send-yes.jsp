<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../header.html" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
String name = (String) request.getAttribute("name");
String company = (String) request.getAttribute("company");
String mail = (String) request.getAttribute("mail");
String inquiry = (String) request.getAttribute("inquiry");
String[] newsletter = (String[])request.getAttribute("newsletter");
%>

<p>氏名：<%= name %></p>
<p>会社名：<%= company %></p>
<p>メールアドレス：<%= mail %></p>
<p>お問い合わせ内容：<br>
「<%= inquiry %>」</p>
<p>メルマガ：<br>
<c:choose>
	<c:when test="${newsletter != null}">
		<% for(String news : newsletter){ %>
    	「<%= news %>」
		<% } %>に関するメールマガジンをお送りします。</p>
	</c:when>
	<c:otherwise>
		メールマガジンはお送りしません。</p>
	</c:otherwise>
</c:choose>
<p>資料請求：<br>
この度は資料請求いただきありがとうございます。<br>
以下のリンクから資料ダウンロードが可能です。</p>
<a href="">資料をダウンロード</a>

<%@ include file = "../footer.html" %>