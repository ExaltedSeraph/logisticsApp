<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@include file='header.jsp'%>
<!-- subheader begin -->
<section id="subheader" class="page-about no-bottom"
	data-stellar-background-ratio="0.5"
	style="background-image: url('${pageContext.request.contextPath}/wp-content/uploads/sites/2/2016/01/background-subheader-5-contact.jpg');">
	<div class="overlay">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h1 class="page-title">Contactez-nous</h1>
					<div class="crumb">
						<div class="deco">
							<ul class="crumb">
								<li><a rel="v:url" property="v:title"
									href="${pageContext.request.contextPath}/index.html">Home</a></li>
								<li class="active">Contactez-nous</li>
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

<section class="wpb_row vc_row-fluid vc_custom_1456085336676">
	<div class="container">
		<div class="row">
			<div
				class="wpb_column vc_column_container vc_col-sm-6 vc_col-has-fill">
				<div class="vc_column-inner vc_custom_1456218703988">
					<div class="wpb_wrapper  ">
						<div class="dtl_gmap" id="map-5f970f6018e1a"
							style="height: 492px;"></div>

						<script type="text/javascript">
							(function($) {
								"use strict"
								$(document)
										.ready(
												function() {
													// When the window has finished loading create our google map below
													google.maps.event
															.addDomListener(
																	window,
																	'load',
																	init);

													function init() {
														'use strict'; // use strict mode

														// Basic options for a simple Google Map
														// For more options see: https://developers.google.com/maps/documentation/javascript/reference#MapOptions
														var myLatlng = new google.maps.LatLng(
																48.87029662959967, 2.4669157100279056);

														var mapOptions = {
															// How zoomed in you want the map to start at (always required)
															zoom : 15,
															disableDefaultUI : false,
															scrollwheel : false,

															// The latitude and longitude to center the map (always required)

															center : myLatlng, // New York

															// How you would like to style the map. 
															// This is where you would paste any style found on Snazzy Maps.
															styles : [
																	{
																		"stylers" : [
																				{
																					"hue" : "#ff1a00"
																				},
																				{
																					"invert_lightness" : true
																				},
																				{
																					"saturation" : -100
																				},
																				{
																					"lightness" : 33
																				},
																				{
																					"gamma" : 0.5
																				} ]
																	},
																	{
																		"featureType" : "water",
																		"elementType" : "geometry",
																		"stylers" : [ {
																			"color" : "#2D333C"
																		} ]
																	} ]

														};

														// Get the HTML DOM element that will contain your map 
														// We are using a div with id="map" seen below in the <body>
														var mapElement = document
																.getElementById('map-5f970f6018e1a');

														// Create the Google Map using out element and options defined above
														var map = new google.maps.Map(
																mapElement,
																mapOptions);

														var marker = new google.maps.Marker(
																{
																	position : myLatlng,
																	map : map,
																	icon : '${pageContext.request.contextPath}/wp-content/map-marker-1.png',
																	title : 'Direct Transport & Logistique'
																});
													}
												});
							})(jQuery);
						</script>
					</div>
				</div>
			</div>
			<div
				class="wpb_column vc_column_container vc_col-sm-6 vc_col-has-fill">
				<div class="vc_column-inner vc_custom_1456084088463">
					<div class="wpb_wrapper  ">
						<div role="form" class="wpcf7" id="wpcf7-f318-p55-o1" lang="en-US"
							dir="ltr">
							<div class="screen-reader-response"></div>
							<form
								
								method="post" class="wpcf7-form" novalidate="novalidate">
								<div style="display: none;">
									<input type="hidden" name="_wpcf7" value="318" /> <input
										type="hidden" name="_wpcf7_version" value="5.1.7" /> <input
										type="hidden" name="_wpcf7_locale" value="en_US" /> <input
										type="hidden" name="_wpcf7_unit_tag" value="wpcf7-f318-p55-o1" />
									<input type="hidden" name="_wpcf7_container_post" value="55" />
								</div>
								<div id="contact-form-wrapper">
									<span class="wpcf7-form-control-wrap your-name"><input
										type="text" name="your-name" value="" size="40"
										class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control"
										aria-required="true" aria-invalid="false"
										placeholder="Your name" /></span><br /> <span
										class="wpcf7-form-control-wrap your-email"><input
										type="email" name="your-email" value="" size="40"
										class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7-validates-as-email form-control"
										aria-required="true" aria-invalid="false"
										placeholder="Your email" /></span><br /> <span
										class="wpcf7-form-control-wrap your-message"><textarea
											name="your-message" cols="40" rows="10"
											class="wpcf7-form-control wpcf7-textarea form-control"
											aria-invalid="false" placeholder="Your message"></textarea></span><br />
									<input type="submit" value="Envoyer"
										class="wpcf7-form-control wpcf7-submit btn btn-custom" />
								</div>
								<div class="wpcf7-response-output wpcf7-display-none"></div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="wpb_column vc_column_container vc_col-sm-12">
				<div class="vc_column-inner vc_custom_1456218713648">
					<div class="wpb_wrapper  ">
						<div
							class="vc_separator wpb_content_element vc_separator_align_center vc_sep_width_100 vc_sep_pos_align_center vc_separator_no_text vc_sep_color_grey vc_custom_1456084319312  vc_custom_1456084319312">
							<span class="vc_sep_holder vc_sep_holder_l"><span
								class="vc_sep_line"></span></span><span
								class="vc_sep_holder vc_sep_holder_r"><span
								class="vc_sep_line"></span></span>
						</div>
					</div>
				</div>
			</div>
			<div class="wpb_column vc_column_container ">
				<div class="vc_column-inner ">
					<div class="wpb_wrapper  ">
						<div class="text-center">
							<h2 class="heading wow fadeInUp" data-wow-delay="0">
								</p>
								<h2>Notre Branche</h2>

								<p>
							</h2>
							<div class="small-border wow flipInY" data-wow-delay=".2s"
								data-wow-duration=".8s"></div>
						</div>
						<p style="font-size: 18px; text-align: center">
							DIRECT-TRANSPORT ET LOGISTIQUE vous assure une Qualité de
							service, une écoute attentive de vos besoins pour servir au mieux
							vos attentes et vos exigences. <br /> Notre équipe investie vous
							trouvera la meilleure solution humaine, matérielle et tarifaire
							afin que le transport routier de vos marchandises en provenance
							ou <br />à destination de la France se déroule dans les
							meilleures conditions et dans les délais les plus optimales
							possible.
						</p>

					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<section class="wpb_row vc_row-fluid vc_custom_1456085365155">
	<div class="container">
		<div class="row">
			<div class="wpb_column vc_column_container">
				<div class="vc_column-inner " style="text-align: center;">
					<div class="wpb_wrapper  ">

						<div class="contact_info " style="width: 800px; margin: 0 auto;">
							<h3>MONTREUIL</h3>
							Implantée à MONTREUIL (93100) <br /> DIRECT-TRANSPORT ET
							LOGISTIQUE <br /> T. +33 1000 1000<br /> E. dtl@admin.com
							<div class="divider-single"></div>
							<a
								href="https://maps.google.com/?q=93100,Montreuil,direct,transport"
								class="btn-border popup-gmaps" title="Voir la localisation"
								target="_self">Voir la localisation</a>
						</div>


					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="clearfix"></div>
</section>

<%@include file='footer.jsp'%>