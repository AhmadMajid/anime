class AnimeItem < ApplicationRecord
  belongs_to :anime_list

  def completed?
    !completed_at.blank?
  end
end
