class CreateHistoricobs < ActiveRecord::Migration[5.2]
  def change
    create_table :historicobs do |t|

      t.timestamps
    end
  end
end
