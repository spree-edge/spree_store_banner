class AddBannerToStores < ActiveRecord::Migration[6.1]
  def change
    add_column :spree_stores, :banner, :boolean, default: false
    add_column :spree_stores, :banner_text, :string
    add_column :spree_stores, :banner_color, :string
  end
end
