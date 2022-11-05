<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@include file='header.jsp'%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- header close -->
<!-- subheader begin -->
<section id="subheader" class="page-about no-bottom"
	data-stellar-background-ratio="0.5"
	style="background-image: url('${pageContext.request.contextPath}/wp-content/uploads/sites/2/2016/01/background-subheader-4-gallery.jpg');">
	<div class="overlay">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h1 class="page-title">Galerie</h1>
					<div class="crumb">
						<div class="deco">
							<ul class="crumb">
								<li><a rel="v:url" property="v:title"
									href="${pageContext.request.contextPath}/index.jsp">Home</a></li>
								<li class="active">Galerie</li>
							</ul>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
</section>
<!-- subheader close -->
<div class="clearfix"></div>

<section class="wpb_row vc_row-fluid vc_custom_1456081378421">
	<div class="container">
		<div class="row">
			<div class="wpb_column vc_column_container vc_col-sm-12">
				<div class="vc_column-inner ">
					<div class="wpb_wrapper  ">

						<div
							class="gallery full-gallery ex-gallery zoom-gallery-5f970f5f5398a pf_full_width pf_3_cols">
							<c:forEach items="${Images}" var="c">
								<div class="item">
									<div class="picframe">
										<a href="${pageContext.request.contextPath}/Admin/getImage.jsp?id=${c.id}"
											title="Visuel à venir"> <span class="overlay"></span> <span
											class="pf_text"> <span class="project-name">${c.titre}
											</span> <span class="small-border"></span>
										</span> <img src="${pageContext.request.contextPath}/Admin/getImage.jsp?id=${c.id}" alt="" />
										</a>
									</div>
								</div>
							</c:forEach> 
				<%-- 			<div class="item">
								<div class="picframe">
									<a href="${pageContext.request.contextPath}/wp-content/uploads/sites/2/2016/01/visuel-a-venir.jpg"
										title="Visuel à venir"> <span class="overlay"></span> <span
										class="pf_text"> <span class="project-name">Visuel à venir
												</span> <span class="small-border"></span>
									</span> <img src="${pageContext.request.contextPath}/wp-content/uploads/sites/2/2016/01/visuel-a-venir.jpg"
										alt="" />
									</a>
								</div>
							</div>
							<div class="item">
								<div class="picframe">
									<a href="${pageContext.request.contextPath}/wp-content/uploads/sites/2/2016/01/visuel-a-venir.jpg"
										title="Visuel à venir"> <span class="overlay"></span> <span
										class="pf_text"> <span class="project-name">Visuel à venir
												</span> <span class="small-border"></span>
									</span> <img src="${pageContext.request.contextPath}/wp-content/uploads/sites/2/2016/01/visuel-a-venir.jpg"
										alt="" />
									</a>
								</div>
							</div>
							<div class="item">
								<div class="picframe">
									<a href="${pageContext.request.contextPath}/wp-content/uploads/sites/2/2016/01/visuel-a-venir.jpg"
										title="Visuel à venir"> <span class="overlay"></span> <span
										class="pf_text"> <span class="project-name">Visuel à venir
												</span> <span class="small-border"></span>
									</span> <img src="${pageContext.request.contextPath}/wp-content/uploads/sites/2/2016/01/visuel-a-venir.jpg"
										alt="" />
									</a>
								</div>
							</div>
							<div class="item">
								<div class="picframe">
									<a href="${pageContext.request.contextPath}/wp-content/uploads/sites/2/2016/01/visuel-a-venir.jpg"
										title="Visuel à venir"> <span class="overlay"></span> <span
										class="pf_text"> <span class="project-name">Visuel à venir
												</span> <span class="small-border"></span>
									</span> <img src="${pageContext.request.contextPath}/wp-content/uploads/sites/2/2016/01/visuel-a-venir.jpg"
										alt="" />
									</a>
								</div>
							</div>
							<div class="item">
								<div class="picframe">
									<a href="${pageContext.request.contextPath}/wp-content/uploads/sites/2/2016/01/visuel-a-venir.jpg"
										title="Visuel à venir"> <span class="overlay"></span> <span
										class="pf_text"> <span class="project-name">Visuel à venir
												</span> <span class="small-border"></span>
									</span> <img src="${pageContext.request.contextPath}/wp-content/uploads/sites/2/2016/01/visuel-a-venir.jpg"
										alt="" />
									</a>
								</div>
							</div>
							<div class="item">
								<div class="picframe">
									<a href="${pageContext.request.contextPath}/wp-content/uploads/sites/2/2016/01/visuel-a-venir.jpg"
										title="Visuel à venir"> <span class="overlay"></span> <span
										class="pf_text"> <span class="project-name">Visuel à venir
												</span> <span class="small-border"></span>
									</span> <img src="${pageContext.request.contextPath}/wp-content/uploads/sites/2/2016/01/visuel-a-venir.jpg"
										alt="" />
									</a>
								</div>
							</div>
							<div class="item">
								<div class="picframe">
									<a href="${pageContext.request.contextPath}/wp-content/uploads/sites/2/2016/01/visuel-a-venir.jpg"
										title="Visuel à venir"> <span class="overlay"></span> <span
										class="pf_text"> <span class="project-name">Visuel à venir
												</span> <span class="small-border"></span>
									</span> <img src="${pageContext.request.contextPath}/wp-content/uploads/sites/2/2016/01/visuel-a-venir.jpg"
										alt="" />
									</a>
								</div>
							</div>
							<div class="item">
								<div class="picframe">
									<a href="${pageContext.request.contextPath}/wp-content/uploads/sites/2/2016/01/visuel-a-venir.jpg"
										title="Visuel à venir"> <span class="overlay"></span> <span
										class="pf_text"> <span class="project-name">Visuel à venir
												</span> <span class="small-border"></span>
									</span> <img src="${pageContext.request.contextPath}/wp-content/uploads/sites/2/2016/01/visuel-a-venir.jpg"
										alt="" />
									</a>
								</div>
							</div>
							<div class="item">
								<div class="picframe">
									<a href="${pageContext.request.contextPath}/wp-content/uploads/sites/2/2016/01/visuel-a-venir.jpg"
										title="Visuel à venir"> <span class="overlay"></span> <span
										class="pf_text"> <span class="project-name">Visuel à venir
												</span> <span class="small-border"></span>
									</span> <img src="${pageContext.request.contextPath}/wp-content/uploads/sites/2/2016/01/visuel-a-venir.jpg"
										alt="" />
									</a>
								</div>
							</div> --%>

						</div>
						<script type="text/javascript">
							(function($) {
								"use strict";
								jQuery(document)
										.ready(
												function() {
													'use strict'; // use strict mode
													jQuery(
															'.zoom-gallery-5f970f5f5398a')
															.magnificPopup(
																	{
																		delegate : 'a',
																		type : 'image',
																		closeOnContentClick : false,
																		closeBtnInside : false,
																		mainClass : 'mfp-with-zoom mfp-img-mobile',
																		image : {
																			verticalFit : true,
																			titleSrc : function(
																					item) {
																				//return item.el.attr('title') + ' &middot; <a class="image-source-link" href="'+item.el.attr('data-source')+'" target="_blank">image source</a>';
																				return item.el
																						.attr('title');
																			}
																		},
																		gallery : {
																			enabled : true
																		},
																		zoom : {
																			enabled : true,
																			duration : 300, // don't foget to change the duration also in CSS
																			opener : function(
																					element) {
																				return element
																						.find('img');
																			}
																		}
																	});
												});
							})(jQuery);
						</script>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="clearfix"></div>
</section>


<!-- footer begin -->
<%@include file='footer.jsp'%>