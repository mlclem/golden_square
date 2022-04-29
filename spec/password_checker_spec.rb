require 'password_checker'

RSpec.describe PasswordChecker do
  it "will return true if length > 8" do
    passwd = PasswordChecker.new
  expect(passwd.check("quiteALongPassWord1!")).to eq true
  end

  context "will return error if length < 8" do
    it "fails" do
    passwd = PasswordChecker.new
    expect { passwd.check("one") }.to raise_error "Invalid password, must be 8+ characters."
    end
  end

  context "will return error if a single space is used" do
    it "fails" do
    passwd = PasswordChecker.new
    expect { passwd.check(" ") }.to raise_error "Invalid password, must be 8+ characters."
    end
  end
end
  