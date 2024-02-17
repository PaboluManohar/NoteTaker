<%@page import="com.entities.Note"%>
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
	
	<%
	int noteId = Integer.parseInt(request.getParameter("note_id").trim());
	
	Session s= FactoryProvider.getFactory().openSession();
	Note note =(Note)s.get(Note.class, noteId);

	%>
	
	<div class="container">
	<h1>edit here !...</h1><br>
	
	<form action="UpdateServlet" method="post">
	<input value="<%=note.getId() %>" name="noteId" type="hidden">
			<div class="form-group">
				<label style="font-size: 17px"
				 for="title">Note Title</label> 
				<input
					required="required" type="text" class="form-control" id="title"
					name="title"
					aria-describedby="emailHelp"
					
					style="font-size: 17px; border: 0.5px solid #01579b; outline: 10px; font-size: 15px; border-radius: 8px; line-height: 22px; background-color: #b3e5fc; color: #01579b;height: 35px; width: 250px; margin-bottom: 22px"
					placeholder="Enter Title here !..."
					value = "<%=note.getTitle() %>"
					/>

			</div>


			<div class="form-group">
				<label style="font-size: 17px" for="content">Note Content</label>

				<textarea required 
				class="form-control" id="content"
				placeholder="enter your content here !...." 
				rows="8" cols=""
				name="content"
									style="font-size: 17px; border: 0.5px solid #01579b; outline: 10px; font-size: 15px; border-radius: 18px; line-height: 22px; background-color: #b3e5fc; color: #01579b; margin-bottom: 22px"
				
				>   <%=note.getContent() %></textarea>

			</div>
			<div class="container text-center " style="margin-top: 55px">
				<button type="submit" class="btn btn-primary btn-lg">Save</button>
			</div>

		</form>
	</div>


</body>
</html>