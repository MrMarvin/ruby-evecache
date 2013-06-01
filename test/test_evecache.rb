require "evecache"

class TestEvecache < Minitest::Test
  def test_extension_is_there
    assert Evecache.constants.include? :VERSION
  end
end
