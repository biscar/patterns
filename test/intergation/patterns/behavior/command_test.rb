require 'unit/test_helper'

class CommandTest < MiniTest::Test
  def test_macro_command
    document = Menu::Document.new(name: 'action')

    commands = Menu::MacroCommand.new
    commands.add(Menu::OpenCommand.new)
    commands.add(Menu::PasteCommand.new(document: document))


    assert_kind_of(Array, commands.execute)
  end

  def test_my_class
    receiver = Menu::MyClass.new

    command = Menu::SimpleCommand.new(action: 'action', receiver: receiver)

    assert_equal('action', command.execute)
  end

  def test_open_command
    command = Menu::OpenCommand.new

    assert_equal('question', command.execute)
  end

  def test_past_command
    document = Menu::Document.new(name: 'action')

    command = Menu::PasteCommand.new(document: document)
    assert_equal('action', command.execute)
  end
end
