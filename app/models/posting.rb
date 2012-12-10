      #   <tt>destroy</tt>
      #   <tt>destroy!</tt>
class Posting < ActiveRecord::Base
  has_many :posting_tags, dependent: :destroy
  has_many :tags, through: :posting_tags

  acts_has_many_for :tags
end
