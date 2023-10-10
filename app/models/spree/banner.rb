# frozen_string_literal: true

module Spree
  class Banner < ApplicationRecord
    include ActiveModel::Dirty
    validates :content, presence: true
    validates :name, presence: true
    belongs_to :store

    before_save :set_banner, if: :published_changed?

    def set_banner
      Spree::Banner.where(store_id: store_id).update_all(published: false)
    end
  end
end
