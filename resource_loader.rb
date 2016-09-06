require 'yaml'

module ResourceLoader
  extend self

  def load_resource file_path
    extension = get_extension(file_path)
    case extension
    when '.csv'
      load_csv file_path
    when '.yml'
      load_yaml file_path
    else
      raise "Resource not supported (#{extension})"
    end
  end

  private

  def load_yaml file_path
    YAML.load_file file_path
  end

  def load_csv file_path
    puts 'load csv'
  end

  def get_extension file_path
    File.extname file_path
  end
end