class CreateAffiliates < ActiveRecord::Migration[6.1]
  def change
    create_table :affiliates do |t|

      t.timestamps
    end
  end
end
