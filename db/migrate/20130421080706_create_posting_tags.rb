class CreatePostingTags < ActiveRecord::Migration
  def change
    create_table :posting_tags do |t|
      t.references :posting
      t.references :tag

      t.timestamps
    end
  end
end
