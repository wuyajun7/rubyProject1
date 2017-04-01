class Api::V1::StandardsController < ApplicationController

  def index
      @standards = Standard.all
  end
end
