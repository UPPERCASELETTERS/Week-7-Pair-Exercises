<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>

<html>
<head>
    <meta name="viewport" content="width=device-width" />
    <title>Recipe Table View</title>
    <link rel="stylesheet" href="css/site.css" />
</head>
<body id="body">
    <header>
        <h1>MVC Exercises - Views Part 2: Models</h1>        
    </header>
    <nav>
        <ul>
            <li><a href="recipeTiles">Tile Layout</a></li>
            <li><a href="recipeTable">Table Layout</a></li>
        </ul>
        
    </nav>
    <section id="main-content">
		<h1>Recipes</h1>
       <!-- Use the request attribute "recipes" (List<Recipe>) -->
         <table id="recipeTable">
         	<tr>
         		<th>&nbsp;</th>
         		<c:forEach items="${recipes}" var="recipe">
         		<td><img src="img/recipe${recipe.recipeId}.jpg" class="recipeImage"/></td>
         		</c:forEach>
         	</tr>
			<tr class="gray">
				<th>Name</th>
				<c:forEach items="${recipes}" var="recipe">
					<td><c:out value="${recipe.name}" /></td>
				</c:forEach>
			</tr>
			<tr>
				<th>Type</th>
				<c:forEach items="${recipes}" var="recipe">
					<td><c:out value="${recipe.recipeType}" /></td>
				</c:forEach>
			</tr>
			<tr class="gray">
				<th>Cook Time</th>
				<c:forEach items="${recipes}" var="recipe">
					<td><c:out value="${recipe.cookTimeInMinutes}" /> min</td>
				</c:forEach>
			</tr>
			<tr>
				<th>Ingredients</th>
				<c:forEach items="${recipes}" var="recipe">
					<td><c:out value="${recipe.ingredients.size()}" /> ingredients</td>
				</c:forEach>
			</tr>
			<tr class="gray">
								<th>Rating</th>
				<c:forEach items="${recipes}" var="recipe">
					<td>
						<fmt:formatNumber value="${recipe.averageRating}" maxFractionDigits="0" var="formattedRating"/>
						<img src="img/${formattedRating}-star.png" class="rating"/>
					</td>
				</c:forEach>
			</tr>
		</table>
      

    </section>
</body>
</html>