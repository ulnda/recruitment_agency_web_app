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
    )
])
