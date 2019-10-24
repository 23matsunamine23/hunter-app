class ContentsController < ApplicationController
  def index
    @chart = {"強化系" => 30, "変化系" => 20, "具現化系" => 15, "特質系" => 5, "操作系" => 15, "放出系" => 15}
  end
end
