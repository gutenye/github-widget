window.GithubWidget = SC.Application.create()

GithubWidget.projectsController = SC.ArrayProxy.create
	content: []

window.github_username ?= 'gutenye'

user = gh.user(window.github_username)

user.allRepos (data) ->
	GithubWidget.projectsController.set 'content', data.repositories

GithubWidget.ProjectView = SC.View.extend
	public: ( ->
		! this.get('private')
	).property('private')
