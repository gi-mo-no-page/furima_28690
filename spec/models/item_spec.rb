require 'rails_helper'
describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
  end

  describe '商品の出品' do
    context '商品の出品がうまくいくとき' do
      it 'name,introduction,category_id,status_id,shopping_charges_id,shopping_region_id,price,imageが存在すれば出品できる' do
        expect(@item).to be_valid
      end
    end

    context '商品の出品がうまくいかないとき' do
      it 'nameがないとき' do
        @item.name = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Name can't be blank")
      end
      it 'introductionがないとき' do
        @item.introduction = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Introduction can't be blank")
      end
      it 'category_idがないとき' do
        @item.category_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Category can't be blank")
      end
      it 'status_idがないとき' do
        @item.status_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Status can't be blank")
      end
      it 'shopping_charges_idがないとき' do
        @item.shopping_charges_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Shopping charges can't be blank")
      end
      it 'shopping_region_idがないとき' do
        @item.shopping_region_id = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Shopping region can't be blank")
      end
      it 'priceがないとき' do
        @item.price = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Price can't be blank")
      end
      it 'imageがないとき' do
        @item.image = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Image can't be blank")
      end
      it 'priceが¥299以下のとき' do
        @item.price = 299
        @item.valid?
        expect(@item.errors.full_messages).to include('Price must be greater than or equal to 300')
      end
      it 'priceが¥9,999,999以上のとき' do
        @item.price = 999_999_999_999_999
        @item.valid?
        expect(@item.errors.full_messages).to include('Price must be less than or equal to 9999999')
      end
    end
  end
end
