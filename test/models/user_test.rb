require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "normalizes email before validation" do
    user = User.new(
      first_name: "Alan",
      last_name: "Turing",
      email: "  ALAN@Example.COM  ",
      active: true
    )

    assert user.valid?
    assert_equal "alan@example.com", user.email
  end

  test "requires a valid email format" do
    user = users(:one)
    user.email = "not-an-email"

    assert_not user.valid?
    assert_includes user.errors[:email], "is invalid"
  end

  test "requires case insensitive unique email" do
    user = User.new(
      first_name: "Another",
      last_name: "User",
      email: "ADA@example.com",
      active: true
    )

    assert_not user.valid?
    assert_includes user.errors[:email], "has already been taken"
  end
end
