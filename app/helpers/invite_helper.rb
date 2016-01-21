module InviteHelper
  def user_info
    request.env['omniauth.auth'][:info][:raw_info].to_hash.symbolize_keys
  end
end
