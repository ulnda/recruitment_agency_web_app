module = angular.module('app', ['ui.bootstrap', 'ui.router', 'app.controllers', 
  'app.employees', 'app.vacancies'])

module.config(['$locationProvider', '$stateProvider', '$urlRouterProvider',
  ($locationProvider, $stateProvider, $urlRouterProvider) ->

    $stateProvider.state('home'
      url: ''
      templateUrl: 'templates/home.html'
    )

    $urlRouterProvider.otherwise ($injector) ->
      $state = $injector.get('$state')
      $state.go('home')

    $locationProvider.html5Mode(true)
])
