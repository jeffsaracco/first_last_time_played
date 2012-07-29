class HomeController < ApplicationController
  handles_sortable_columns

  def index
    order = sortable_column_order
    @songs = Song.order(order)
  end
end
