require 'rails_helper'

RSpec.describe Payform, type: :model do
  before do
    @payform = FactoryBot.build(:payform)
  end
  it 'すべての値が正しく入力されていれば保存できること' do
    expect(@payform).to be_valid
  end
  it 'tokenが空だと保存できないこと' do
    @payform.token = nil
    @payform.valid?
    expect(@payform.errors.full_messages).to include("Token can't be blank")
  end
  it 'post_codeが空だと保存できないこと' do
    @payform.post_code = nil
    @payform.valid?
    expect(@payform.errors.full_messages).to include("Post code can't be blank")
  end
  it 'prefectures_idが空だと保存できないこと' do
    @payform.prefectures_id = nil
    @payform.valid?
    expect(@payform.errors.full_messages).to include("Prefectures can't be blank", "Prefectures is not a number")
  end
  it 'municipalityが空だと保存できないこと' do
    @payform.municipality = nil
    @payform.valid?
    expect(@payform.errors.full_messages).to include("Municipality can't be blank")
  end
  it 'street_numberが空だと保存できないこと' do
    @payform.street_number = nil
    @payform.valid?
    expect(@payform.errors.full_messages).to include("Street number can't be blank")
  end
  it 'phone_numberが空だと保存できないこと' do
    @payform.phone_number = nil
    @payform.valid?
    expect(@payform.errors.full_messages).to include("Phone number can't be blank")
  end
  it 'user_idが空だと保存できないこと' do
    @payform.user_id = nil
    @payform.valid?
    expect(@payform.errors.full_messages).to include("User can't be blank")
  end
  it 'item_idが空だと保存できないこと' do
    @payform.item_id = nil
    @payform.valid?
    expect(@payform.errors.full_messages).to include("Item can't be blank")
  end
  it 'post_codeに"-"がないと保存できないこと' do
    @payform.post_code = 1111111
    @payform.valid?
    expect(@payform.errors.full_messages).to include("Post code is invalid")
  end
  it 'phone_numberが12桁以上あると保存できないこと' do
    @payform.phone_number = 123456789101
    @payform.valid?
    expect(@payform.errors.full_messages).to include("Phone number is invalid")
  end

  
end
