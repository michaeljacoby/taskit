window.Taskit =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: -> 
    new Taskit.Routers.Tasks
    Backbone.history.start()

$(document).ready ->
  Taskit.initialize()
