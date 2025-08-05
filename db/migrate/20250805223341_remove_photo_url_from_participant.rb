class RemovePhotoUrlFromParticipant < ActiveRecord::Migration[8.0]
  def change
    remove_column :participants, :photo_url
  end
end
