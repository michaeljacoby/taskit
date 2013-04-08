class Taskit.Views.TasksIndex extends Backbone.View

  template: JST['tasks/index']

  events:
          'submit #new_task': 'createTask'
          'click #Toggle': 'deleteTask'

  initialize: ->
    @collection.on('reset', @render, this)
    @collection.on('add', @render, this)



  render: ->
    $(@el).html(@template())
    @collection.each(@appendTask)
    this

  createTask: (event) ->
    event.preventDefault()
    attributes = name: $('#new_task_name').val()
    @collection.create attributes,
      success: -> $('#new_task')[0].reset()
      error: @handleError

  deleteTask: (event) ->
    event.preventDefault()
    @collection.update()


  appendTask: (task) ->
    view = new Taskit.Views.Task(model: task)
    $('#single_task').append(view.render().el)

  handleError: (task, response) ->
    if response.status == 422
      errors = $.parseJSON(response.responseText).errors
      for attribute, messages of errors
        alert "#(attribute) #{message}" for message in messages
      


