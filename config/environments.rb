require 'bundler/setup'
Bundler.require(:default)

ActiveRecord::Base.establish_connection(
            :adapter => 'sqlite3',
            :database => 'db/cronograma_capilar.sqlite3'
)

require_all 'app'