class Taskit.Views.Task extends Backbone.View
  template: JST['tasks/task']
  tagName: 'li'
  events:
    "click button": "Toggle"

  initialize: ->
    @model.on('change', @render, this)

  render: ->
    $(@el).html(@template(task: @model))
    this

  Toggle: ->
    if(this.model.get('complete') == true)
      this.model.set('complete' : false).save()
    else
      this.model.set('complete' : true).save()



    
    
    
    
