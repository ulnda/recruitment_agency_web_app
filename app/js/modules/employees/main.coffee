module = angular.module('app.employees', ['app.employees.controllers'])

module.config(['$stateProvider', ($stateProvider) ->

    $stateProvider.state('employees'
      abstract: true
      url: '/employees'
      templateUrl: 'templates/employees/menu.html'
    ).state('employees.all'
      url: ''
      controller: 'EmployeesController'
      templateUrl: 'templates/employees/index.html'
    )
])
