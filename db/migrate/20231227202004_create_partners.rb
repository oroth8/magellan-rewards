# migration_signature: 5b70625f055e39fae40a764f7f6eda6d
# frozen_string_literal: true

class CreatePartners < ActiveRecord::Migration[7.1]
  def change
    create_table :partners do |t|
      t.string 'name', null: false, default: ''
      t.string 'address'
      t.string 'city'
      t.string 'state'
      t.string 'postal_code'
      t.boolean 'active', default: true, null: false
      t.text 'description'

      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
