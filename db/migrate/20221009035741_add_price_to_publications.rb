class AddPriceToPublications < ActiveRecord::Migration[7.0]
  def change
    add_column :publications, :price, :integer
  end
end
