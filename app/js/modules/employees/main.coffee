module = angular.module('app.employees', ['app.employees.controllers', 
  'app.employees.directives'])

module.config(['$stateProvider', ($stateProvider) ->

    $stateProvider.state('employees'
      abstract: true
      url: '/employees'
      templateUrl: 'templates/employees/menu.html'
    ).state('employees.all'
      url: ''
      controller: 'EmployeesController'
      templateUrl: 'templates/employees/index.html'
    ).state('employees.new'
      url: '/new'
      controller: 'NewEmployeeController'
      templateUrl: 'templates/employees/new.html'
    ).state('employees.edit'
      url: '/:id/edit'
      controller: 'EditEmployeeController'
      templateUrl: 'templates/employees/edit.html'
    )
])
