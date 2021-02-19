class AddCompletedAtToAnimeItems < ActiveRecord::Migration[6.0]
  def change
    add_column :anime_items, :completed_at, :datetime
  end
end
