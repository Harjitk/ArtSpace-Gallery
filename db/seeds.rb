require_relative('../models/artist')
require_relative('../models/exhibit')
require("pry")

artist1 = Artist.new({
  'first_name' => 'Edward',
  'last_name' => 'Ruscha',
  'dob' => '1937'
  })

  artist1.save()

  artist2 = Artist.new({
    'first_name' => 'Yayoi',
    'last_name' => 'Kusama',
    'dob' => '1929'
    })

    artist2.save()

    artist3 = Artist.new({
      'first_name' => 'Gerhard',
      'last_name' => 'Richter',
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
