#encoding: utf-8
require "./task"

class ToDo
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
    input_tasks = @tasks.find { |task| task.id == id }
    if input_tasks.nil?
      puts "該当idのタスクが存在しません。"
    else
      @tasks.delete(input_tasks)
      puts "【削除】#{input_tasks.info}"
    end
  end
end
