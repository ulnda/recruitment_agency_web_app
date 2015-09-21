angular.module('app.controllers', []).controller('NavController', ['$scope', 
  '$state', ($scope, $state) ->

    $scope.getState = (state) ->
      if $state.includes(state) then "active" else ""
])