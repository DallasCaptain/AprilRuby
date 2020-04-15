RSpec.describe "Send Email" do
    before(:each) do
        @email = Email.create(form: "")
    end

    context "Email form is filled out" do
        it "sends the email" do
            @email.form ="filled out"
            expect(@email.send).to eq(true)
        end

    end
    context "Email form is not filled out" do
        it "can't send the email" do
            @email.form = ""
            expect(@email.send).to eq(false)
        end
    end
end
RSpec.describe "Delete Email" do
    




    
end