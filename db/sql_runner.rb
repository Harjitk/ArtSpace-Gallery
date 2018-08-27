require('pg')

class SqlRunner

  def self.run(sql, values = [])
    begin
      # db = PG.connect({dbname: 'galleries', host: 'localhost'})
      db = PG.connect({
        dbname: 'd63fnqm36bfppj',
        host: 'ec2-54-83-51-78.compute-1.amazonaws.com',
        port: 5432,
        user: 'ydvxclxxhfeqno',
        password: '359780f82c1fcf75b5073a21360540200d6175a1431a6ba6f6fffdd5917b87e9'})
      db.prepare("query", sql)
      result = db.exec_prepared("query", values)
    ensure
      db.close() if db != nil
    end
    return result
  end

end
