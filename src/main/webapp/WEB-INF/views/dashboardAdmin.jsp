<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Dashboard Administrativo</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/dashboardAdmin.css">
</head>
<body>

<div class="container mt-4">
<div class="d-flex justify-content-between align-items-center mb-4">

        <h2 class="text-primary mb-0">
            📊 Dashboard Administrativo
        </h2>

        <a href="${pageContext.request.contextPath}/dashboard"
           class="btn btn-secondary">
            ← Volver al Menú
        </a>
</div>
<div class="row">       
<div class="col-md-6">
<div class="row">
                <div class="col-md-6 mb-2">
                      <div class="card card-stat card-alumnos text-center p-3">
                      <div class="icon-circle icon-alumnos">👨‍🎓</div>
                      <h3 class="text-primary fw-bold">${totalAlumnos}</h3>
                      <p>Total Alumnos</p>
                </div>
                </div>
                <div class="col-md-6 mb-2">
                      <div class="card card-stat card-docentes text-center p-3">
                      <div class="icon-circle icon-docentes">👨‍🏫</div>
                      <h3 class="text-success fw-bold">${totalDocentes}</h3>
                      <p>Total Docentes</p>
                </div>
                </div>
                <div class="col-md-6 mb-2">
                       <div class="card card-stat card-cursos text-center p-3">
                       <div class="icon-circle icon-cursos">📚</div>
                       <h3 class="text-warning fw-bold">${totalCursos}</h3>
                      <p>Total Cursos</p>
                </div>
                </div>
                <div class="col-md-6 mb-2">
                      <div class="card card-stat card-matriculas text-center p-3">
                      <div class="icon-circle icon-matriculas">📝</div>
                      <h3 class="text-danger fw-bold">${totalMatriculas}</h3>
                      <p>Total Matrículas</p>
                </div>
                </div>
                <div class="col-md-6 mb-2">
                    <div class="card card-stat card-usuarios text-center p-3">
                    <div class="icon-circle icon-usuarios">👥</div>
                    <h3 style="color:#6f42c1;" class="fw-bold">${totalUsuarios}</h3>
                    <p>Total Usuarios</p>
                </div>
</div>
</div>
</div>
        <div class="col-md-6">
        <div class="card card-stat p-3 h-100">
    	<h4 class="mb-4">
        	📊 Aprobados vs Desaprobados
		</h4>
   		<div class="text-center mt-5">
    	<canvas id="graficoNotas"
            style="max-height:250px;">
    	</canvas>
</div>
<div class="d-flex justify-content-center gap-5 mt-4 text-center">
<div>
        <h5 class="text-success fw-bold">
            ● Aprobados
        </h5>
        <h3 class="fw-bold">
            ${aprobados}
        </h3>
</div>
<div>
        <h5 class="text-danger fw-bold">
            ● Desaprobados
        </h5>
        <h3 class="fw-bold">
            ${desaprobados}
        </h3>
</div>
</div>
</div>
</div>   
<div class="row mt-4">
<div class="col-12">
            <div class="card card-stat p-4">
            <h4 class="mb-3">
                  📋 Últimas Matrículas Registradas
       		</h4>
            <table class="table table-hover">
            <thead class="table-dark">
                        <tr>
                            <th>ID</th>
                            <th>Alumno</th>
                            <th>Curso</th>
                            <th>Fecha</th>
                            <th>Ciclo</th>
                            <th>Estado</th>
                        </tr>
</thead>
<tbody>

<c:forEach items="${ultimasMatriculas}" var="m">
            <tr>
            <td>${m.idMatricula}</td>
            <td>
                   ${m.alumno.apellido},
                   ${m.alumno.nombre}
            </td>
            <td>
                   ${m.curso.nombreCurso}
            </td>
            <td>
                   ${m.fechaMatricula}
            </td>
            <td>
                   ${m.cicloAcademico}
            </td>
 			<td>
            <span class="badge bg-success">
                   ${m.estado}
      		</span>
			</td>
</tr>
</c:forEach>
</tbody>
</table>
</div>
</div>
</div>
</div>
</div>
<script>
    	const aprobados = ${aprobados};
    	const desaprobados = ${desaprobados};
</script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script src="${pageContext.request.contextPath}/resource/js/DashboardAdmin.js"></script>
</body>
</html>