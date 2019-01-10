class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url

  @@all = []

  def initialize(student_hash)
    student_hash.each do |key, value|
      self.send("#{key}=", value)
    end
    @@all << self
    binding.pry
  end

  def self.create_from_collection(students_array)
    Scraper.scrape_index_page("fixtures/student-site/index.html").each do |hsh|
      self.new(hsh)
    end
  end

  def add_student_attributes(attributes_hash)

  end

  def self.all
    @@all
  end
end
