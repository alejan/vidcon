# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

require 'carrierwave/orm/activerecord'
require 'will_paginate'
require 'rubygems'
require 'streamio-ffmpeg'
require 'jwplayer-rails'
require 'mail'

