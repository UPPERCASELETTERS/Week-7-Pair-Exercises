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
		<div class="container">
			<c:forEach items="${recipes}" var="recipe">
			<div class="first">
			<ul style="list-style:none;">
				<li class="first">
					<img id="tileImage" src="img/recipe${recipe.recipeId}.jpg"
					class="recipeImage" />
				</li>
				
				<div class="second">
						
						<h4><c:out value="${recipe.name}" /></h4>
					
					
					<img id="star" stylr> <fmt:formatNumber
							value="${recipe.averageRating}" maxFractionDigits="0"
							var="formattedRating" /> <img
						src="img/${formattedRating}-star.png" class="rating" />
					</img> 
					<span id="ingredients"> <c:out
							value="${recipe.ingredients.size()}" /> ingredients	
					</span>
					
				</div>
			</ul>
			</div>
			</c:forEach>
		</div>



	</section>
</body>
</html>