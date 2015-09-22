angular.module('app.vacancies.controllers', []).controller('VacanciesController', ['$scope', 
  '$state', '$modal', ($scope, $state, $modal) ->

    $scope.vacancies = [{ title: 'Лучшая работа в мире' }]

    $scope.deleteVacancy = (vacancy) ->
      modalInstance = $modal.open
        templateUrl: 'templates/deleting_modal.html'
        controller: 'DeletingSubjectModalController'
        size: 'sm'
        resolve:
          subject: ->
            vacancy
          title: ->
            'вакансии'
          body: ->
            "вакансию '#{vacancy.title}'"
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
  $scope.vacancy = { title: 'Лучшая работа в мире', contact_info: '+79020004430', salary: 1000, end_date: new Date() }

  $scope.dateOptions = { formatYear: 'yy', startingDay: 1 }
  $scope.format = 'dd-MMMM-yyyy'

  $scope.open = ($event) ->
    $event.preventDefault()
    $event.stopPropagation()
    $scope.end_date_opened = true

  $scope.updateVacancy = ->
    console.log($scope.vacancy)
])