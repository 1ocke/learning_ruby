# frozen_string_literal: true

class ApplicationController < ActionController::Base
  def render_403
    render file: 'public/403.html', status: :forbidden
  end

  def render_404
    render file: 'public/404.html', status: :not_found
  end

  def admin?
    render_403 unless user_signed_in?
  end
end
