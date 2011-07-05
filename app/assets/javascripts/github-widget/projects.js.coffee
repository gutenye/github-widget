window.GithubWidget = SC.Application.create()

GithubWidget.projectsController = SC.ArrayProxy.create
	content: []

user = gh.user('gutenye')

user.allRepos (data) ->
	GithubWidget.projectsController.set 'content', data.repositories

GithubWidget.ProjectView = SC.View.extend
	public: ( ->
		! this.get('private')
	).property('private')
