angular.module('thoughts', [])
  .controller('ThoughtForDayController', function() {
      var thoughtForTheDay = this;
      thoughtForTheDay.thought = {thought: 'An open mind is like a fortress with its gates unbarred and unguarded.', source: 'Marneus Calgar'};
    }
  )
