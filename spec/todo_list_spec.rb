require "todo_list"

RSpec.describe TodoList do
    let(:my_list1) { TodoList.new }

    describe "#add" do
      it "adds a todo to the list" do
        my_list1.add "Mow the yard"
        expect(my_list1.todos).to eq ["Mow the yard"]
      end
    end
  
    describe "#remove" do
      it "removes a todo from the list" do
        my_list1.add "Water the flowers"
        my_list1.remove "Water the flowers"
        expect(my_list1.todos).to eq []
      end
    end
  
    describe "#todos" do
      it "returns all todos" do
        my_list1.add "Take out the trash"
        my_list1.add "Feed the cats"
        expect(my_list1.todos).to eq ["Take out the trash", "Feed the cats"]
      end
    end
end
