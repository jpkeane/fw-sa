class FrontPagesController < ApplicationController
  skip_before_action :logged_in_user
  skip_after_action :verify_authorized

  layout 'front'

  def home; end

  def about; end

  def pricing; end

  def terms; end

  def privacy; end
end
