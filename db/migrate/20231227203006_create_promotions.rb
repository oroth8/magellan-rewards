# migration_signature: 3ec0fdeb9e64164ecc0088df5ceca816
# frozen_string_literal: true

class CreatePromotions < ActiveRecord::Migration[7.1]
  def change
    create_table :promotions do |t|
      t.string 'name', null: false, default: ''
      t.text 'description'

      t.references :partner, null: false, foreign_key: true

      t.timestamps
    end
  end
end
