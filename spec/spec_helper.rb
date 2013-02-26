require_relative '../lib/qssembly_wales'

require 'minitest/autorun'
require 'turn'
require 'vcr'
require 'webmock/minitest'

Turn.config do |c|
  c.format = :dot
end

VCR.configure do |c|
  c.cassette_library_dir = 'spec/fixtures/assembly_wales_cassettes'
  c.hook_into :webmock
end
