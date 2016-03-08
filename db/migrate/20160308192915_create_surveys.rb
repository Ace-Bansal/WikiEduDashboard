class CreateSurveys < ActiveRecord::Migration
  def change
    drop_table :surveys
    create_table :surveys do |t|
      t.string :name
      t.timestamps null: false
    end

    create_table :surveys_question_groups, id: false do |t|
      t.belongs_to :survey, index: true
      t.belongs_to :rapidfire_question_group, index: true
    end
  end

end
