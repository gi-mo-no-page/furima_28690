class TypesController < ApplicationController
  def index
    @parents = Type.where(ancestry: nil)
  end

  def show
  end
end
