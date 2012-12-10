class AddRatingToPostings < ActiveRecord::Migration
  def change
    add_column :postings, :rating, :integer, default: 0
  end
end
