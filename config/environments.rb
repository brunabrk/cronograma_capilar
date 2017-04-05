require 'bundler/setup'
Bundler.require(:default)


configure :development do
  set :database, 'sqlite3:db/cronograma_capilar.db'

  ActiveRecord::Base.establish_connection(
      :adapter => 'sqlite3',
      :database => 'db/cronograma_capilar.sqlite3'
  )
end

configure :test do
  set :database, 'sqlite3:db/cronograma_capilar_test.db'

  ActiveRecord::Base.establish_connection(
      :adapter => 'sqlite3',
      :database => 'db/cronograma_capilar_test.sqlite3'
  )
end

require_all 'app'