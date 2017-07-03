<%@page import="java.util.Enumeration"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的世界</title>
</head>
<body>
	<h1>这是一个很安静的晚上</h1>

	<%
		out.println("ip地址:" + request.getRemoteAddr());
	%>
	<br>
	<jsp:scriptlet>out.print("jsp初步");</jsp:scriptlet>

	<br>
	<br>
	<font color="red">jsp语句声明:</font>
	<%!int i = 0;%>
	<jsp:declaration>String name = "yl";</jsp:declaration>


	<br>
	<br>
	<%="我的名字是:" + name.toString()%>
	<br>
	<%="今天是:" + new Date().toString()%><!--  -->
	<br>
	<jsp:expression>"i的值是:" + i</jsp:expression>

	<br>
	<br>
	<%@include file="aaa.html"%>
	<%-- <%@ taglib ... %>  引入第三方标签--%>

	<br>
	<br>
	<font color="red">jsp行为:</font>
	<jsp:include page="aaa.html"></jsp:include>
	<br>
	<jsp:include page="aaa.jsp"></jsp:include>

	<br>
	<br>
	<font color="red">jsp隐含对象:</font>
	<!--request	HttpServletRequest类的实例
		response	HttpServletResponse类的实例
		out	PrintWriter类的实例，用于把结果输出至网页上
		session	HttpSession类的实例
		application	ServletContext类的实例，与应用上下文有关
		config	ServletConfig类的实例
		pageContext	PageContext类的实例，提供对JSP页面所有对象以及命名空间的访问
		page	类似于Java类中的this关键字
		Exception	Exception类的对象，代表发生错误的JSP页面中对应的异常对象 -->


	<br>
	<br>
	<font color="red">jsp的控制语句:</font>
	<br>
	<%
		if (i == 0) {
			out.println("i的值是0");
		}
	%>
	<br>
	<%!int id = 1;%>
	<%
		switch (id) {
		case 1:
			out.println("offical network1");

			break;
		case 2:
			out.println("offical network2");

			break;
		case 3:
			out.println("offical network3");
			break;
		}
	%>

	<%
		for (int i = 1; i < 6; i++) {
			switch (i) {
			case 1:
				out.println("offical network1");

				break;
			case 2:
				out.println("offical network2");

				break;
			case 3:
				out.println("offical network3");
				break;
			}
		}
	%>


	<br>
	<br>
	<font color="red">动作元素:先编译好一个javabean文件,然后通过对这个文件调用属性来改变值</font>
	<jsp:useBean id="caonima" class="org.yl.test.Bean"></jsp:useBean>

	<jsp:setProperty property="message" name="caonima" value="caonimaerhao" />
	<p>输出改变后的message的值:</p>
	<jsp:getProperty property="message" name="caonima" />


	<br>
	<br>
	<h4>
		<font color="red">http信息头实例</font>
	</h4>
	<table width="100%" border="1" align="center">
		<tr bgcolor="#949494">
			<th>表名</th>
			<th>表值</th>
		</tr>
		<%
			Enumeration headerNames = request.getHeaderNames();
			while (headerNames.hasMoreElements()) {
				String paraName = (String) headerNames.nextElement();
				out.print("<tr><td>" + paraName + "</td>\n");
				String paraValue = request.getHeader(paraName);
				out.print("<td>" + paraValue + "</td></tr>\n");
			}
		%>
	</table>






</body>
</html>