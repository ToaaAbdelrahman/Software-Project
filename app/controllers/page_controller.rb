class PageController < ApplicationController
  before_action :authenticate_user!, only: [:library, :upload]
  def home
  end

  def library
  end

  def upload
  end
end
