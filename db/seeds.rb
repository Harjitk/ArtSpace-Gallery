require_relative('../models/artist')
require_relative('../models/exhibit')
require("pry")

Artist.delete_all()
Exhibit.delete_all()


artist1 = Artist.new({
  'name' => 'Edward Ruscha',
  'dob' => '1937'
  })

  artist1.save()

  artist2 = Artist.new({
    'name' => 'Yayoi Kusama',
    'dob' => '1929'
    })

    artist2.save()

    artist3 = Artist.new({
      'name' => 'Gerhard Richter',
      'dob' => '1932'
      })

      artist3.save()

      exhibit1 = Exhibit.new({
        'title' => 'Pay Nothing Until April',
        'exhibit_date' => '10 June 2018',
        'artist_id' => artist1.id
        })

        exhibit1.save()

        exhibit2 = Exhibit.new({
          'title' => 'The passing winter',
          'exhibit_date' => '15 July 2018',
          'artist_id' => artist2.id
          })

          exhibit2.save()


          exhibit3 = Exhibit.new({
            'title' => 'Cage',
            'exhibit_date' => '18 August 2018',
            'artist_id' => artist3.id
            })

            exhibit3.save()


            binding.pry
            nil
