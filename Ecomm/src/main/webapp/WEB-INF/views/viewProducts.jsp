
<%@include file="/WEB-INF/views/shared/header.jsp"%>

<section id="services">
	<div class="container-fluid p-0">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2 class="section-heading">View Product</h2>
				<p>Details</p>
				<hr class="my-4">
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-5">
				<img alt="image" src="" style="width: 100%;height: 300px;"/>
			</div>
			<div class="col-mid-5">
				<h3>Product Name :${product.productName}</h3>
				<p>Product Description :${product.productDescription}</p>
				<p>Manufacturer :${product.productManufacturer}</p>
				<p>Category :${product.productDescription}</p>
				<p>Price :<strong>${product.productPrice} USD </strong>	</p>
				
			</div>
		</div>
	</div>
</section>
<%@include file="/WEB-INF/views/shared/footer.jsp"%>

