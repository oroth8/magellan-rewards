# migration_signature: 658c817914cf967afd9d6bf897e01ca8
# frozen_string_literal: true

class CreateLocations < ActiveRecord::Migration[7.1]
  def change
    create_table :locations do |t|
      t.string :name, null: false, default: ''

      t.timestamps
    end
  end
end
