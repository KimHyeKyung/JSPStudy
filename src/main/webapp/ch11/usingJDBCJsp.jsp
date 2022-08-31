<%@ page contentType="text/html;charset=EUC-KR" import="java.sql.*"%>
<%@ page import="java.util.*, ch11.*"%>
<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;

	String book_id = "", 
			title = "", 
			pubs = "", 
			pub_date = "", 
			author_id = "";
	int counter = 0;
	try {
		conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "webdb", "1234");//Connection 생성
		stmt = conn.createStatement();//Statement 생성
		rs = stmt.executeQuery("select * from book"); //질의실행결과를 ResultSet에 담는다.
%>

<html>
<head>
<title>JSP에서 데이터베이스 연동</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#FFFFFF">
	<h2>JSP 스크립틀릿에서 데이터베이스 연동 예제</h2><br/>
	<h3>회원정보</h3>
	<table bordercolor="#999999" border="1">
		<tr>
			<td width="100px" style="text-align: center;"><small>BOOK_ID</small></td>
			<td width="200px" style="text-align: center;"><small>TITLE</small></td>
			<td width="200px" style="text-align: center;"><small>PUBS</small></td>
			<td width="200px" style="text-align: center;"><small>PUB_DATE</small></td>
			<td width="200px" style="text-align: center;"><small>AUTHOR_ID</small></td>
		</tr>
		<%
			if (rs != null) {

					while (rs.next()) {
						book_id = rs.getString("book_id");
						title = rs.getString("title");
						pubs = rs.getString("pubs");
						pub_date = rs.getString("pub_date");
						author_id = rs.getString("author_id");
		%>
		<tr>
			<td><%=book_id%></td>
			<td><%=title%></td>
			<td><%=pubs%></td>
			<td><%=pub_date%></td>
			<td><%=author_id%></td>
		</tr>
			<%
				counter++;
						}//end while
					}//end if
			%>
	</table>
	<br/>
	total records :<%=counter%>
	<%
		} catch (SQLException sqlException) {
			System.out.println("sql exception");
		} catch (Exception exception) {
			System.out.println("exception");
		} finally {
			if (rs != null)
				try {rs.close();} 
				catch (SQLException ex) {}
			if (stmt != null)
				try {stmt.close();} 
				catch (SQLException ex) {}
			if (conn != null)
				try {conn.close();} 
				catch (Exception ex) {}
		}
	%>








































<%-- 
<html>
<head>
<title>JSP에서 데이터베이스 연동</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#FFFFCC">
	<h2>JSP 스크립틀릿에서 데이터베이스 연동 예제</h2><br/>
	<h3>회원정보</h3>
	<table bordercolor="#0000ff" border="1">
		<tr>
			<td><strong>ID</strong></td>
			<td><strong>PWD</strong></td>
			<td><strong>NAME</strong></td>
			<td><strong>NUM1</strong></td>
			<td><strong>NUM2</strong></td>
			<td><strong>EMAIL</strong></td>
			<td><strong>PHONE</strong></td>
			<td><strong>ZIPCODE/ADDRESS</strong></td>
			<td><strong>JOB</strong></td>
		</tr>
		<%
			if (rs != null) {

					while (rs.next()) {
						id = rs.getString("id");
						pwd = rs.getString("pwd");
						name = rs.getString("name");
						num1 = rs.getString("num1");
						num2 = rs.getString("num2");
						email = rs.getString("email");
						phone = rs.getString("phone");
						zipcode = rs.getString("zipcode");
						address = rs.getString("address");
						job = rs.getString("job");
		%>
		<tr>
			<td><%=id%></td>
			<td><%=pwd%></td>
			<td><%=name%></td>
			<td><%=num1%></td>
			<td><%=num2%></td>
			<td><%=email%></td>
			<td><%=phone%></td>
			<td><%=zipcode%>/<%=address%></td>
			<td><%=job%></td>
		</tr>
			<%
				counter++;
						}//end while
					}//end if
			%>
	</table>
	<br/>
	total records :<%=counter%>
	<%
		} catch (SQLException sqlException) {
			System.out.println("sql exception");
		} catch (Exception exception) {
			System.out.println("exception");
		} finally {
			if (rs != null)
				try {rs.close();} 
				catch (SQLException ex) {}
			if (stmt != null)
				try {stmt.close();} 
				catch (SQLException ex) {}
			if (conn != null)
				try {conn.close();} 
				catch (Exception ex) {}
		}
	%> --%>