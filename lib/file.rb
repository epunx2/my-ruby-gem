class Filechange
    attr_accessor :first_name, :last_name, :age

    def initialize(params = {})
        @first_name = params.fetch(:first_name)
        @last_name = params.fetch(:last_name)
        @age = params.fetch(:age)
    end

    def process()
        "#{first_name} | #{last_name} | #{age}"
    end

    def write(content)
        File.write("content.txt", content, mode: "a")
    end
end

def add_to_file(file_content)
    file_name = Filechange.new(file_content)
    new_content = file_name.process()
    file_name.write(new_content)
end

file_content = {:first_name => 'John', :last_name => 'Adams', :age => 85}
add_to_file(file_content)

# TODO:
# 1. Create a receiving method
# 2. Add iteration to the method
# 3. Create a repository