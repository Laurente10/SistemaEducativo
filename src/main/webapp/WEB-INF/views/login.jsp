<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<title>Sistema Educativo - Iniciar Sesión</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/login.css">
</head>
<body>
			<div class="card login-card">
    		<div class="row g-0">        
        	<div class="col-md-5 left-panel">

    <div class="icon">
    <i class="bi bi-mortarboard-fill"></i>
	</div>

	<h2>SISTEMA EDUCATIVO</h2>
	
	<!-- Línea decorativa -->
	<div class="title-divider">
	    <div class="divider-line"></div>
	    <div class="divider-dot"></div>
	    <div class="divider-line"></div>
	</div>
	
	<p class="subtitle">Control de Alumnos y Notas</p>
	
	<p class="description">
	    Gestión académica eficiente y segura
	</p>
<img
    src="${pageContext.request.contextPath}/resource/img/img_login.png"
    class="login-background"
    alt="Sistema Educativo">

    <!-- NUEVA SECCIÓN -->
			    <div class="row features text-center mt-4">
			
			    <div class="col-4 border-end">
			         <i class="bi bi-shield-check feature-icon"></i>
			         <h6 class="mt-2">Seguro</h6>
			         <small>Tus datos protegidos</small>
			    </div>
			
			    <div class="col-4 border-end">
			         <i class="bi bi-people-fill feature-icon"></i>
			         <h6 class="mt-2">Confiable</h6>
			         <small>Información siempre disponible</small>
			    </div>
			
			    <div class="col-4">
			         <i class="bi bi-graph-up-arrow feature-icon"></i>
			         <h6 class="mt-2">Eficiente</h6>
			         <small>Gestión rápida y ordenada</small>
			    </div>
			
				</div>

</div>
			<div class="col-md-7 right-panel">

    <h1>¡BIENVENIDO!</h1>

    <div class="welcome-line"></div>

    <p class="welcome-text">
        Ingresa tus credenciales para continuar
    </p>

    <c:if test="${not empty error}">
        <div class="alert alert-danger alert-dismissible fade show" role="alert">
            <i class="bi bi-exclamation-triangle-fill"></i>
            ${error}
            <button type="button" class="btn-close"
                    data-bs-dismiss="alert"></button>
        </div>
    </c:if>

    <form action="${pageContext.request.contextPath}/login" method="POST">

        <div class="mb-4">

            <label class="form-label fw-semibold">
                Usuario
            </label>

            <div class="input-group login-input">

                <span class="input-group-text">
                    <i class="bi bi-person"></i>
                </span>

                <input
                        type="text"
                        class="form-control"
                        name="username"
                        id="username"
                        autocomplete="username"
                        autofocus
                        placeholder="Ingresa tu usuario"
                        required>

            </div>

        </div>

        <div class="mb-2">

            <label class="form-label fw-semibold">
                Contraseña
            </label>

            <div class="input-group login-input">

                <span class="input-group-text">
                    <i class="bi bi-lock"></i>
                </span>

                <input
                        type="password"
                        class="form-control"
                        id="password"
                        name="password"
                        autocomplete="current-password"
                        placeholder="Ingresa tu contraseña"
                        required>

                <button
                        class="btn btn-outline-secondary"
                        type="button"
                        onclick="mostrarPassword()">

                    <i id="iconoPassword"
                       class="bi bi-eye"></i>

                </button>

            </div>

        </div>

        <div class="text-end mb-4">

            <a href="#"
               class="forgot-link">

                ¿Olvidaste tu contraseña?

            </a>

        </div>

        <button
                type="submit"
                class="btn btn-primary btn-login w-100">

            <i class="bi bi-box-arrow-in-right me-2"></i>

            Ingresar al Sistema

        </button>

    </form>

    <div class="divider-login">
        <span>o</span>
    </div>

    <button class="btn btn-outline-primary w-100 institution-btn">

        <i class="bi bi-shield-check me-2"></i>

        Acceso con código institucional

    </button>

    <div class="secure-box">

        <i class="bi bi-shield-check"></i>

        <div>

            <strong>

                Acceso seguro y autorizado

            </strong>

            <p>

                Tus datos están protegidos con tecnología de cifrado avanzada.

            </p>

        </div>

    </div>

</div>
</div>
</div>
<script src="${pageContext.request.contextPath}/resource/js/Login.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>