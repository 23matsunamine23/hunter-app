class ContentsController < ApplicationController
  def index
    @chart = {"2018'-10-1" => 10, "2018-10-02" => 20, "2018-10-03" => 20, "2018-10-04" => 20, "2018-10-05" => 20, "2018-10-06" => 20}
  end
end
