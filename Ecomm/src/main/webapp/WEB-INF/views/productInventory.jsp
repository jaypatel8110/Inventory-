
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@include file="/WEB-INF/views/shared/header.jsp"%>


<section id="services">
	<div class="container-fluid p-0">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2 class="section-heading">Inventory</h2>
				<hr class="my-4">
			</div>
		</div>
	</div>
	<div class="container">
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
					<span class="glyphicon glyphicon-flag"></span>
					</a>
				</td>

			</tr>
		</c:forEach>
	</table>
	  <a href="<c:url value='/admin/productInventory/addProduct'/>" class="btn btn-success">Add Product</a>
</div>
</section>



<%@include file="/WEB-INF/views/shared/footer.jsp"%>
