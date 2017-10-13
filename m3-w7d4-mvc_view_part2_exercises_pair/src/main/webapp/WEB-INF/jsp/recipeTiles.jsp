<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ include file="common/header.jspf" %>
       <!-- Use the request attribute "recipes" (List<Recipe>) -->

		<div class="flexContainer">

		<c:forEach items="${recipes}" var="recipe">
				<div class="flexContainerTile">
				<c:url var="recipeLink" value="recipeDetails?recipeId=${recipe.recipeId }"/>
					<a href="${recipeLink}"><img src="img/recipe${recipe.recipeId}.jpg" class="recipeImage"/></a>
					<div class="tanSpace">
					<div class="flexContainerName">
						<h4>
							<a href="${recipeLink}"><c:out value="${recipe.name}" /></a>
						</h4>
					</div>
						<div class="flexContainerText">
							<fmt:formatNumber value="${recipe.averageRating}"
								maxFractionDigits="0" var="formattedRating" />
							<img id="star" src="img/${formattedRating}-star.png" class="rating" />
							<c:out value="${recipe.ingredients.size()}" />
							ingredients
						</div>
					</div>
				</div>
		</c:forEach>
	</div>
	
<%@ include file="common/footer.jspf" %>

