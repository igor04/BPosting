class Tag < ActiveRecord::Base
  has_many :postings, through: :posting_tags
  has_many :posting_tags

  acts_has_many :postings, through: true
end
