require_relative('./album')

class Artist

    attr_accessor :name
    attr_reader :id

    def initialize(options)
        @id = options['id'] if options['id']
        @name = options['name']    
    end

    # def save()
    #     sql = "INSERT into "

end
