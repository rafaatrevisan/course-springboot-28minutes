<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<html>
    <head>
        <link href="webjars\bootstrap\5.1.3\css\bootstrap.min.css" rel="stylesheet">
        <title>List Todos page</title>
    </head>
    <body>
        <div class="container">
            <h1>Your Todos</h1>
            <div class="table-responsive">
                <table class="table table-striped table-hover table-bordered align-middle text-center">
                    <thead class="table-dark">
                    <tr>
                        <th>Id</th>
                        <th>Description</th>
                        <th>Target Date</th>
                        <th>Is Done?</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${todoList}" var="todo">
                        <tr>
                            <td>${todo.id}</td>
                            <td class="text-start">${todo.description}</td>
                            <td>${todo.targetDate}</td>
                            <td>
                                <c:choose>
                                    <c:when test="${todo.done}">
                                        <span class="badge bg-success">Yes</span>
                                    </c:when>
                                    <c:otherwise>
                                        <span class="badge bg-secondary">No</span>
                                    </c:otherwise>
                                </c:choose>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
            <a href="add-todo" class="btn btn-success">Add Todo</a>
        </div>
        <script src="webjars\bootstrap\5.1.3\js\bootstrap.min.js"></script>
        <script src="webjars\jquery\3.6.0\jquery.min.js"></script>
    </body>
</html>