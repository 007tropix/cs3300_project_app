class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :build_item
      t.integer :credit_cost
      t.integer :endo_cost
      t.integer :forma_cost

      t.timestamps
    end
  end
end
