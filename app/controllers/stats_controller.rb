class StatsController < ApplicationController
  def show
    @article = Article.find(params[:id])
    @fakes = @article.reports
                      .where(is_fake: true)
                      .count()
    @reports = @article.reports.count()
    @stats = @fakes / @reports
    render json: @stats
  end
end
