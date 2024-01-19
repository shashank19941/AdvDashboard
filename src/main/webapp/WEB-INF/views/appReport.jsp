<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/datepicker/jquery.min.js"></script>
<script type="text/javascript" src="js/datepicker/moment.min.js"></script>
<script type="text/javascript"
	src="js/datepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" href="css/daterangepicker.css">
<link rel="stylesheet" href="css/appReport.css">
</head>
<body>
	<div>
		<a href="getDataByAppReport">Get Data By Application Wise</a>
	</div>
	<hr>
	</br>

	<div class="row">
		<form action="products" method="post">
			<div class="container">
				<p>Please fill in this form to create an account.</p>

				<label for="cars">Choose a Application Id:</label> <select name="cars"
					id="cars">
					<option value="volvo">Volvo</option>
					<option value="saab">Saab</option>
					<option value="mercedes">Mercedes</option>
					<option value="audi">Audi</option>
				</select>

				<div id="demo">
					<label><b>Select Interval Date:</b></label> <input type="text" />
				</div>
			</div>
			<button type="submit" class="registerbtn">Register</button>
		</form>
	</div>
 <h1>Product List</h1>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Price</th>
        </tr>
        <c:forEach items="${products.content}" var="product">
            <tr>
                <td>${product.id}</td>
                <td>${product.name}</td>
                <td>${product.price}</td>
            </tr>
        </c:forEach>
    </table>
    <div class="pagination">
        <c:if test="${not empty products}">
            <ul>
                <li class="page-item" aria-disabled="${not products.hasPrevious()}">
                    <a class="page-link" href="?page=1">First</a>
                </li>
                <c:forEach begin="${products.number - 2}" end="${products.number + 2}"
                            var="pageNumber">
                    <li class="page-item" aria-disabled="${not products.hasPrevious()}">
                        <c:choose>
                            <c:when test="${products.number eq pageNumber}">
                                <span class="page-link">${pageNumber}</span>
                            </c:when>
                            <c:otherwise>
                                <a class="page-link"
                                   href="?page=${pageNumber}">${pageNumber}</a>
                            </c:otherwise>
                        </c:choose>
                    </li>
                </c:forEach>
                <li class="page-item" aria-disabled="${not products.hasNext()}">
                    <a class="page-link" href="?page=${products.totalPages}">Last</a>
                </li>
            </ul>
        </c:if>
    </div>
</body>
<script>
	$(function() {
		// Initialize the date range picker without default start or end dates
		$('#demo input').daterangepicker(
				{
					"showDropdowns" : true,
					"autoApply" : true,
					 "minDate": moment("2023-05-03"), 
					"alwaysShowCalendars" : true,
					"locale" : {
						"format" : "DD/MM/YYYY" // Set the date format
					}
				},
				function(start, end, label) {
					// Callback function to handle date range selection
					console.log('New date range selected: '
							+ start.format('YYYY-MM-DD') + ' to '
							+ end.format('YYYY-MM-DD') + ' (predefined range: '
							+ label + ')');
					// Update the display in the reportrange element

				});
	});
</script>
</html>
