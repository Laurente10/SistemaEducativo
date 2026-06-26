<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<title>Sistema Educativo - Iniciar Sesión</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/login.css">
</head>
<body>
			<div class="card login-card">
    		<div class="row g-0">        
        	<div class="col-md-5 left-panel">
            <div class="icon">🎓</div>
            <h2>Sistema Educativo</h2>
            <hr>
            <p>Control de Alumnos y Notas</p>
            <div class="mt-4">
            <img src="https://cdn-icons-png.flaticon.com/512/3135/3135755.png"
                  width="180"
                  class="img-fluid">
</div>
</div>       
			<div class="col-md-7 right-panel">
            <h1>Bienvenido</h1>
            <p>Ingresa tus credenciales para continuar</p>
			<form action="${pageContext.request.contextPath}/login" method="POST">
              <div class="mb-3">
              <label class="form-label">Usuario</label>
              <input type="text"
                    class="form-control"
                    id="username"
                    name="username"
                    placeholder="Ej: admin"
                    required>
</div>
             <div class="mb-3">
             <label class="form-label">Contraseña</label>
             <input type="password"
                    class="form-control"
                    id="password"
                    name="password"
                    placeholder="••••••••"
                    required>
</div>
            <button type="submit" class="btn btn-primary btn-login w-100">
                 Ingresar al Sistema
            </button>
</form>
            <div class="footer-text">
                🔒 Acceso seguro
            </div>
</div>
</div>
</div>
</body>
</html>