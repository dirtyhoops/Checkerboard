<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset=UTF-8">
	<title>Checkerboard</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="styles.css">
</head>
<body>
	<div class="container">
		<% int width = 0, height = 0;
		if(request.getParameter("width") != null){
			width = Integer.parseInt(request.getParameter("width"));	
		}

		if(request.getParameter("height") != null){
			height = Integer.parseInt(request.getParameter("height"));
		} %>
		
		<h1>Checkerboard: <%=width %>W  X  <%=height %>H</h1>
		
		<div class="board">
			<% for(int i = 0; i < height; i++) {
				if(i%2 == 0) { %>
					<div class="evenrow">
						<% for(int j = 0; j < width; j++) {
							if(j%2 == 0) { %>
							<div class="evencol"></div>
						<% } else { %>
							<div class="oddcol"></div>
						<% } %>	
					<% } %>	
					</div>
				<% } else { %>
					<div class="oddrow">
					<% for(int j = 0; j < width; j++) {
						if(j%2 == 0) { %>
						<div class="evencol"></div>
					<% } else { %>
						<div class="oddcol"></div>
					<% } %>	
				<% } %>	
				</div>
			<% } %>
		<% } %>
		</div>	<!--end of board class--> 
	
	
	
	
	
	
	
	
	</div>
</body>
</html>