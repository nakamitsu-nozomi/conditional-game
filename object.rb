class Task
  attr_accessor :id, :name, :detail
  @@count=0
  def initialize(params)
    @id=@@count +=1
    @name = params[:name]
    @detail = params[:detail]
  end
end

class Todo
  def initialize
    @tasks =[]
  end
 
  def create(task)
    @tasks << task 
    puts "タスクID.#{task.id}を追加しました"
  end

  
  def index
    puts "-------------"
    puts "<タスク一覧＞"
      @tasks.each do |task,i|
      puts "ID.#{task.id},タスク名:#{task.name},詳細:#{task.detail}"
    end  
    puts "-------------" 
   
  end

  def delete(id)
    if @tasks.find{|item|item.id==id}
      @tasks.delete_if{|item|item.id==id}
      puts "タスクID.#{id}を削除しました"
    else
      puts "削除項目がありません" 
    end  
  end


end

to_do=Todo.new
task1=Task.new(name:"起きる",detail:"８時")
to_do.create(task1)
task2=Task.new(name:"ねる",detail:"12時")
to_do.create(task2)
to_do.delete(2)
to_do.delete(3)
task3=Task.new(name:"ランチ",detail:"13時")
to_do.create(task3)
to_do.index







