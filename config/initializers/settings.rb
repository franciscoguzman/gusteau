Settings = YAML.load_file(File.join(Rails.root, 'config', 'settings.yml'))

@@app = AppSettings.first