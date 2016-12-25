RedirectsController = ($scope, $state, Restangular, $stateParams) ->
  $scope.store = Restangular.all('redirects')

  $scope.store.getList().then (redirects)->
    $scope.redirects = redirects

  $scope.addRedirect = ->
    $scope.redirects.unshift
      source: ''
      destination: ''

  $scope.save = (data, redirect)->
    redirect.source = data.source
    redirect.destination = data.destination
    if redirect.id?
      redirect.put()
    else
      restangularizedRedirect = Restangular.restangularizeElement(null, redirect, 'redirects')
      restangularizedRedirect.save()

  $scope.destroy = (redirect)->
    if redirect.id?
      restangularizedRedirect = Restangular.restangularizeElement(null, redirect, 'redirects')
      return unless confirm('Вы уверены?')
      restangularizedRedirect.remove().then ->
        $scope.redirects = _.without($scope.redirects, redirect)
    else
        $scope.redirects = _.without($scope.redirects, redirect)

angular.module('KMS')
    .controller('RedirectsController', ['$scope', '$state', 'Restangular', '$stateParams', RedirectsController])
