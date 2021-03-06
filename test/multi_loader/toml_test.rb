require File.expand_path('common', File.dirname(__FILE__))
begin
  require 'prmd/multi_loader/toml'
rescue LoadError
  #
end

class PrmdMultiLoaderTomlTest < Minitest::Test
  include PrmdLoaderTests

  def loader_module
    Prmd::MultiLoader::Toml
  end

  def testing_filename
    schemas_path('data/test.toml')
  end
end if defined?(TOML)
