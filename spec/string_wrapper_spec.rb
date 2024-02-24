require "string_wrapper"

RSpec.describe StringWrapper do
    let(:a_str1) { StringWrapper.new "Ruby is cool!" }

    describe "#reverse" do
      it "reverses the string" do
        expect(a_str1.reverse).to eq "!looc si ybuR"
      end
    end
  
    describe "#upcase" do
      it "converts the string to uppercase" do
        expect(a_str1.upcase).to eq "RUBY IS COOL!"
      end
    end
  
    describe "#downcase" do
      it "converts the string to lowercase" do
        expect(a_str1.downcase).to eq "ruby is cool!"
      end
    end
  end
