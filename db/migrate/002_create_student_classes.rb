class CreateStudentClasses < ActiveRecord::Migration
    def change
      create_table :school_classes do |t|
        t.string :title
        t.integer :room_number
  
        t.timestamps null: true
      end
    end
  end