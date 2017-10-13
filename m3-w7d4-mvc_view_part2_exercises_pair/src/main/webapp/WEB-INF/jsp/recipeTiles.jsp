<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>

<html>
<head>
    <meta name="viewport" content="width=device-width" />
    <title>Recipe List View</title>
    <link rel="stylesheet" href="css/site.css" />
</head>
<body>
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

       <!-- Use the request attribute "recipes" (List<Recipe>) -->
		<h1>Recipes</h1>
		<div class="flexContainer">

		<c:forEach items="${recipes}" var="recipe">
				<div class="flexContainerTile">
				
					<img src="img/recipe${recipe.recipeId}.jpg" class="tileImage" />
					<div class="tanSpace">
					<div class="flexContainerName">
						<h4>
							<c:out value="${recipe.name}" />
						</h4>
					</div>
						<div class="flexContainerText">
							<fmt:formatNumber value="${recipe.averageRating}"
								maxFractionDigits="0" var="formattedRating" />
							<img src="img/${formattedRating}-star.png" class="rating" />
							<c:out value="${recipe.ingredients.size()}" />
							ingredients
						</div>
					</div>
				</div>
		</c:forEach>
		</div>



	</section>
</body>
</html>