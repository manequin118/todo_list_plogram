#encoding: utf-8
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

class ToDo < Task
  # コードを追加
  def initialize
    @tasks = []
  end

  def add(task)
    @tasks << task
    puts "【追加】#{task.info}"
  end

  def info
    puts "=*=*=*=*=*=*=* task *=*=*=*=*=*=*=*=*=*="
    if @tasks.empty?
      puts "【！】タスクはありません。"
    else
      @tasks.each do |task|
        puts task.info
      end
    end
    puts "=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*"
  end

  def delete(id:)
    input_id = @tasks.find { |task| task.id == id }
    if input_id.nil?
      puts "該当idのタスクが存在しません。"
    else
      @tasks.delete(input_id)
      puts "【削除】#{input_id.info}"
    end
  end
end

task1 = Task.new(title: "洗濯", content: "7時半までに干し終える")
task2 = Task.new(title: "仕事", content: "9時〜18時")
task3 = Task.new(title: "買物", content: "卵, ヨーグルト")

todo = ToDo.new
todo.add(task1)
todo.add(task2)
todo.info
todo.delete(id: 2)
todo.add(task3)
todo.delete(id: 5)
todo.info
