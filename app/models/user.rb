class User < ApplicationRecord
    def self.find_or_create_from_auth_hash!(auth_hash)
        provider = auth_hash[:provider]
        uid = auth_hash[:uid]
        nickname = auth_hash[:info][:nickname]
        image_url = auth_hash[:info][:image]
    
        # find_or_create_by!メソッドで引数のproviderとuidを持つレコードがあればそのオブジェクトを返し、なければ作成して作成したオブジェクトを返す。
        User.find_or_create_by!(provider: provider, uid: uid) do |user|
          user.name = nickname
          user.image_url = image_url
        end
    end
end
