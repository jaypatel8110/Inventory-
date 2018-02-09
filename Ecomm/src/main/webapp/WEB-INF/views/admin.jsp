
<%@include file="/WEB-INF/views/shared/header.jsp"%>
<section id="portfolio">
	<div class="container-fluid">
		<div class="text-center col-xl-8 col-xl-offset-2 ">
			<h1 class="section-heading text-center ">
				<c:if test="${pageContext.request.userPrincipal.name !=null}">
					<h2>
						Welcome: <span class="text-uppercase">${pageContext.request.userPrincipal.name}
						</span>
					</h2>
				</c:if>
			</h1>
			<p>This is an administrator page.</p>
			<hr class="primary">
			<br>
			<h3>
				<a href="<c:url value="/admin/productInventory" /> "
					class="btn btn-lg btn-success"> Product Inventory </a>
			</h3>
			<p>Here you can view, check and modify the product inventory!</p>
			<br>
		</div>
	</div>
</section>