class Taskit.Routers.Tasks extends Backbone.Router

  routes:
    '' : 'index'
    'tasks/:id': 'show'

  initialize: ->
    @collection = new Taskit.Collections.Tasks()
    @collection.fetch({reset: true})
    

  index: ->
    view = new Taskit.Views.TasksIndex(collection: @collection)
    $('#container').html(view.render().el)

  show: (id) ->
    alert "entry #{id}"

