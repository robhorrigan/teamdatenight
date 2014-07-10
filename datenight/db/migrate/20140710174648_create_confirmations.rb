class CreateConfirmations < ActiveRecord::Migration
  def change
    create_table :confirmations do |t|

      t.timestamps
    end
  end
end
