require_relative "../BubbleSort/bubble_sort"

RSpec.describe "#bubble_sort" do
  it "returns a sorted array" do
    expect(bubble_sort([4, 3, 78, 2, 0, 2])).to eq([0, 2, 2, 3, 4, 78])
  end

  it "sorts an unsorted array" do
    expect(bubble_sort([4, 3, 2, 1])).to eq([1, 2, 3, 4])
  end

  it "sorts an already sorted array" do
    expect(bubble_sort([1, 2, 3, 4])).to eq([1, 2, 3, 4])
  end

  it "sorts an array with duplicates" do
    expect(bubble_sort([3, 1, 2, 3])).to eq([1, 2, 3, 3])
  end

  it "returns an empty array if given one" do
    expect(bubble_sort([])).to eq([])
  end

  it "sorts an array with one element" do
    expect(bubble_sort([42])).to eq([42])
  end
end
