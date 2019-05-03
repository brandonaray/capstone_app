class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  def current_user
    auth_headers = request.headers['Authorization']
    if auth_headers.present? && auth_headers[/(?<=\A(Bearer ))\S+\z/]
      token = auth_headers[/(?<=\A(Bearer ))\S+\z/]
      begin
        decoded_token = JWT.decode(
          token,
          Rails.application.credentials.fetch(:secret_key_base),
          true,
          { algorithm: 'HS256' }
        )
        User.find_by(id: decoded_token[0]["user_id"])
      rescue JWT::ExpiredSignature
        nil
      end
    end
  end

  helper_method :current_user

  def authenticate_user
    unless current_user
      render json: {}, status: :unauthorized
    end
  end

  def current_event_user
    return EventUser.active.find_by(user_id: current_user.id)
  end

  helper_method :current_event_user

  def current_event_songs
    result = []
    EventSong.all.order(:order).each do |event_song|
      if event_song.event_user.event_id == current_event_user.event_id
        result << event_song
      end
    end
    return result
  end

  helper_method :current_event_songs
end
