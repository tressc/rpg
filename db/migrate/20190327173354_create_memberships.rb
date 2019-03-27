class CreateMemberships < ActiveRecord::Migration[5.2]
  def change
    create_table :memberships do |t|
      t.integer :campaign_id, null: false
      t.integer :player_id, null: false
      t.boolean :pending, null: false

      t.index [:campaign_id, :player_id]
      t.index [:player_id, :campaign_id]

      t.timestamps
    end
  end
end
