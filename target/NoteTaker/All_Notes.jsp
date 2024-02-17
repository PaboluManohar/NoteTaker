<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_css_js.jsp"%>
</head>
<body>
	<div class="container-fluid  p-0  m-0 ">
		<%@include file="Navbar.jsp"%>
	</div>
	<div class='container'>
		<br>
		<h1 class="text-uppercase">ALL NOTES :</h1>

		<div class="row" style="border: 0.5px solid #01579b;border-radius:17px;background-color: #e0f7fa">
			<div class="col-12">
				<%
				Session s = FactoryProvider.getFactory().openSession();
				Query q = s.createQuery("from Note");

				List<Note> list = q.list();
				for (Note note : list) {
				%>
				<div class="card mt-3 ml-4" style="border-radius:17px;">
					<div class="row">
						<div class="col-6 ">
							<img style="max-width: 120px" class="card-img-top  mt-4 ml-4"
								src="img/Notepad.png" alt="Card image cap">
						</div>
						<div class="col-6 my-auto" style="">
							<h1 class="card-title"><%=note.getTitle()%></h1>
						</div>
					</div>
					<!--  			<img style="max-width: 120px" class="card-img-top mt-4 ml-4"
						src="img/Notepad.png" alt="Card image cap">  -->
					<div class="" style="margin-left: 15px; margin-top: 7px">
						<b class="text-primary"><%=note.getAdedDate().toString()%></b>
					</div>
					<div class="card-body">
						<p class="card-text px-2 py-3" style="border: 0.5px solid #01579b;font-size:15px;border-radius:17px;line-height:20px;background-color: #b3e5fc;color:#01579b;"><%=note.getContent()%></p>
						<div class="container text-center" style="margin-top: 20px">
							<a href="DeleteServlet?note_id=<%=note.getId()%>"
								class="btn btn-danger mr-2 ml-2" style="border-radius: 15px">delete</a> <a
								href="edit.jsp?note_id=<%=note.getId()%>"
								class="btn btn-primary mr-2 ml-2" style="border-radius: 15px">update</a>
						</div>

					</div>
				</div>

				<%
				}

				s.close();
				%>



			</div>
		</div>





	</div>

</body>
</html>