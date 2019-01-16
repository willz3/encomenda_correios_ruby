class AddColumnHistoricos < ActiveRecord::Migration[5.2]
  def change

    add_column "historicos", :pacote_id, :integer
  end
end
