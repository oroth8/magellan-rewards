# migration_signature: 488bebac2483a7e17c183dd45959de9d
# frozen_string_literal: true

class CreatePartnerContactDetails < ActiveRecord::Migration[7.1]
  def change
    create_table :partner_contact_details do |t|
      t.string 'phone'
      t.string 'website'
      t.string 'yelp'
      t.string 'grubhub'
      t.string 'doordash'
      t.string 'twitter'
      t.string 'linkedin'
      t.string 'instagram'
      t.string 'facebook'

      t.references :partner, null: false, foreign_key: true

      t.timestamps
    end
  end
end
