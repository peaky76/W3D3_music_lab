require('pry')
require_relative('models/album')
require_relative('models/artist')

Album.delete_all()
Artist.delete_all()

artist_1 = Artist.new( {'name' => 'Iron Maiden'} )
artist_1.save()

album_1 = Album.new( {'title' => 'The Number of The Beast', 'genre' => 'dance'})
album_1.save()

artist_2 = Artist.new( {'name' => 'Fairport Convention'} )
artist_2.save()

album_2 = Album.new( {'title' => 'Full House', 'genre' => 'folk'})
album_2.save()

album_3 = Album.new( {'title' => 'What We Did On Our Holidays', 'genre' => 'folk'})
album_3.save()

album_1.genre = 'metal'
album_1.update()


binding.pry
nil
