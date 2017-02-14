module Manager::InterviewsHelper
  def format_stats(interview)
    %w(未开始 题库面试 Live面试 不合格 通过)[interview.stats]
  end
end
