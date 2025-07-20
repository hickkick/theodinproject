require_relative "../StockPicker/stock_picker"

RSpec.describe "#stock_picker" do
  it "returns the best days to buy and sell for max profit" do
    expect(stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([1, 4])
  end

  it "returns nil if prices are empty" do
    expect(stock_picker([])).to be_nil
  end

  it "returns nil if prices only go down" do
    expect(stock_picker([9, 8, 7, 6, 5, 4])).to be_nil
  end

  it "returns the earliest pair with max profit" do
    expect(stock_picker([5, 10, 5, 10, 5, 10])).to eq([0, 1])
  end

  it "handles edge case when lowest price is last day" do
    expect(stock_picker([10, 9, 8, 7, 1])).to be_nil
  end

  it "handles edge case when highest price is first day" do
    expect(stock_picker([20, 1, 2, 3, 4])).to eq([1, 4])
  end
end
