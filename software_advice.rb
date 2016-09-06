require_relative 'resource_loader'

class SoftwareAdvice
  attr_reader :name, :categories, :twitter

  # gets a file path, and returns an array of instances of SoftwareAdvice
  def self.instanciate_from_resource file_path
    array = ResourceLoader.load_resource file_path

    array.inject([]) do |instances, hash|
      instances << SoftwareAdvice.new(hash)
    end
  end

  def initialize hash
    @name = hash["Name"]
    @categories = hash["Categories"]
    @twitter = hash["Twitter"]
  end

  def to_s
    puts "*"*30
    puts "Name: #{self.name}"
    puts "Categories: #{self.categories}"
    puts "Twitter: #{self.twitter}"
    puts "*"*30
  end
end