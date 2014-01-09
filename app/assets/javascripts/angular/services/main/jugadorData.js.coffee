angular.module('desafiomundial').factory('jugadorData', ['$http', ($http) ->
  jugadorData =
    data:
      lista: []
    isLoaded: false
    jugadorLoaded: 0
  console.log("Initialized jugadorData.")


  jugadorData.loadJugadores = ->
    if !jugadorData.isLoaded
      $http.get('./jugadores.json').success((data) ->
        jugadorData.data.lista = data
        jugadorData.isLoaded = true
        console.log('Successfully loaded .')
      ).error(->
        console.error('Failed to load .')
      )

  jugadorData.loadJugador = (idjugador) ->
    if jugadorData.jugadorLoaded != idjugador
      console.log('./jugadores/'+idjugador+'.json')
      $http.get('./jugadores/'+idjugador+'.json').success((data) ->
        jugadorData.data.jugador = data
        jugadorData.jugadorLoaded = idjugador
        console.log('Successfully loaded show.')
      ).error(->
        console.error('Failed to load .')
      )


  return jugadorData

])