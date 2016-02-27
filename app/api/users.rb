module Entities
  class User < Grape::Entity
    # 名前だけ返すように設定
    expose :name
  end
end

class Users < Grape::API
  desc 'get users', entity: Entities::User
  get '/' do
    present User.all, with: Entities::User
  end
end
