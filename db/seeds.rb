require_relative('../models/artist')
require_relative('../models/exhibit')
require('pry')

Artist.delete_all()
Exhibit.delete_all()


artist1 = Artist.new({
  'name' => 'Edward Ruscha',
  'dob' => '1937',
  'picture' =>'/images/ArtistEdwardRuscha.jpg'
  })

  artist1.save()

  artist2 = Artist.new({
    'name' => 'Yayoi Kusama',
    'dob' => '1929',
    'picture' =>'/images/ArtistYayoiKusama.jpeg'
    })

    artist2.save()

    artist3 = Artist.new({
      'name' => 'Gerhard Richter',
      'dob' => '1932',
      'picture' =>'/images/ArtistGerhardRichter.jpg'
      })

      artist3.save()

      exhibit1 = Exhibit.new({
        'title' => 'Pay Nothing Until April',
        'exhibit_date' => '2003',
        'category' => 'Abstract Art',
        'artist_id' => artist1.id,
        'picture' => '/images/EdwardRuscha.jpg'
        })

        exhibit1.save()

        exhibit2 = Exhibit.new({
          'title' => 'The Passing Winter',
          'exhibit_date' => '2005',
          'category' => 'Contempory Art',
          'artist_id' => artist2.id,
          'picture' => '/images/YayoiKusama.jpg'
          })

          exhibit2.save()


          exhibit3 = Exhibit.new({
            'title' => 'Cage',
            'exhibit_date' => '2006',
            'category' => 'Modern Art',
            'artist_id' => artist3.id,
            'picture' => '/images/GerhardRichter.jpg'
            })

            exhibit3.save()


            binding.pry
            nil
