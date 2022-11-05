<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@include file='adminHeader.jsp'%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

         <!-- Content Wrapper. Contains page content -->
         <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <section class="content-header">
               <h1>
                  Gestion
                  <small>Gestion Galerie</small>
               </h1>
               <ol class="breadcrumb">
                  <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                  <li><a href="#">Gestion</a></li>
                  <li class="active">Gestion Galerie</li>
               </ol>
            </section>
            <!-- Main content -->
            <section class="content">
               <div class="row">
                  <div class="col-xs-12">
                     <div class="box">
                        <div class="box-header">
                           <h3 class="box-title">Gestion de la Galerie</h3>
                           <div style="text-align: right;">
                           </div>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body" >
                           <table id="example2" class="table table-bordered table-hover" style="text-align:center">
                              <thead >
                                 <tr>
                                    <th style="text-align:center">N° Image </th>
                                    <th style="text-align:center">Titre image </th>
                                    <th style="text-align:center">Lien de l'image </th>
                                    <th style="text-align:center">Modifier Image </th>
                                 </tr>
                              </thead>
                              <tbody>
                              <c:forEach items="${Images}"  var="c">       
                                 <tr>
                                    <td>${c.id}</td>
                                    <td>${c.titre}</td>
                                    <td><a class="example-image-link" href="${pageContext.request.contextPath}/Admin/getImage.jsp?id=${c.id}" data-lightbox="example-1">Afficher l'image</a></td>
                                    <td> <a href="${pageContext.request.contextPath}/Admin/editImage.jsp?id=${c.id}" class="btn btn-warning" >
                                       <i class="fa fa-edit fa-xs"></i> Editez </a>
                                    </td>
                                 </tr>
                                 </c:forEach>
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
            <div class="modal modal-warning fade" id="modal-warning">
               <div class="modal-dialog">
                  <div class="modal-content">
                  <form method="post" action="UpdateImage">
                     <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title">Modifier l'image</h4>
                     </div>
                     <div class="modal-body">
                        <div class="form-group">
                           <label>Titre</label><span class="required">*</span> <input
                              type="text" class="form-control" name="titre" required>
                        </div>
                       <div class="form-group">
                       <label for="exampleInputFile">Choisir l'image </label>
                        <input type="file" name="image" id="exampleInputFile">
                        <p class="help-block">Merci de choisir une photo de dimensions 700*448.</p>
                       </div>
                        
                     </div>
                     <div class="modal-footer">
                        <button type="button" class="btn btn-outline pull-left" data-dismiss="modal">Fermer</button>
                        <button type="submit" class="btn btn-outline">Save changes</button>
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
      