class StatsController < ApplicationController
  def show
    @article = Article.find(params[:id])
    @fakes = @article.reports
                      .where(is_fake: true)
                      .count()
                      .to_f()
    @reports = @article.reports.count().to_f()
    @stats = @fakes / @reports
    render json: {
        "confidence" => @stats.round(2),
        "is_fake" => @stats > 7
      }
  end
end
