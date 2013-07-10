class CreateAppSettings < ActiveRecord::Migration

  def change

    create_table :app_settings do |t|
      t.string :app_code
      t.string :business_name
      t.string :logo
      t.string :stylesheet
    end

  end
end
