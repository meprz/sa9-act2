require "user"

RSpec.describe User do
    let(:user1) { User.new "meperez" }

    describe "#log_in" do
        it "logs the user in" do
            user1.log_in
            expect(user1.logged_in).to be true
        end
    end

    describe "#log_out" do
        it "logs the user out" do
            user1.log_in
            user1.log_out
            expect(user1.logged_in).to be false
        end
    end

    describe "#username" do
        it "returns the correct username" do
            expect(user1.username).to eq("meperez")
        end
    end
end
