angular.module('desafiomundial').factory('sessionService', ['$http', ($location, $http, $q) ->
  redirect (url) ->
    url = url || '/'
    $location.path(url)
])
