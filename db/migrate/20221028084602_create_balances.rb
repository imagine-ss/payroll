class CreateBalances < ActiveRecord::Migration[7.0]
  def change
    enable_extension 'pgcrypto' unless extension_enabled?('pgcrypto')
    create_table :balances, id: :uuid, default: 'gen_random_uuid()' do |t|
      t.decimal :amount
      t.references :user, type: :uuid, null: false, foreign_key: true

      t.timestamps
    end
  end
end
