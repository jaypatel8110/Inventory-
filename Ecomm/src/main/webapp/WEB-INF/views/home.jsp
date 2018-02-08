
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@include file="/WEB-INF/views/shared/home_header.jsp"%>

<header class="masthead text-center text-white d-flex">
	<div class="container my-auto">
		<div class="row">
			<div class="col-lg-10 mx-auto">
				<h1 class="text-uppercase">
					<strong>Store</strong>
				</h1>
				<hr>
			</div>
			<div class="col-lg-8 mx-auto">
				<p class="text-faded mb-5">Shopping Store</p>
				<a class="btn btn-primary btn-xl js-scroll-trigger" href="#about">Go
					to Products</a>
			</div>
		</div>
	</div>
</header>

<section class="bg-primary" id="about">
	<div class="container">
		<div class="row">
			<div class="col-lg-8 mx-auto text-center">
				<h2 class="section-heading text-white">We've got what you need!</h2>
				<hr class="light my-4">
				<p class="text-faded mb-4">Start Bootstrap has everything you
					need to get your new website up and running in no time! All of the
					templates and themes on Start Bootstrap are open source, free to
					download, and easy to use. No strings attached!</p>
				<a class="btn btn-light btn-xl js-scroll-trigger" href="#services">Lets
					see our products!</a>
			</div>
		</div>
	</div>
</section>

<section id="services">
	<div class="container-fluid p-0">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2 class="section-heading">All our products</h2>
				<p>See our awesome products</p>
				<hr class="my-4">
			</div>
		</div>
	</div>
	<table class="table table-striped table-hover table-borderd">
		<thead>
			<tr>
				<th>Photo Thumb</th>
				<th>Product Name</th>
				<th>Category</th>
				<th>Condition</th>
				<th>Status</th>
				<th></th>

			</tr>
		</thead>
		<c:forEach items="${products}" var="product">
			<tr>
				<td><img src="#" alt="image" /></td>
				<td>${product.productName}</td>
				<td>${product.productCategory}</td>
				<td>${product.productCondition}</td>
				<td>${product.productPrice} USD </td>
				<td>
					<a href="<c:url value='/viewProducts/${product.productId}'/> ">
					<span class="fas fa-check"></span>
					</a>
				</td>

			</tr>
		</c:forEach>
	</table>
	<div class="container">
		<div class="row">
			<div class="col-lg-3 col-md-6 text-center">
				<div class="service-box mt-5 mx-auto">
					<i class="fa fa-4x fa-diamond text-primary mb-3 sr-icons"></i>
					<h3 class="mb-3">Sturdy Templates</h3>
					<p class="text-muted mb-0">Our templates are updated regularly
						so they don't break.</p>
				</div>
			</div>
			<div class="col-lg-3 col-md-6 text-center">
				<div class="service-box mt-5 mx-auto">
					<i class="fa fa-4x fa-paper-plane text-primary mb-3 sr-icons"></i>
					<h3 class="mb-3">Ready to Ship</h3>
					<p class="text-muted mb-0">You can use this theme as is, or you
						can make changes!</p>
				</div>
			</div>
			<div class="col-lg-3 col-md-6 text-center">
				<div class="service-box mt-5 mx-auto">
					<i class="fa fa-4x fa-newspaper-o text-primary mb-3 sr-icons"></i>
					<h3 class="mb-3">Up to Date</h3>
					<p class="text-muted mb-0">We update dependencies to keep
						things fresh.</p>
				</div>
			</div>
			<div class="col-lg-3 col-md-6 text-center">
				<div class="service-box mt-5 mx-auto">
					<i class="fa fa-4x fa-heart text-primary mb-3 sr-icons"></i>
					<h3 class="mb-3">Made with Love</h3>
					<p class="text-muted mb-0">You have to make your websites with
						love these days!</p>
				</div>
			</div>
		</div>
</section>

<section class="p-0" id="portfolio">
	<div class="container-fluid p-0">
		<div class="row no-gutters popup-gallery">
			<div class="col-lg-4 col-sm-6">
				<a class="portfolio-box"
					href="<c:url value='/resources/img/portfolio/fullsize/1.jpg'/>">
					<img class="img-fluid"
					src="<c:url value='/resources/img/portfolio/thumbnails/1.jpg'/>"
					alt="not displayeddddddddddd">
					<div class="portfolio-box-caption">
						<div class="portfolio-box-caption-content">
							<div class="project-category text-faded">Category</div>
							<div class="project-name">Project Name</div>
						</div>
					</div>
				</a>
			</div>
			<div class="col-lg-4 col-sm-6">
				<a class="portfolio-box"
					href="<c:url value='/resources/img/portfolio/fullsize/2.jpg'/>">
					<img class="img-fluid"
					src="<c:url value='/resources/img/portfolio/thumbnails/2.jpg'/>"
					alt="">
					<div class="portfolio-box-caption">
						<div class="portfolio-box-caption-content">
							<div class="project-category text-faded">Category</div>
							<div class="project-name">Project Name</div>
						</div>
					</div>
				</a>
			</div>
			<div class="col-lg-4 col-sm-6">
				<a class="portfolio-box"
					href="<c:url value='/resources/img/portfolio/fullsize/3.jpg'/>">
					<img class="img-fluid"
					src="<c:url value='/resources/img/portfolio/thumbnails/3.jpg'/>"
					alt="">
					<div class="portfolio-box-caption">
						<div class="portfolio-box-caption-content">
							<div class="project-category text-faded">Category</div>
							<div class="project-name">Project Name</div>
						</div>
					</div>
				</a>
			</div>
			<div class="col-lg-4 col-sm-6">
				<a class="portfolio-box"
					href="<c:url value='/resources/img/portfolio/fullsize/4.jpg'/>">
					<img class="img-fluid"
					src="<c:url value='/resources/img/portfolio/thumbnails/4.jpg'/>"
					alt="">
					<div class="portfolio-box-caption">
						<div class="portfolio-box-caption-content">
							<div class="project-category text-faded">Category</div>
							<div class="project-name">Project Name</div>
						</div>
					</div>
				</a>
			</div>
			<div class="col-lg-4 col-sm-6">
				<a class="portfolio-box"
					href="<c:url value='/resources/img/portfolio/fullsize/5.jpg'/>">
					<img class="img-fluid"
					src="<c:url value='/resources/img/portfolio/thumbnails/5.jpg'/>"
					alt="">
					<div class="portfolio-box-caption">
						<div class="portfolio-box-caption-content">
							<div class="project-category text-faded">Category</div>
							<div class="project-name">Project Name</div>
						</div>
					</div>
				</a>
			</div>
			<div class="col-lg-4 col-sm-6">
				<a class="portfolio-box"
					href="<c:url value='/resources/img/portfolio/fullsize/6.jpg'/>">
					<img class="img-fluid"
					src="<c:url value='/resources/img/portfolio/thumbnails/6.jpg'/>"
					alt="">
					<div class="portfolio-box-caption">
						<div class="portfolio-box-caption-content">
							<div class="project-category text-faded">Category</div>
							<div class="project-name">Project Name</div>
						</div>
					</div>
				</a>
			</div>
		</div>
	</div>
</section>

<section class="bg-dark text-white">
	<div class="container text-center">
		<h2 class="mb-4">Insert Products</h2>
		<a class="btn btn-light btn-xl sr-button"
			href="http://startbootstrap.com/template-overviews/creative/">Order
			Now!</a>
	</div>
</section>

<%@include file="/WEB-INF/views/shared/footer.jsp"%>