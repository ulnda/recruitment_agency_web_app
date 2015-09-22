angular.module('app.controllers', []).controller('NavController', ['$scope', 
  '$state', ($scope, $state) ->

    $scope.getState = (state) ->
      if $state.includes(state) then "active" else ""
]).controller('DeletingSubjectModalController', ['$modalInstance', '$scope', '$state', 'subject', 'title', 'body', ($modalInstance, $scope, $state, subject, title, body) ->
  $scope.title = title
  $scope.body = body

  $scope.ok = ->
    subject.$delete { id: subject.id }, ->
      $modalInstance.dismiss('ok')
      $state.go($state.current, {}, { reload: true })

  $scope.cancel = ->
    $modalInstance.dismiss('cancel')
])