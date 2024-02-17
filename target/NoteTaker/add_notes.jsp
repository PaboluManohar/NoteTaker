<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
<%@include file="all_css_js.jsp"%>

</head>
<body>
	<div class="container-fluid  p-0  m-0 ">
		<%@include file="Navbar.jsp"%>
	</div>

	<br>
	<!-- this is add form-->
	<div class="container">
		<h1>Add Notes here!..</h1>
		<form action="SaveNotes" method="post">
			<div class="form-group">
				<label style="font-size: 17px;" for="title">Note Title</label> <input
					required="required" type="text" class="form-control" id="title"
					name="title" aria-describedby="emailHelp"
					style="border: 0.5px solid #01579b; font-size: 15px; border-radius: 7px; line-height: 20px; background-color: #b3e5fc; color: #01579b; height: 35px; width: 250px; margin-bottom: 22px"
					placeholder="Enter Title here !...">

			</div>


			<div class="form-group">
				<label style="font-size: 17px" for="content">Note Content</label>

				<textarea required class="form-control" id="content"
					style="border: 0.5px solid #01579b; outline: 10px; font-size: 15px; border-radius: 18px; line-height: 22px; background-color: #b3e5fc; color: #01579b; margin-bottom: 22px"
					placeholder="Enter your content here !...." rows="8" 
					name="content" 
					 onmouseover="this.style.outlineWidth='7px'"
    onmouseout="this.style.outlineWidth='10px'"
					></textarea>

			</div>
			<div class="container text-center " style="margin-top: 55px">
				<button type="submit" class="btn btn-primary btn-lg">Save</button>
			</div>

		</form>
	</div>
	
</body>
<!--<style>
title:hover {
	border: 3px solid #01579b;
}
</style>-->
</html>
