 <%@ page contentType="text/html;charset=EUC-KR"%>
 <h1>Declaration Example1</h1>
<%!
	String name = "Korea";
	public String getName(){
		return name;
	}
%>
��µǴ� ����� ? <%=getName()%>