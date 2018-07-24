<html>
<head>
    <title>List Projects</title>
</head>
<body>
<h1>List Projects</h1>
<g:link controller="writeExcelFile">
<button>Convert to Excel</button>
</g:link>
<table border="2">
    <tr>
        <th>Name</th>
        <th>Description</th>
        <th>Author</th>
    </tr>
<g:each in="${allProjects}" var="Project">
    <tr>
    <td>${Project.Name}</td>
        <td>${Project.Description}</td>
        <td>${Project.Author}
    <g:link action="edit"
            id="${Project.id}">Edit</g:link><br />
    <g:link action="delete"
            id="${Project.id}">Delete</g:link><br /><br />
        </td>
    </tr>
</g:each>
<g:link action="create">Add new Project</g:link>
</table>
</body>
</html>