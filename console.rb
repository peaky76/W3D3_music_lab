require('pry')
require_relative('models/album')
require_relative('models/artist')

Album.delete_all()
Artist.delete_all()

artist_1 = Artist.new( {'name' => 'Iron Maiden'} )
artist_1.save()

album_1 = Album.new( {'title' => 'The Number of The Beast', 'genre' => 'dance', 'artist_id' => artist_1.id})
album_1.save()

artist_2 = Artist.new( {'name' => 'Fairport Convention'} )
artist_2.save()

album_2a = Album.new( {'title' => 'Full House', 'genre' => 'folk', 'artist_id' => artist_2.id})
album_2a.save()

album_2b = Album.new( {'title' => 'What We Did On Our Holidays', 'genre' => 'folk', 'artist_id' => artist_2.id})
album_2b.save()

album_1.genre = 'metal'
album_1.update()

binding.pry
nil
