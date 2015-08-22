angular.module('thoughts', [])
  .controller('ThoughtForDayController', function($http) {
      var thoughtForTheDay = this;
      $http.get('/thought').
        success(function(data, status, headers, config) {
          thoughtForTheDay.thought = data;
        }).
        error(function(data, status, headers, config) {
            thoughtForTheDay.thought = {thought: 'Blessed is the mind too small for doubt.', source: 'Marneus Calgar'};
        });
    }
  )
