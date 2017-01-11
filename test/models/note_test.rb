require 'test_helper'

class NoteTest < ActiveSupport::TestCase
  def setup
    @note = Note.new(name: "Example User", email: "user@example.com", content: "Необходимо написать приложение - гостевую книгу. Можно оставлять записи в гостевой книге, иметь возможность их редактировать и удалять")
  end

  test "should be valid" do
    assert @note.valid?
  end
end
