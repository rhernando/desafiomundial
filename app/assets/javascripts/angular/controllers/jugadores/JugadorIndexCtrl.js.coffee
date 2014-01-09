@JugadorIndexCtrl = ($scope, $location, $http, jugadorData) ->
  $scope.data = jugadorData.data

  jugadorData.loadJugadores()

  $scope.viewJugador = (jugadorId) ->
    $location.url('/jugador/' + jugadorId)

@JugadorIndexCtrl.$inject = ['$scope', '$location', '$http', 'jugadorData']