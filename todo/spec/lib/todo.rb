class todo
    def initialize 
        task[date_created,date_finished,complete,unique_number]
        date_created= date.today.strftime('%d %b %y')
        date_finished= gets.chomp
        unique_number = task.each_index{|x|print x+1,""}
        if done 
            "Done"
        else 
        end
    end
    def days_left
        date_finished - date.today
    end

end
learn=todo.new
learn = [
    "baking",
    "frying", 
    "toasting"
]
print learn