require 'pry'
require_relative './author'
require_relative './post'
require_relative './song'
require_relative './artist'


drake = Artist.new('Drake')
hotline_bling = Song.new('Hotline Bling')

binding.pry
