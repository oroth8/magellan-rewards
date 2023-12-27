# migration_signature: 99edaa02d8470abe1686c68d0e94857c
# frozen_string_literal: true

class CreateCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :categories do |t|
      t.string :name, null: false, default: ''

      t.timestamps
    end
  end
end
