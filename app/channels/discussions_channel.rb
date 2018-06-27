class DiscussionsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "discussions_#{params['discussion_id']}_channel"
  end

  def unsubscribed
  end

  def send_comment(data)
    current_user.comments.create!(content: data['comment'], discussion_id: data['discussion_id'])
  end

end