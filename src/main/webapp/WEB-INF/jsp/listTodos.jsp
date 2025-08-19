<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<html>
    <head>
        <title>List Todos page</title>
    </head>
    <body>
        <div>Welcome to the list Todos page, ${name}</div>
        <div>Your Todos are</div>

        <table>
            <thead>
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
                        <td>${todo.description}</td>
                        <td>${todo.targetDate}</td>
                        <td>${todo.isDone}</td>
                    </tr>
                </c:forEach>
            </tbody<
        </table
    </body>
</html>