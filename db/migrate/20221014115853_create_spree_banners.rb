class CreateSpreeBanners < ActiveRecord::Migration[6.1]
  def change
    create_table :spree_banners do |t|
      t.text :content
      t.string :color
      t.boolean :published, default: false

      t.timestamps
    end
  end
end
