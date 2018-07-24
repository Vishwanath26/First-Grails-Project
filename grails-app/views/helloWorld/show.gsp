<html>
<head>
    <title>Current Projects</title>
</head>

<body>
<table border="2">
    <tr>
        <th>Name </th>
        <th>Description </th>
        <th>DueDate </th>
    </tr>
    <g:each in="${Project}" var = "thisProject">
    <tr>
        <td>${thisProject.name} </td>
        <td>${thisProject.Description} </td>
        <td>${thisProject.dueDate} </td>
    </tr>
    </g:each>
</table>
<g:actionSubmit value="Some update label" action="Update" />
<g:actionSubmit value="Delete" />
</body>
</html>