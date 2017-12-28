class StatsController < ApplicationController
  def show
    @url = params[:url]
    @article = Article.find_by_url(@url)
    @fakes = @article.reports
                      .where(is_fake: true)
                      .count()
                      .to_f()
    @reports = @article.reports.count().to_f()
    @stats = @fakes / @reports
    render json: {
        "url" => @url,
        "confidence" => @stats.round(2),
        "is_fake" => @stats > 0.7
      }
  end

end
