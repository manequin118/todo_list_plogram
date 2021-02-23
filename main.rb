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
    "[No.#{@id}] #{title}:#{content}"
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

  def delete
    if @tasks.id == nil
      puts "該当のタスクが存在しません。"
    else
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
