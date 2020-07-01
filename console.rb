require('pry')
require_relative('models/album')
require_relative('models/artist')

Artist.delete_all()

artist_1 = Artist.new( {'name' => 'Iron Maiden'} )
artist_1.save()

album_1 = Album.new( {'title' => 'The Number of The Beast', 'genre' => 'metal'})
album_1.save()

artist_2 = Artist.new( {'name' => 'Fairport Convention'} )
artist_2.save()


binding.pry
nil
