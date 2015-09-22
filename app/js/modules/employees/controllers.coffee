angular.module('app.employees.controllers', []).controller('EmployeesController', 
  ['$scope', '$state', '$modal', ($scope, $state, $modal) ->

    $scope.employees = [{ name: 'Иванов Иван Иванович' }]

    $scope.deleteEmployee = (employee) ->
      modalInstance = $modal.open
        templateUrl: 'templates/deleting_modal.html'
        controller: 'DeletingSubjectModalController'
        size: 'sm'
        resolve:
          subject: ->
            employee 
          title: ->
            'работника'
          body: ->
            "работника '#{employee.name}'"
]).controller('NewEmployeeController', ['$scope', '$state', ($scope, $state) ->

    $scope.employee = { job_search: false }

    $scope.createEmployee = ->
      console.log($scope.employee)
]).controller('EditEmployeeController', ['$scope', '$state', ($scope, $state) ->

    $scope.employee = { name: 'Иванов Иван Иванович', contact_info: '+79020004430', salary: 1000, job_search: true }

    $scope.createEmployee = ->
      console.log($scope.employee)
])