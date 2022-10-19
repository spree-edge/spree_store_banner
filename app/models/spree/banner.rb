# frozen_string_literal: true

module Spree
  class Banner < ApplicationRecord
    include ActiveModel::Dirty
    validates :content, presence: true

    before_save :set_banner, if: :published_changed?

    def set_banner
      Spree::Banner.update_all(published: false)
    end
  end
end
