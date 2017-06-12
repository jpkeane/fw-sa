class CreateUserEmailAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :user_email_addresses do |t|
      t.string :email_address
      t.references :user, foreign_key: true
      t.boolean :primary

      t.timestamps
    end
  end
end
