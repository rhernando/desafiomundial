# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

#= require_self
# require_tree ./angular/services/global
#= require_tree ./angular/services/main
# require_tree ./angular/filters/global
# require_tree ./angular/filters/main
# require_tree ./angular/controllers/global
#= require_tree ./angular/controllers
# require_tree ./angular/directives/global
# require_tree ./angular/directives/main

@desafiomundial = angular.module('desafiomundial', ['ngRoute'])

@desafiomundial.config(['$routeProvider', ($routeProvider) ->
  # Route for '/post'
  $routeProvider.when('/jugadores', { templateUrl: '../assets/jugadores.html', controller: 'JugadorIndexCtrl' } )
  $routeProvider.when('/jugador/:jugadorId', { templateUrl: '../assets/jugador.html', controller: 'JugadorCtrl' } )

  # Default
  $routeProvider.otherwise({ templateUrl: '../assets/mainIndex.html', controller: 'HomeCtrl' } )

])