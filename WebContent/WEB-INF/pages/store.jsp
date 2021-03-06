<%@ include file="header.jsp"%>
<div class="products-container container">
	<ul class="nav-products">
		<c:forEach var="cl" items="${Category_List}">
			<li class="col-xs-2"><a id="${cl.categoriesId}"
				href="${cl.categoryName}"><img src="${cl.categoriesImage}"
					alt=${cl.categoryName } /><span class="title-product">${cl.categoryName}</span></a></li>
		</c:forEach>
	</ul>
</div>
<div class="maincontent-wrapper clearfix">
	<div class="maincontent container">
		<div class="top-product col-md-6">
			<div class="top-product-title">
				<span>Image SLider Daalna hai</span>
			</div>
			<div class="top-product-image">
				<img src="res/img/s6_1.jpg" alt="Samsung-Edge" />
			</div>
			<div class="title-top-product">Samsung Edge</div>
			<div class="top-product-description">
				<p>Samsung as the smartphone received lot of flak for its
					repetitive, plasticky body-design and uninspiring software filled
					with bloatware. This year the company is back with not just one but
					two models -- Galaxy S6 and Galaxy S6 Edge. Although almost
					identical, the Galaxy S6 Edge sets itself apart from the S6 with
					its eye-catching dual-edge, slightly curved display on both the
					front sides.</p>
			</div>
		</div>
		<div class="latest-product col-md-6">
			<div class="panel panel-default">
				<div class="panel-heading latest-product-title">
					<span>Latest Products</span>
				</div>
				<div class="panel-body">
					<ul class="demo">



						<c:forEach var="pl" items="${latestProducts}">

							<li class="news-item">
								<div class="latest-product-tile clearfix">
									<div class="tile-img  pull-left">
										<img src="${pl.productsImage}" alt="${pl.productsModel}" />
									</div>
									<div class="tile-details pull-left">
										<div class="title-latest-product">${pl.productsModel}</div>
										<div class="info-row clearfix">
											<span class="label-latest-product pull-left">Price : :
											</span><span class="value-latest-product pull-right">
												${pl.productsPrice} </span>
										</div>
										<div class="info-row clearfix">
											<span class="label-latest-product pull-left">Manufacturer
												Name : </span><span class="value-latest-product pull-right">
												${pl.manufacturerName} </span>
										</div>
										<div class="info-row clearfix">
											<span class="label-latest-product pull-left">Added On
												: Edge : </span><span class="value-latest-product pull-right">
												${pl.productsDateAdded} </span>
										</div>
										<div class="price-latest-product">${pl.productsPrice}</div>
									</div>
								</div>
							</li>
						</c:forEach>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="best-seller-wrapper clearfix">
	<div class="best-seller container">
		<div class="best-seller-tile col-ms-4">
			<div class="best-seller-image">
				<img src="res/img/s6_1.jpg" alt="Samsung-Edge" />
			</div>
			<div class="best-seller-product">Samsung Edge</div>
			<div class="best-seller-description">
				<p>slightly curved display on both the front sides.</p>
			</div>
		</div>
	</div>
</div>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="review-header">
				<h1>
					Latest Reviews <small>find latest review of customers</small>
				</h1>
			</div>
			<c:forEach var="rl" items="${Reviews_list}">
				<div class="media">
					<a href="#" class="pull-left"><img
						src=${rl.products.productsImage } class="media-object"
						alt=${rl.products.productsModel}></a>
					<div class="media-body">
						<h4 class="media-heading">${rl.customers.customersFirstname}
						</h4>
						${rl.reviewText}
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
</div>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="page-header">
				<h1>Best Sellers</h1>
			</div>
			<!-- Place somewhere in the <body> of your page -->
			<div class="flexslider container">
				<ul class="slides">
					<c:forEach var="popProd" items="${Popular_Products}">
						<li class="col-md-4">
							<div>
								<div class="thumbnail">
									<img alt="${popProd.productsModel}"
										src="${popProd.productsImage}">
									<div class="caption">
										<h3>
											<br> ${popProd.productsModel}
										</h3>
										<p>${popProd.shortDesc}</p>
										<p>
											<a class="btn btn-primary" href="#">Action</a> <a class="btn"
												href="#">Action</a>
										</p>
									</div>
								</div>
							</div>
						</li>
					</c:forEach>
					<!-- items mirrored twice, total of 12 -->
				</ul>
			</div>
		</div>
	</div>
</div>
<%@ include file="footer.jsp"%>
<script type="text/javascript">
	$(window).load(function() {
		$('.flexslider').flexslider({
			animation : "slide",
			animationLoop : false,
			itemWidth : 300,
			itemMargin : 5,
			minItems : 1,
			maxItems : 3
		});
	});
</script>
<script type="text/javascript">
	$(document).ready(function() {
		$(".demo").bootstrapNews({
			newsPerPage : 2,
			navigation : true,
			autoplay : true,
			direction : 'up', // up or down
			animationSpeed : 'normal',
			newsTickerInterval : 4000, //4 secs
			pauseOnHover : true,
			onStop : null,
			onPause : null,
			onReset : null,
			onPrev : null,
			onNext : null,
			onToDo : null
		});
	});
</script>


