package firstgrailsapp

class HelloWorldController {

    def index = {
        redirect(action: list)
    }

    def edit = {
        MyProject project = MyProject.get(params.id)
        [Project: project]
    }

    def create = {}

    def list = {
        List<MyProject> allProjects = MyProject.list()
        [allProjects: allProjects]
    }

    def update = {
        MyProject project = MyProject.get(params.id)
        project.properties = params
        project.save flush: true, failOnError: true
        redirect(action: list)
    }

    def save = {
        MyProject project = new MyProject(params)
        project.save flush: true, failOnError: true
        redirect(action: list)
    }

    def delete = {
        MyProject project = MyProject.get(params.id)
        project.delete flush: true, failOnError: true
        redirect(action: list)
    }

}

//  ${allProjects.Name}