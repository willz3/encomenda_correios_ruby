class CreateHistoricos < ActiveRecord::Migration[5.2]
  def change
    create_table :historicos do |t|
      t.string :descricao
      t.string :datahora
      t.string :situacao
      
      t.timestamps
    end
  end
end
