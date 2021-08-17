require 'unit/test_helper'

class FlyweightTest < MiniTest::Test
  def test_proxy
    path = File.join('test/files/proxy.png')

    text = Documents::TextDocument.new
    image = Documents::Proxy::ImageProxy.new(image_file: path)

    text.insert(image)

    assert_equal(0, image.get_extent)

    image.load(path)

    assert_equal('.png', image.get_extent)
  end
end
