class Taskit.Models.Task extends Backbone.Model


  update: ->    
    @set(complete: true)
    @save()
    
