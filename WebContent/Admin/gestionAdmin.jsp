<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@include file='adminHeader.jsp'%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			Gestion <small>Gestion Admin</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
			<li><a href="#">Gestion</a></li>
			<li class="active">Gestion Admin</li>
		</ol>
	</section>
	<!-- Main content -->
	<section class="content">
		<div class="row">
			<div class="col-xs-12">
				<div class="box">
					<div class="box-header">
						<h3 class="box-title">Gestion des Admins &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    
						<a type="button" class="btn btn-default"
								href="ajouterCategoryjsp" data-toggle="modal"
								data-target="#modal-default"> Ajouter Admin </a>
					</div></h3>
							
					<!-- /.box-header -->
					<div class="box-body">
						<table id="example2" class="table table-bordered table-hover">
							<thead>
								<tr>
									<th>Nom</th>
									<th>Email</th>
									<th>Mot de passe</th>
									<td><strong style="color: #F6323E"> ${msg }</strong></td>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${Admin}" var="c">
									<tr>
										<td>${c.nom}</td>
										<td>${c.email}</td>
										<td>${c.password}</td>
										<td class="project-actions text-right"><a
											class="btn btn-danger btn-sm"
											href="supprimerAdmin?id=${c.idAdmin}"
											onclick="return confirm('Are you sure you want to delete this item?');">
												<i class="fa fa-trash-o"> </i> Delete
										</a></td>
										
									</tr>
								</c:forEach>
							</tfoot>
						</table>
					</div>
					<!-- /.box-body -->
				</div>
			</div>
			<!-- /.col -->
		</div>
		<!-- /.row -->
	</section>
	<!-- /.content -->
	<!-- /.modal -->
	<div class="modal fade" id="modal-default">
		<div class="modal-dialog">
			<div class="modal-content">
				<form method="post" action="/DTL_website/ajouterAdmin">

					<div class="modal-header">
						<h4 class="modal-title">Ajouter Admin</h4>
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
					</div>

					<div class="modal-body">
						<div class="form-group">
							<label>Nom: </label> <input type="text" class="form-control"
								name="nom" required>
						</div>
						<div class="form-group">
							<label>E-mail : </label> <input type="email" class="form-control"
								name="email" required>
						</div>
						<div class="form-group">
							<label>Mot de passe : </label> <input type="text"
								class="form-control" name="mdp" required>
						</div>

						<div class="modal-footer">
							<button class="btn btn-default" data-dismiss="modal">Cancel</button>
							<button type="submit" class="btn btn-success">Save</button>
						</div>
					</div>

				</form>

			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
</div>

<!-- /.content-wrapper -->
<%@include file='adminFooter.jsp'%>
