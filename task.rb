class Task
  # コードを追加
  @@count = 0
  attr_accessor :title, :content, :id

  def initialize(title:, content:)
    @title = title
    @content = content
    @id = @@count += 1
  end

  def info
    "[No.#{@id}] #{@title}:#{@content}"
  end
end
