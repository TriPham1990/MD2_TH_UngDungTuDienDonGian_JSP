<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%--
  Created by IntelliJ IDEA.
  User: pmtri
  Date: 9/19/2019
  Time: 11:45 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Simple Dictionary</title>
</head>
<body>
<%!
    Map<String, String> dictionary = new HashMap<>();
%>
<%
    dictionary.put("hello", "xin chào");
    dictionary.put("red", "đỏ");
    dictionary.put("blue", "xanh da trời");
    dictionary.put("ok", "đồng ý");

    String search = request.getParameter("search");

    String result = dictionary.get(search);
    if(result != null){
        out.println("Word : " + search + "<br>");
        out.println("Result : " + result);
    } else {
        out.println("Not found");
    }
%>
</body>
</html>
