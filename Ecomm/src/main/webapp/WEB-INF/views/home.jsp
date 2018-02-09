
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
				<h2 class="section-heading text-white">Look into Phones</h2>
				<hr class="light my-4">
				<p class="text-faded mb-4"> </p>
				<a class="btn btn-light btn-xl js-scroll-trigger" href="#services">Lets
					see products!</a>
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
					<h3 class="mb-3">All Brands</h3>
					
				</div>
			</div>
			<div class="col-lg-3 col-md-6 text-center">
				<div class="service-box mt-5 mx-auto">
					<i class="fa fa-4x fa-paper-plane text-primary mb-3 sr-icons"></i>
					<h3 class="mb-3">Ready to Ship</h3>
					
				</div>
			</div>
			<div class="col-lg-3 col-md-6 text-center">
				<div class="service-box mt-5 mx-auto">
					<i class="fa fa-4x fa-newspaper-o text-primary mb-3 sr-icons"></i>
					<h3 class="mb-3">All the latest phones</h3>
					
				</div>
			</div>
			<div class="col-lg-3 col-md-6 text-center">
				<div class="service-box mt-5 mx-auto">
					<i class="fa fa-4x fa-heart text-primary mb-3 sr-icons"></i>
					<h3 class="mb-3">Loving support from customers </h3>
					
				</div>
			</div>
		</div>
</section>



<%@include file="/WEB-INF/views/shared/footer.jsp"%>
