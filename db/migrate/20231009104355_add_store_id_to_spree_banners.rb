class AddStoreIdToSpreeBanners < ActiveRecord::Migration[6.1]
  def change
    add_reference :spree_banners, :store, foreign_key: { to_table: :spree_stores }

    default_store = Spree::Store.default
    Spree::Banner.update_all(store_id: default_store.id)
  end
end