require_relative('../db/sql_runner')

class Artist

  attr_accessor :name, :dob
  attr_reader :id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @dob = options['dob'].to_i
  end

def save()
   sql = "INSERT INTO artists
   (
     name,
     dob
   )
   VALUES
   (
     $1, $2
   )
   RETURNING id"
   values = [@name, @dob]
   results = SqlRunner.run(sql, values)
   @id = results.first()['id'].to_i
end

def update()
    sql = "UPDATE artists
    SET
    (
      name,
      dob
    ) =
    (
      $1, $2
    )
    WHERE id = $3"
    values = [@name, @dob]
    SqlRunner.run(sql, values)
  end

  def delete()
     sql = "DELETE FROM artists
     WHERE id = $1"
     values = [@id]
     SqlRunner.run(sql, values)
   end

   def exhibits()
     sql = "SELECT * FROM exhibits WHERE artist_id = $1"
     values = [@id]
     results = SqlRunner.run(sql, values)
     exhibits = results.map {|exhibit| Exhibit.new(exhibit)}
     return exhibits
   end

   def self.delete_all()
  sql = "DELETE FROM artists;"
  SqlRunner.run(sql)
end

def self.all()
   sql = "SELECT * FROM artists"
   artists = SqlRunner.run( sql )
   result = artists.map { |artist| Artist.new( artist ) }
   return result
 end

 def self.find( id )
    sql = "SELECT * FROM artists WHERE id = $1"
    value = [id]
    artist = SqlRunner.run(sql, value)
    result = Artist.new( artist.first )
    return result
  end


end
