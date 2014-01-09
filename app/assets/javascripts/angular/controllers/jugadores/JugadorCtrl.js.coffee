@JugadorCtrl = ($scope, $routeParams, $location, jugadorData) ->
  $scope.data = jugadorData.data

  $scope.data.jugadorId = $routeParams.jugadorId
  jugadorData.loadJugador($scope.data.jugadorId)


  console.log($routeParams)
