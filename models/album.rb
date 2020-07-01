require_relative('../db/sql_runner')
require_relative('./artist')

class Album

    attr_accessor :title, :genre, :artist_id
    attr_reader :id
    
    def initialize(options)
        @id = options['id'].to_i() if options['id']
        @title = options['title']
        @genre = options['genre']
        @artist_id = options['artist_id'].to_i()
    end

    def save()
        sql = "INSERT INTO albums
        (title, genre)
        VALUES ($1, $2)
        RETURNING id"
        values = [@title, @genre]
        result = SqlRunner.run(sql, values)
        @id = result[0]['id'].to_i()
    end

    def update()
        sql = "UPDATE albums
        SET (title, genre) = ($1, $2)
        WHERE id = $3"
        values = [@title, @genre, @id]
        result = SqlRunner.run(sql, values)
    end

end
