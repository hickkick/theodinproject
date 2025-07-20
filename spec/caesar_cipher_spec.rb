require_relative "../CaesarCipher/caesar_cipher"

RSpec.describe "#caesar_cipher" do
  it "shifts letters by the given amount" do
    expect(caesar_cipher("abc", 1)).to eq("bcd")
  end

  it "wraps from z to a" do
    expect(caesar_cipher("xyz", 3)).to eq("abc")
    expect(caesar_cipher("XYZ", 3)).to eq("ABC")
  end

  it "preserves uppercase and lowercase" do
    expect(caesar_cipher("AbC", 2)).to eq("CdE")
  end

  it "leaves non-letter characters unchanged" do
    expect(caesar_cipher("hello, world!", 5)).to eq("mjqqt, btwqi!")
  end

  it "handles negative shifts" do
    expect(caesar_cipher("bcd", -1)).to eq("abc")
  end

  it "returns same text for shift 0" do
    expect(caesar_cipher("Nothing changes.", 0)).to eq("Nothing changes.")
  end

  it "handles full rotation (26)" do
    expect(caesar_cipher("Rotate", 26)).to eq("Rotate")
  end

  it "works with empty string" do
    expect(caesar_cipher("", 13)).to eq("")
  end

  it "handles string with only punctuation or digits" do
    expect(caesar_cipher('1234!@#$', 10)).to eq('1234!@#$')
  end

  it "takes in a string and the shift factor and then outputs the modified string using a right shift" do
    expect(caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
  end

  it "takes cipher string and return decrypt" do
    expect(caesar_cipher("Bmfy f xywnsl!", -5)).to eq("What a string!")
  end
end
