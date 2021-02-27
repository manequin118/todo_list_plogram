class Task
  # コードを追加
  attr_reader :title, :content, :id
  @@count = 0

  def initialize(title:, content:)
    @title = title
    @content = content
    @id = @@count += 1
  end

  def info
    "[No.#{@id}] #{@title}:#{@content}"
  end
end
