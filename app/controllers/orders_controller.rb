class OrdersController < ApplicationController

  before_filter :authenticate_user!
  belongs_to :product
  belongs_to :user

  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def destroy
  end

end