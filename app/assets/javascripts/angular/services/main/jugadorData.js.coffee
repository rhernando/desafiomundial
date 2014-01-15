angular.module('desafiomundial').factory('jugadorData', ['$http', ($http) ->
  jugadorData =
    data:
      lista: []
    isLoaded: false
    jugadorLoaded: 0
  console.log("Initialized jugadorData.")


  jugadorData.loadJugadores = (deferred) ->
    if !jugadorData.isLoaded
      $http.get('./jugadores.json').success((data) ->
        jugadorData.data.lista = data
        jugadorData.isLoaded = true
        console.log('Successfully loaded .')
        if deferred
          deferred.resolve()
      ).error(->
        console.error('Failed to load .')
        if deferred
          deferred.reject('Failed to load posts.')
      )

  jugadorData.loadJugador = (idjugador) ->
    if jugadorData.jugadorLoaded != idjugador
      console.log('./jugadores/' + idjugador + '.json')
      $http.get('./jugadores/' + idjugador + '.json').success((data) ->
        jugadorData.data.jugador = data
        jugadorData.jugadorLoaded = idjugador
        console.log('Successfully loaded show.')
      ).error(->
        console.error('Failed to load .')
      )

  jugadorData.createJugador = (newJugador) ->
    data =
      new_jugador:
        apodo: newJugador.apodo
        nombre: newJugador.nombre
        apellidos: newJugador.apellidos
        dorsal: newJugador.dorsal
    $http.post('./jugadores.json', data).success((data) ->
      jugadorData.data.lista.push(data)
    ).error(->
      console.error('Failed to create new jugador.')
    )
    return true

  return jugadorData

])