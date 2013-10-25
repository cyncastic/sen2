class Header < ActiveRecord::Base

  mount_uploader :image, HeaderUploader

  validates :image, presence: true

  validate :only_one_active_header
  scope :active, where(:active => true)

  protected

  def only_one_active_header
    return unless active?

    matches = Header.active
    if persisted?
      matches = matches.where('id != ?', id)
    end
    if matches.exists?
      errors.add(:active, 'cannot have another active header')
    end
  end

end
