require 'rails_helper'

RSpec.describe Product, type: :model do

  it 'should have valid Factory' do
    expect(create(:product)).to be_valid
  end

  describe 'Database table' do
  it { is_expected.to have_db_column :name} 
  it { is_expected.to have_db_column :description} 
  it { is_expected.to have_db_column :price} 
  end

  describe 'GET product' do
    let!(:products) do
      3.times do
        FactoryBot.create(:product)
      end
    end

    it 'returns a collection of products' do
      expect(products).to eq 3
    end
  end
end
