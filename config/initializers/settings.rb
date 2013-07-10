Settings = YAML.load_file(File.join(Rails.root, 'config', 'settings.yml'))

@@app = AppSettings.first if ActiveRecord::Base.connection.table_exists?('app_settings')