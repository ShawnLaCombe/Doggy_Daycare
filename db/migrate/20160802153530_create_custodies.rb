class CreateCustodies < ActiveRecord::Migration
  def change
    create_table :custodies do |t|
      t.references :dog, index: true, foreign_key: true
      t.references :owner, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
