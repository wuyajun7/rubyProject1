class Photo < ApplicationRecord
  belongs_to :owner, polymorphic: true #图片所有者 设置成多态

  #挂载图片 到 表字段上（image） 用 ImageUploader 处理
  mount_uploader :image, ImageUploader
end
