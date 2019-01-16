class CreateEncomendas < ActiveRecord::Migration[5.2]
  def change
    create_table :encomendas do |t|
      t.string :codigo
      t.string :nome

      t.timestamps
    end
  end
end
