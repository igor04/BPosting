#= require_self
#= require_tree ./templates
#= require_tree ./models
#= require_tree ./views
#= require_tree ./routers

window.BPosting =
  Models: {}
  Collections: {}
  Routers: {}
  Views: {}
  init: ->
    new BPosting.Routers.PostingRouter($('#all_postings_data').data())
    Backbone.history.start()

$(document).ready ->
  BPosting.init()
