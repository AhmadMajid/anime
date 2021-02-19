class CreateAnimeItems < ActiveRecord::Migration[6.0]
  def change
    create_table :anime_items do |t|
      t.string :content
      t.references :anime_list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
