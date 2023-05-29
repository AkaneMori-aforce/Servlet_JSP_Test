<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.html" %>

<h1>お問い合わせフォーム</h1>
<p><font color="red">*</font>は必須項目です。</p><br>

<form action="/ServletTest/servlet/contact" method="post">
氏名 <font color="red">*</font><br>
<input type="text" name="name" required><br>
会社名<br>
<input type="text" name="company"><br>
メールアドレス <font color="red">*</font><br>
<input type="text" name="mail" required><br>
お問い合わせ内容 <font color="red">*</font><br>
<textarea name="inquiry" cols="30" rows="10" required></textarea><br>
メルマガ選択<br>
<input type="checkbox" name="newsletter" value="総合案内">総合案内
<input type="checkbox" name="newsletter" value="セミナー案内">セミナー案内
<input type="checkbox" name="newsletter" value="求人採用情報">求人採用情報<br>
資料請求を希望されますか？<br>
<input type="radio" name="documents" value="yes" checked>Yas
<input type="radio" name="documents" value="no">No<br>
<input type="submit" value="送信">
</form>

<%@ include file="../footer.html" %>
