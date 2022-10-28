class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    enable_extension 'pgcrypto' unless extension_enabled?('pgcrypto')
    create_table :transactions, id: :uuid, default: 'gen_random_uuid()' do |t|
      t.decimal :amount
      t.string :description
      t.string :paying_to
      t.boolean :is_credit, default: true
      t.datetime :date_of_transaction, default: DateTime.now
      t.references :user, type: :uuid, null: false, foreign_key: true

      t.timestamps
    end
  end
end
