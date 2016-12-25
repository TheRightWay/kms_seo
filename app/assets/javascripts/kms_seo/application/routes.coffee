'use strict'

angular.module('KMS').config ['$stateProvider', '$urlRouterProvider', ($stateProvider, $urlRouterProvider) ->

    # Application routes
    $stateProvider
        .state('redirects', {
            url: '/kms/redirects',
            views:
              "header":
                template: "Редиректы"
              "@":
                controller: 'RedirectsController',
                controllerAs: 'redirects',
                templateUrl: 'redirects/index.html',
        })
]
