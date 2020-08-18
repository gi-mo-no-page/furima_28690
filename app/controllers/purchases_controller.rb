class PurchasesController < ApplicationController

  def index
    @purchase = Purchase.new
    @item = Item.find(params[:item_id])

  end

  def cerate
    
  end

  private

  def purchase_params
    params.permit(:token).permit(:post_code, :prefectures_id, :municipality, :street_number, :building_name, :phone_number)
  end

  def pay_item
    Payjp.api_key = "sk_test_89d77d0e1baaae368e55ecef" # PAY.JPテスト秘密鍵
    Payjp::Charge.create(
      amount: @item.price,  # 商品の値段
      card: purchase_params[:token],    # カードトークン
      currency:'jpy'                 # 通貨の種類
    )
  end

end
