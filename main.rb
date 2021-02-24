#encoding: utf-8
require "./todo"

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
