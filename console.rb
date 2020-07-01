require('pry')
require_relative('models/album')
require_relative('models/artist')

Artist.delete_all()

artist_1 = Artist.new( {'name' => 'Bob Dylan'} )
artist_1.save()

artist_2 = Artist.new( {'name' => 'Fairport Convention'} )
artist_2.save()

artist_1.delete()

binding.pry
nil
