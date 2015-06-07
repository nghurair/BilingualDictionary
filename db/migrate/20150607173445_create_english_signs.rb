class CreateEnglishSigns < ActiveRecord::Migration
  def change
    create_table :english_signs do |t|
      t.string :phrase
      t.string :filename

      t.timestamps null: false
    end
  end
end
