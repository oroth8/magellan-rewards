# migration_signature: fcfa7071147c74b405cc58e82ebd93f1
# frozen_string_literal: true

class RemoveNameAddFirstNameAndLastNameToUsers < ActiveRecord::Migration[7.1]
  def change
    remove_column :users, :name, :string

  change_table :users, bulk: true do |t|
    add_column :users, :first_name, :string, null: false, default: ''
    add_column :users, :last_name, :string, null: false, default: ''
  end
  end
end
