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
	<br>

	<div id="carouselExampleIndicators" class="carousel slide container"
		data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0"
				class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active"
				style="max-width: 1400px; max-height: 400px">
				<img class="d-block w-100" src="img/profile.jpg" alt="First slide">
				<div class="carousel-caption d-none d-md-block">
					<h5>About Us</h5>
					<p>Hello there! My name is Manohar, and I'm a third-year
						Computer Science Engineering student at Andhra University. I am
						passionate about technology and web development, and I'm excited
						to share with you my latest creation - a versatile and
						user-friendly Note Manager.</p>
				</div>
			</div>

			<div class="carousel-item"
				style="max-width: 1400px; max-height: 400px">
				<img class="d-block w-100" src="img/aa.png" alt="Third slide">
				<div class="carousel-caption d-none d-md-block">
					<h5>Our Mission</h5>
					<p>At Manohar's Note Manager, our mission is to provide you
						with a seamless note-taking experience. We understand the
						importance of keeping track of essential information, thoughts,
						and ideas, and our platform aims to make this process efficient
						and enjoyable. Whether you're a student like me or a professional
						looking to stay organized, our website is designed to cater to
						your needs.</p>
				</div>

			</div>
			<div class="carousel-item"
				style="max-width: 1400px; max-height: 400px">
				<img class="d-block w-100" src="img/security.jpg" alt="fourth slide">
				<div class="carousel-caption d-none d-md-block">
					<h5>Key Features</h5>
					<p>
						<b>Add Notes:</b> Easily create new notes and organize them by
						categories or topics.<br> <b>Edit Notes:</b> Made a mistake
						or need to update the content of your note? No worries! You can
						effortlessly edit. <br> <b>Delete Notes:</b> If you no longer
						need a particular note, our system allows you to delete it
						securely and permanently from your account.
					</p>
				</div>

			</div>
			<div class="carousel-item"
				style="max-width: 1400px; max-height: 400px">
				<img class="d-block w-100" src="img/joinus.jpg" alt="fifth slide">
				<div class="carousel-caption d-none d-md-block">
					<h5>Data Security</h5>
					<p>We understand that your notes may contain sensitive
						information, and we take data security very seriously. Our website
						employs the latest encryption protocols and follows industry best
						practices to ensure your data is stored safely and remains
						confidential. Your trust in us is paramount, and we strive to
						maintain the highest level of security standards.</p>
				</div>

			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleIndicators"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>

	</div>
	<br>

	<div align="center">
		<button type="button" class="btn btn-primary-dark btn-lg"
			align="center">
			<a style="text-decoration: none;" href="index.jsp" align="center">start
				taking notes</a>
		</button>
	</div>




</body>
</html>