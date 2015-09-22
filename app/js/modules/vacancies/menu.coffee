module = angular.module('app.vacancies', ['app.vacancies.controllers'])

module.config(['$stateProvider', ($stateProvider) ->

    $stateProvider.state('vacancies'
      abstract: true
      url: '/vacancies'
      templateUrl: 'templates/vacancies/menu.html'
    ).state('vacancies.all'
      url: ''
      controller: 'VacanciesController'
      templateUrl: 'templates/vacancies/index.html'
    ).state('vacancies.new'
      url: '/new'
      controller: 'NewVacancyController'
      templateUrl: 'templates/vacancies/new.html'
    ).state('vacancies.edit'
      url: '/:id/edit'
      controller: 'EditVacancyController'
      templateUrl: 'templates/vacancies/edit.html'
    )
])
