require 'yaml'

module ImportHelper
  extend self
  def help
    puts "Usage:"
    puts "import [capterra|software-advice] [filepath]"
  end

  def path_invalid? file_path
    !File.exist? file_path
  end

end