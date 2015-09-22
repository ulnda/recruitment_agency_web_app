angular.module('app.employees.controllers', []).controller('EmployeesController', 
  ['$scope', '$state', ($scope, $state) ->

    $scope.employees = [{ name: 'Иванов Иван Иванович' }]
]).controller('NewEmployeeController', ['$scope', '$state', ($scope, $state) ->

    $scope.employee = { job_search: false }

    $scope.createEmployee = ->
      console.log($scope.employee)
]).controller('EditEmployeeController', ['$scope', '$state', ($scope, $state) ->

    $scope.employee = { name: 'Иванов Иван Иванович', contact_info: '+79020004430', salary: 1000, job_search: true }

    $scope.createEmployee = ->
      console.log($scope.employee)
])