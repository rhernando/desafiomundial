@CreateJugadorCtrl = ($scope, $location, jugadorData) ->

  $scope.data = jugadorData.data
  jugadorData.loadJugadores(null)

  $scope.formJugador =
    apodo: ''
    nombre: ''
    apellidos: ''
    dorsal: ''

  $scope.createPost = ->
    jugadorData.createJugador($scope.formJugador)

@CreateJugadorCtrl.$inject = ['$scope', '$location', 'jugadorData']