require_relative('./album')

class Artist

    attr_accessor :name
    attr_reader :id

    def initialize(options)
        @id = options['id'] if options['id']
        @name = options['name']    
    end

    def save()
        sql = "INSERT INTO artists
        (name) VALUES ($1) RETURNING id"
        values = [@name]
        result = SqlRunner.new(sql, values)
        @id = result[0]['id'].to_i()
    end

end
