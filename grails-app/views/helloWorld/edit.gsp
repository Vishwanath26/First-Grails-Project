<html>
<head>
    <title>Edit Project</title>
</head>
<body>
<h1>Edit Project</h1>
<g:form action="update" id="${Project.id}">
    Name: <g:textField name="name"
                       value="${Project.Name}"/><br />
    Description: <g:textField name="Description"
                               value="${Project.Description}"/><br />
    Author: <g:textField name="Author"
                               value="${Project.Author}"/><br />
    <g:actionSubmit value="Update" />
</g:form>
</body>
</html>