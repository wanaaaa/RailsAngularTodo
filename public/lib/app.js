console.log("app.js loading from public folder...");

var app = angular.module('TodoApp', []);

app.controller('TodoController', ['$http', function ($http) {
  var _this = this;

  /*
    function to hit the index action
    of the todos controller
  */

  this.getTodos = function () {
    $http.get('/todos')
      .then(function (response) {
        _this.todos = response.data.todos;
      }, function (error) {
        console.log(error);
      });
  };

  this.createTodo = function () {
    $http.post('/todos', {
      todo: {
        description: _this.newTodo.description,
        decision: _this.newTodo.decision,
        done: false
      }//end todo
    }).then(function (response) {
      var todo = response.data;
      _this.todos.push(todo);
      _this.newTodo = {};
    }, function (error) {

    });
  };

  this.updateTodo = function (todo) {
      $http.patch('/todos/' + todo.id, {
        todo: {
          done: !todo.done
        }
      }).then(function (response) {
        var index = _this.todos.indexOf(todo);
        _this.todos[index].done = response.data.done;
      }, function (error) {

      });
  };

  this.updateTodoDecision = function (todo) {
    console.log("GARUMPH", todo);

      $http.patch('/todos/' + todo.id, {
        todo: {
          decision: todo.decision
        }
      }).then(function (response) {
        console.log("PATCH RESPONSE BEEP BOOP:", response.data)
        var index = _this.todos.indexOf(todo);
        _this.todos[index].done = response.data.done;
      }, function (error) {

      });
        console.log("This is =================== ", this);
  };

  this.destroyTodo = function (todo) {
    $http.delete('/todos/' + todo.id)
      .then(function (response) {
        var index = _this.todos.indexOf(todo);
        _this.todos.splice(index, 1);
      }, function (error) {

      });
  };

  // Finally, the controller starts with the current todos prefetched

  this.getTodos();
}]);
//////////////////////////////////////////
