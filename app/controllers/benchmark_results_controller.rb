class BenchmarkResultsController < ApplicationController

  def create
    @br = BenchmarkResult.new(params[:benchmark_result])
    @br.save
    render 'index'
  end

  def index
  end

end
