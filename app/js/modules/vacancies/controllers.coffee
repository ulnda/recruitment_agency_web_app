angular.module('app.vacancies.controllers', []).controller('VacanciesController', ['$scope', 
  '$state', ($scope, $state) ->

    console.log('vacancies')
]).controller('NewVacancyController', ['$scope', '$state', ($scope, $state) ->

    tomorrow = new Date()
    tomorrow.setDate(tomorrow.getDate() + 1)

    $scope.vacancy = { end_date: tomorrow }

    $scope.dateOptions = { formatYear: 'yy', startingDay: 1 }
    $scope.format = 'dd-MMMM-yyyy'

    $scope.open = ($event) ->
      $event.preventDefault()
      $event.stopPropagation()
      $scope.end_date_opened = true

    $scope.createVacancy = ->
      console.log($scope.vacancy)
]).controller('EditVacancyController', ['$scope', '$state', ($scope, $state) ->
])