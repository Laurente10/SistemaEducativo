<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.institucion.edu.entity.Usuario" %>
<!DOCTYPE html>
<%
Usuario u = (Usuario) session.getAttribute("usuarioSession");

if (u == null) {
    response.sendRedirect(request.getContextPath() + "/login");
    return;
}
%>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sistema Educativo - Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/dashboard.css">
</head>
<body>
<div class="container mt-4">
<div class="topbar d-flex justify-content-between align-items-center">
            <div>
            <h3 class="mb-0">🎓 Sistema Educativo</h3>
</div>
            <div>
                Bienvenido: <strong><%= u.getUsername() %></strong>
            <a href="${pageContext.request.contextPath}/logout"
                class="btn btn-danger btn-sm ms-3 logout-btn">
                Cerrar Sesión
            </a>
</div>
</div>

<div class="card border-0 shadow-sm mb-4">
<div class="card-body p-4">
<div class="d-flex justify-content-between align-items-start">
            <div>
           <h2 class="fw-bold text-success mb-2">
           👋 ¡Bienvenido, <%= u.getUsername() %>!
</h2>
           <h5 class="text-dark mb-3">
               Sistema Educativo
</h5>
           <p class="text-muted mb-4">
               Administra alumnos, docentes, cursos, matrículas y notas desde un único panel de control.
           </p>
          <div class="d-flex flex-wrap gap-4">
          <div>
          📅 <strong id="fechaActual"></strong>
</div>
          <div>
          🕒 <strong id="horaActual"></strong>
</div>
</div>
</div>
           <div class="text-end">
           <span class="badge bg-success fs-6">
           			Usuario: <%= u.getUsername() %>
</span>
</div>
</div>
</div>
</div>

<div class="row g-4">

        <% if (u.tieneRol("ADMIN")) { %>

<div class="col-md-4">
              <div class="card dashboard-card p-4 text-center">
              <div class="icon">📚</div>
              <h4>Cursos</h4>
              <a href="${pageContext.request.contextPath}/cursos"
                  class="btn btn-primary mt-3">
                  Gestionar
              </a>
</div>
</div>

<div class="col-md-4">
              <div class="card dashboard-card p-4 text-center">
              <div class="icon">👨‍🎓</div>
              <h4>Alumnos</h4>
              <a href="${pageContext.request.contextPath}/alumnos"
                  class="btn btn-info text-white mt-3">
                  Gestionar
              </a>
</div>
</div>

<div class="col-md-4">
             <div class="card dashboard-card p-4 text-center">
             <div class="icon">👨‍🏫</div>
             <h4>Docentes</h4>
             <a href="${pageContext.request.contextPath}/docentes"
                 class="btn btn-success mt-3">
                 Gestionar
             </a>
</div>
</div>

<div class="col-md-4">
             <div class="card dashboard-card p-4 text-center">
             <div class="icon">📝</div>
             <h4>Matrículas</h4>
             <a href="${pageContext.request.contextPath}/matriculas"
                 class="btn btn-warning text-white mt-3">
                 Ingresar
             </a>
</div>
</div>

<div class="col-md-4">
            <div class="card dashboard-card p-4 text-center">
            <div class="icon">📊</div>
            <h4>Notas</h4>
            <a href="${pageContext.request.contextPath}/notas"
                 class="btn btn-secondary mt-3">
                 Ingresar
             </a>
</div>
</div>
        
<div class="col-md-4">
   			 <div class="card dashboard-card p-4 text-center">
       		 <div class="icon">👥</div>
       		 <h4>Usuarios</h4>
        	 <a href="${pageContext.request.contextPath}/usuarios"
          		 class="btn btn-dark mt-3">
           	     Gestionar
       		 </a>

</div>
</div>
		
<div class="col-md-4">
        <div class="card dashboard-card p-4 text-center">
        <div class="icon">📊</div>
        <h4>Dashboard Ejecutivo</h4>
        <a href="${pageContext.request.contextPath}/dashboard-admin"
            class="btn btn-dark mt-3">
            Ver Estadísticas
        </a>

</div>
</div>

        <% } %>

        <% if (u.tieneRol("DOCENTE")) { %>

<div class="col-md-6">
        <div class="card dashboard-card p-4 text-center">
        <div class="icon">📊</div>
        <h4>Registro de Notas</h4>
        <a href="${pageContext.request.contextPath}/notas"
            class="btn btn-secondary mt-3">
        	Ingresar
        </a>
</div>
</div>

<div class="col-md-6">
        <div class="card dashboard-card p-4 text-center">
        <div class="icon">📚</div>
        <h4>Cursos Asignados</h4>
        <a href="${pageContext.request.contextPath}/cursos"
           class="btn btn-primary mt-3">
           Consultar
        </a>
</div>
</div>
<% } %> 

       <% if (u.tieneRol("MATRICULA")) { %>

<div class="col-md-4">
        <div class="card dashboard-card p-4 text-center">
        <div class="icon">👨‍🎓</div>
        <h4>Alumnos</h4>
        <a href="${pageContext.request.contextPath}/alumnos"
           class="btn btn-info text-white mt-3">
           Consultar
        </a>
</div>
</div>

<div class="col-md-4">
        <div class="card dashboard-card p-4 text-center">
        <div class="icon">📚</div>
        <h4>Cursos</h4>
        <a href="${pageContext.request.contextPath}/cursos"
           class="btn btn-primary mt-3">
           Consultar
        </a>
</div>
</div>

<div class="col-md-4">
        <div class="card dashboard-card p-4 text-center">
        <div class="icon">📝</div>
        <h4>Matrículas</h4>
        <a href="${pageContext.request.contextPath}/matriculas"
           class="btn btn-warning text-white mt-3">
           Ingresar
        </a>
</div>
</div>
<% } %>

      <% if (u.tieneRol("SOPORTE")) { %>

<div class="col-md-12">
   		<div class="card dashboard-card p-4 text-center">
        <div class="icon">🔐</div>
        <h4>Gestión de Usuarios</h4>
        <p>
            Registrar usuarios y asignar roles del sistema.
        </p>
        <a href="${pageContext.request.contextPath}/usuarios"
           class="btn btn-primary mt-3">
            Administrar Usuarios
        </a>

</div>
</div>
<% } %>
        
        <% if (u.tieneRol("ALUMNO")) { %>

		<div class="col-md-12">
   		<div class="card dashboard-card p-4 text-center">
        <div class="icon">🎓</div>
        <h4>Mi Resumen Académico</h4>
        <p>
            Consulta tus cursos matriculados y tus notas.
        </p>
        <a href="${pageContext.request.contextPath}/notas"
           class="btn btn-primary mt-3">
           Ver Mis Notas
        </a>

</div>
</div>
<% } %>
</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script src="${pageContext.request.contextPath}/resource/js/Dashboard.js"></script>
</body>
</html>