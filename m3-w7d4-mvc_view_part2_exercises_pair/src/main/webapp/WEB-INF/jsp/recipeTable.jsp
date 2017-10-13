<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ include file="common/header.jspf" %>
       <!-- Use the request attribute "recipes" (List<Recipe>) -->
         <table id="recipeTable">
         	<tr>
         		<th>&nbsp;</th>
         		<c:forEach items="${recipes}" var="recipe">
         		<c:url var="recipeLink" value="recipeDetails?recipeId=${recipe.recipeId }"/>
         		<td><a href="${recipeLink}"><img src="img/recipe${recipe.recipeId}.jpg" class="recipeImage"/></a></td>
         		</c:forEach>
         	</tr>
			<tr class="gray">
				<th>Name</th>
				<c:forEach items="${recipes}" var="recipe">
					<td><a href="${recipeLink}"><c:out value="${recipe.name}" /></a></td>
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
      
      <%@ include file="common/footer.jspf" %>

 