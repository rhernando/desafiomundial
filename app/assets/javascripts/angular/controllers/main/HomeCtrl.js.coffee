@HomeCtrl = ($scope, $location) ->
  $scope.title = "Desafio Mundial"

  $scope.indexJugadores = ->
    $location.url('/jugadores')

@HomeCtrl.$inject = ['$scope', '$location']