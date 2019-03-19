class CreateAsignacions < ActiveRecord::Migration[5.2]
  def change
    create_table :asignacions do |t|
      t.references :persona, foreign_key: true
      t.references :proyecto, foreign_key: true

      t.timestamps
    end
  end
end
