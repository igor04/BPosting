class BPosting.Models.Posting extends Backbone.Model
  paramRoot: 'posting'

  defaults:
    title: null
    content: null
    rating: null

class BPosting.Collections.PostingCollection extends Backbone.Collection
  model: BPosting.Models.Posting
  url: '/postings'
