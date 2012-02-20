require 'rubygems'
require 'bundler'

Bundler.require :default

ActiveRecord::Base.establish_connection(
  :adapter => 'sqlite3',
  :database => 'development.sqlite3'
)

ActiveRecord::Migrator.migrate('./migrations')

require './message'
