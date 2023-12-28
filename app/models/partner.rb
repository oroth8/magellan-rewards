# frozen_string_literal: true

class Partner < ApplicationRecord
    has_one_attached :image

    validate :acceptable_image

    delegate :attached?, to: :image, prefix: true

    private

  def acceptable_image
    return unless image.attached?

    errors.add(:image, 'is too big') unless main_image.blob.byte_size <= 1.megabyte

    acceptable_types = ['image/jpeg', 'image/png']
    return if acceptable_types.include?(main_image.content_type)

    errors.add(:image, 'must be a JPEG or PNG')
  end
end
