angular.module('app.employees.controllers', []).controller('EmployeesController', 
  ['$scope', '$state', ($scope, $state) ->

    console.log('employees')
]).controller('NewEmployeeController', ['$scope', '$state', ($scope, $state) ->

    $scope.employee = { job_search: false }

    $scope.createEmployee = ->
      console.log($scope.employee)
])