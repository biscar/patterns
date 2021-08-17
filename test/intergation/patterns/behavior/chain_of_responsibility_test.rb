require 'unit/test_helper'

class ChainOfResponsibilityTest < MiniTest::Test
  def test_3_topics_level
    print_topic = 1
    paper_operation_topic = 2
    application_topic = 3

    application = Help::Application.new(topic: application_topic)
    dialog = Help::Dialog.new(help_handler: application, topic: print_topic)
    button = Help::Button.new(help_handler: dialog, topic: paper_operation_topic )

    assert_equal('показать список разделов справки', application.handle_help)
    assert_equal('справка Dialog', dialog.handle_help)
    assert_equal('справка Button', button.handle_help)
  end

  def test_2_topics_level
    print_topic = 1
    application_topic = 3

    application = Help::Application.new(topic: application_topic)
    dialog = Help::Dialog.new(help_handler: application, topic: print_topic)
    button = Help::Button.new(help_handler: dialog)

    assert_equal('показать список разделов справки', application.handle_help)
    assert_equal('справка Dialog', dialog.handle_help)
    assert_equal('справка Dialog', button.handle_help)
  end

  def test_1_topics_level
    application_topic = 3

    application = Help::Application.new(topic: application_topic)
    dialog = Help::Dialog.new(help_handler: application)
    button = Help::Button.new(help_handler: dialog)

    assert_equal('показать список разделов справки', application.handle_help)
    assert_equal('показать список разделов справки', dialog.handle_help)
    assert_equal('показать список разделов справки', button.handle_help)
  end
end
