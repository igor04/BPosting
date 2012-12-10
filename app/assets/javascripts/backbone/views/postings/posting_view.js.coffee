BPosting.Views.Postings ||= {}

class BPosting.Views.Postings.PostingView extends Backbone.View
  template: JST["backbone/templates/postings/posting"]

  events:
    "click .destroy" : "destroy"
    "click .title" : "preview"

  tagName: "tr"

  destroy: () ->
    @model.destroy()
    this.remove()

    return false

  preview: () ->
    @preview = new BPosting.Views.Postings.PreviewView(model: @model)

    preview_block = $('#posting_preview')
    if preview_block.size()
      preview_block.html(@preview.render().el)
    else
      preview_block = $('<div id="posting_preview"></div>').html(@preview.render().el)
      $("#postings").append(preview_block)

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
