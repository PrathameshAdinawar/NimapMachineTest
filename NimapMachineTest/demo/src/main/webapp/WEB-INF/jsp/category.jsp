<!-- src/main/webapp/WEB-INF/jsp/category.jsp -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Categories</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h1>Categories</h1>

        <!-- Display the list of categories -->
        <table class="table">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Name</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="category" items="${categories.content}">
                    <tr>
                        <td>${category.id}</td>
                        <td>${category.name}</td>
                        <td>
                            <a href="/api/categories/${category.id}" class="btn btn-info">View</a>
                            <a href="/api/categories/${category.id}/edit" class="btn btn-warning">Edit</a>
                            <a href="/api/categories/${category.id}/delete" class="btn btn-danger">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <!-- Pagination -->
        <div class="pagination">
            <c:if test="${categories.hasPrevious}">
                <a href="/api/categories?page=${categories.number - 1}" class="btn btn-primary">Previous</a>
            </c:if>
            <c:if test="${categories.hasNext}">
                <a href="/api/categories?page=${categories.number + 1}" class="btn btn-primary">Next</a>
            </c:if>
        </div>
    </div>
</body>
</html>
