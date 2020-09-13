class Task
  attr_accessor :id, :name, :detail
  
  def initialize(params)
    @name = params[:name]
    @detail = params[:detail]
  end
end

class To_do
  def initialize
    @tasks =[]
  end
 
  def create(task)
   @tasks << task 
   puts "タスクID#{task.id}を追加しました"
  end

  
  def index
    puts "-------------"
    puts "<タスク一覧＞"
    @tasks.each.with_index(1) do |task,i|
      puts "ID.#{i},タスク名:#{task.name},詳細:#{task.detail}"
    end  
    puts "-------------" 
  end

end

to_do=To_do.new
task1=Task.new(name:"起きる",detail:"８時")
to_do.create(task1)
task2=Task.new(name:"ねる",detail:"12時")
to_do.create(task2)
to_do.index





