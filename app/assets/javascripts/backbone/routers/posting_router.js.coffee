class BPosting.Routers.PostingRouter extends Backbone.Router
  initialize: (options) ->
    @postings = new BPosting.Collections.PostingCollection()
    @postings.reset options.postings

  routes:
    "new"         : "newPosting"
    "index"       : "index"
    ":id/edit"    : "edit"
    ":id"         : "show"
    ".*"          : "index"

  newPosting: ->
    @view = new BPosting.Views.Postings.NewView(collection: @postings)
    $("#postings").html(@view.render().el)

  index: ->
    @view = new BPosting.Views.Postings.IndexView(postings: @postings)
    $("#postings").html(@view.render().el)

  show: (id) ->
    posting = @postings.get(id)

    @view = new BPosting.Views.Postings.ShowView(model: posting)
    $("#postings").html(@view.render().el)

  edit: (id) ->
    posting = @postings.get(id)

    @view = new BPosting.Views.Postings.EditView(model: posting)
    $("#postings").html(@view.render().el)
