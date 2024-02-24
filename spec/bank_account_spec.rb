require "bank_account"

RSpec.describe BankAccount do
    let(:new_acct1) { BankAccount.new }
    describe "#deposit" do
      it "increases the balance by the deposit amount" do
        new_acct1.deposit 50
        expect(new_acct1.balance).to eq 50
      end
    end
  
    describe "#withdraw" do
      it "decreases the balance by the withdrawal amount if funds are available" do
        new_acct1.deposit 50
        new_acct1.withdraw 30
        expect(new_acct1.balance).to eq 20
      end
  
      it "does not change the balance if insufficient funds" do
        new_acct1.deposit 20
        new_acct1.withdraw 40
        expect(new_acct1.balance).to eq 20
      end
    end
  
    describe "#balance" do
      it "returns the current balance" do
        new_acct1.deposit 75
        expect(new_acct1.balance).to eq 75
      end
    end
  end
