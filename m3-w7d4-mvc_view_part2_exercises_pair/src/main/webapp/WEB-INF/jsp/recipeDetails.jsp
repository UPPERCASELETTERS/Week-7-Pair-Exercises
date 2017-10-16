 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="pageTitle" value="${recipe.name} - Details"/>
<%@ include file="common/header.jspf" %>
<div class="masterContainer">

	<div class="imageDetails">
		<c:url var="picture" value="/img/recipe${recipe.recipeId}.jpg"/>
      <img src="${picture}" alt="A tasty recipe"/>
    </div> 
    
    <div class="textDetails">
    <h1><c:out value="${recipe.name}"/></h1>
	    <table>
	    	<tr>
	    		<th>Recipe Type: <th>
	    			<td><c:out value="${recipe.recipeType }"/></td>
	    	</tr>
	    	<tr>
	    		<th>Cook Time: <th>
	    			<td><c:out value="${recipe.cookTimeInMinutes }"/></td>
	    	</tr>
	    	<tr>
	    		<th>Rating <th>
	    			<td><c:out value="${recipe.averageRating}"/> out of 5</td>
	    	</tr>
	    </table>
	    <h3>Description</h3>
	      <div id="decription"><c:out value="${recipe.description}"/></div>
     </div>
     
</div>
  <h3>Ingredients</h3>
  <c:forEach var="ingredient" items="${recipe.ingredients}">
  <ul style="list-style:none;">
  		<li>
    			<c:out value="${ingredient.quantity}"/><c:out value="${ingredient.name}"/>
    	</li>						
  </ul>	
  </c:forEach>
    
     <h3>Directions</h3>
  <c:forEach var="step" items="${recipe.preparationSteps}">
  <ul style="list-style:none;">
  		<li>
    			<c:out value="${step}"/>
    	</li>						
  </ul>	
  </c:forEach>
      
   
      
      
      

  <%@ include file="common/footer.jspf" %>

