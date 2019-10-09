class Shoe 
  attr_accessor :brand, :color, :size, :material, :condition

def initialize(brand)
  @brand = brand 
end

def color=(color)
  @color = color
end 
def size=(size)
  @size = size
end
def material=(material)
  @material = material
end
def condition=(condition)
  @condition = condition
end 
def cobble
  puts "Your shoe is as good as new!"
  @condition = "new"
end
end 
describe 'Shoe' do
  let(:shoe) { Shoe.new("Nike") }

  describe '::new' do
    it 'gets initialized with a brand' do
      expect{Shoe.new("Adidas")}.to_not raise_error
    end
  end

  describe 'properties' do
    it 'has a brand' do
      # When must the brand be assigned for this to work?
      expect(shoe.brand).to eq("Nike")
    end

    it 'has a color' do
      shoe.color = "red"
      expect(shoe.color).to eq("red")
    end

    it 'has a size' do
      shoe.size = 9.5
      expect(shoe.size).to eq(9.5)
    end

    it 'has a material' do
      shoe.material = "suede"
      expect(shoe.material).to eq("suede")
    end

    it 'has a condition' do
      shoe.condition = "tattered"
      expect(shoe.condition).to eq("tattered")
    end
  end

  describe '#cobble' do
    it 'says that the shoe has been repaired' do
      expect($stdout).to receive(:puts).with("Your shoe is as good as new!")
      shoe.cobble
    end

    it 'makes the shoe\'s condition new' do
      shoe.condition = "old"
      shoe.cobble
      expect(shoe.condition).to eq("new")
    end
  end
end