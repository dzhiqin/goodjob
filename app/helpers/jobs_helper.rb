module JobsHelper
  def render_passed_days(job)
    # from_time=Time.now
    # to_time=job.created_at
    # distance_of_time_in_words(from_time,to_time)
    from_time=job.created_at
    distance_of_time_in_words_to_now(from_time)
  end
end
