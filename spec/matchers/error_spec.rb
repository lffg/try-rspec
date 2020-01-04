def divide(a, b)
  a / b
end

describe "Error Matchers" do
  # There is also a `RAISE_EXCEPTION` matcher.
  it "should RAISE_ERROR" do
    expect { divide(1, 0) }.to raise_error(ZeroDivisionError)
    expect { divide(1, 0) }.to raise_error("divided by 0")
    expect { divide(1, 0) }.to raise_error(ZeroDivisionError, "divided by 0")
    expect { divide(1, 0) }.to raise_error(/divided/)
  end
end