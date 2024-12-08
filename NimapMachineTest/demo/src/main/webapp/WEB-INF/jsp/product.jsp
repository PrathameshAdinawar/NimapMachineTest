<!-- src/main/webapp/WEB-INF/jsp/product.jsp -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Products</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h1>Products</h1>

        <!-- Display the list of products -->
        <table class="table">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Name</th>
                    <th>Category</th>
                    <th>Price</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="product" items="${products.content}">
                    <tr>
                        <td>${product.id}</td>
                        <td>${product.name}</td>
                        <td>${product.category.name}</td> <!-- Displaying category name -->
                        <td>${product.price}</td>
                        <td>
                            <a href="/api/products/${product.id}" class="btn btn-info">View</a>
                            <a href="/api/products/${product.id}/edit" class="btn btn-warning">Edit</a>
                            <a href="/api/products/${product.id}/delete" class="btn btn-danger">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <!-- Pagination -->
        <div class="pagination">
            <c:if test="${products.hasPrevious}">
                <a href="/api/products?page=${products.number - 1}" class="btn btn-primary">Previous</a>
            </c:if>
            <c:if test="${products.hasNext}">
                <a href="/api/products?page=${products.number + 1}" class="btn btn-primary">Next</a>
            </c:if>
        </div>
    </div>
</body>
</html>
