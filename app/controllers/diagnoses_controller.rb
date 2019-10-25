class DiagnosesController < ApplicationController
  
  def index
  end

  def create
    @diagnosis = Diagnoses.new(result_params)
    @release = @diagnosis[:q1] + @diagnosis[:q6]
    @control = @diagnosis[:q2] + @diagnosis[:q7]
    @change = @diagnosis[:q3] + @diagnosis[:q8]
    @realization = @diagnosis[:q4] + @diagnosis[:q9]
    @strengthen = @diagnosis[:q5] + @diagnosis[:q10]
    @diagnosis.save
    @abilitys = [ @release, @control, @change, @realization, @strengthen ]
    @result = dicision_system(@abilitys)
  end

  private

  def result_params
    params.permit(:q1, :q2, :q3, :q4, :q5, :q6, :q7, :q8, :q9, :q10)
  end

  def dicision_system(ele)
    if ele[0] >= 7 && ele[1] >= 7 && ele[3] <= 2 && ele[4] >= 6
      "あなたは特質系です"
    else  
      if ele.max == ele[4]
        "あなたは強化系です"
      elsif ele.max == ele[2]
        "あなたは変化系です"
      elsif ele.max == ele[1]
        "あなたは操作系です"
      elsif ele.max == ele[3]
        "あなたは具現化系です"
      elsif ele.max == ele[0]
        "あなたは放出系です"
      end
    end
  end
end
