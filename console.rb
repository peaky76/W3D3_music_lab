require('pry')
require_relative('models/album')
require_relative('models/artist')

artist_1 = Artist.new( {'name' => 'Bob Dylan'} )
artist_1.save()

artist_1.name = 'Phil Collins'
artist_1.update()

binding.pry
nil
