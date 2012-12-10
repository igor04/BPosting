BPosting.Views.Postings ||= {}

class BPosting.Views.Postings.PreviewView extends Backbone.View
  template: JST["backbone/templates/postings/preview"]

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
