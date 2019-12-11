<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<title>Modifica la pelicula</title>
</head>
<body>

	<div style="text-align:center">

		<h3>Elije la pelicula a modificar</h3>
		
		<br>

		<form action="updatePeliculas" method="POST">
			
			<select class="form-control" name="tituloPeli" required>
			
				<option selected style="color:gray">PELICULAS</option>

				<c:forEach items="${listaPelis}" var="item">

					<option>${item.titulo}</option>

				</c:forEach>
				
				<c:forEach items="${model.listaPelis}" var="item">

					<option>${item.titulo}</option>

				</c:forEach>

			</select>
			
			<p style="color:red">${model.message}</p>
			
			<br>
			<br>
	
			<div class="form-group">
				
				<label>Director</label>
				<input class="form-control" type="text" name="director" placeholder="Director" required>
				<label>Titulo</label>
				<input class="form-control" type="text" name="titulo" placeholder="Titulo" required>
				<label>Fecha</label>
				<input class="form-control" type="text" name="fecha" placeholder="YYYY-MM-DD" required>
				<small class="form-text text-muted">Formato de fecha YYYY-MM-DD</small>
				<br>
				<input type="submit" class="btn btn-success" value="Modificar">
			</div>

		</form>

	</div>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</body>
</html>