@JugadorCtrl = ($scope, $routeParams, $location, $q, jugadorData) ->
  $scope.data =
    jugadorData: jugadorData.data
    currentJugador:
      apodo: 'Cargando ....'

  $scope.data.jugadorId = $routeParams.jugadorId

  #jugadorData.loadJugador($scope.data.jugadorId)
  $scope.prepJugadorData = ->
    #jugador = _.findWhere(jugadorData.data.lista, { id: $scope.data.jugadorId })
    jugador = _.filter($scope.data.jugadorData.lista, (item) ->
      #console.log(item)
      item._id.$oid == $scope.data.jugadorId
    )[0]
    #console.log($scope.data.jugadorData)
    #console.log(jugadorData.data.lista)
    #console.log(jugadorData.data['lista'])
    console.log(jugador)

    $scope.data.currentJugador.apodo = jugador.apodo
    $scope.data.currentJugador.nombre = jugador.nombre
    $scope.data.currentJugador.apellidos = jugador.apellidos
    $scope.data.currentJugador.dorsal = jugador.dorsal
    console.log($scope.data.currentJugador)

  # Create promise to be resolved after posts load
  @deferred = $q.defer()
  @deferred.promise.then($scope.prepJugadorData)

  jugadorData.loadJugadores(@deferred)

  #$scope.prepJugadorData()

  console.log($routeParams)

@JugadorCtrl.$inject = ['$scope', '$routeParams', '$location', '$q', 'jugadorData']
