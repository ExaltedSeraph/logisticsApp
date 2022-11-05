<%@page import="beans.Image" %>
<%@page import="dao.IImageDao" %>
<%@page import="dao.IImageDaomImpl" %>
<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@include file='adminHeader.jsp'%>
<%
	int id = Integer.parseInt(request.getParameter("id"));
    IImageDaomImpl c = new IImageDaomImpl();
	Image cc = c.getImage(id);
%>

<div class="content-wrapper">

	<div class="pad margin no-print">
		<div class="alert alert-warning alert-dismissible" style="margin-bottom: 0 !important;">
			<h4>
				<i class="fa fa-info"></i> Note:
			</h4>
			This page has been enhanced for printing. Click the print button at
			the bottom of the invoice to test.
		</div>
	</div>
	
	
		<div class="col-xs-8">
			<div class="box box-warning">
				<div class="box-header with-border">
					<h3 class="box-title">Edition d'image</h3>
				</div>
				<!-- /.box-header -->
				<!-- form start -->
				<form method="post" action="/DTL_website/UpdateImage" enctype="multipart/form-data">
					<div class="box-body">
					<div class="form-group">
							<label>Id </label>
							<%= cc.getId()%> <input type="hidden" class="form-control" value="<%= cc.getId()%>" name="id" required>
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">Titre</label> <input
								type="text" class="form-control" id="exampleInputEmail1"
								value="<%= cc.getTitre()%>" name ="titre" required>
						</div>
						
						<div class="form-group">
							<label for="exampleInputFile">Choisir l'image</label> 
							<br />
							<img src="${pageContext.request.contextPath}/Admin/getImage.jsp?id=<%= cc.getId()%>" alt="" width="250" height="180">
							<br />
							<input type="file"  name="image">
							<p class="help-block">Merci de choisir une photo de dimensions 700*448.</p>
						</div>
						
					</div>
					<!-- /.box-body -->

					<div class="box-footer">
						<button type="submit" class="btn btn-primary">Enregistrer les modifications </button>
					</div>
				</form>
			</div>
		</div>
</div>

<%@include file='adminFooter.jsp'%>
