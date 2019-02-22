class Issue < ApplicationRecord
  belongs_to :user
  has_one_attached :file

  has_many :issue_tag_ships, dependent: :destroy
  has_many :issuetags, through: :issue_tag_ships

  has_many :issue_group_ships, dependent: :destroy
  has_many :groups, through: :issue_group_ships

  validates_numericality_of :priority, :in => 1..3

  after_create do
    hashtags = self.description.scan(/#\w+/)
    hashtags.uniq.map do |hashtag|
      tag = Issuetag.find_or_create_by(name: hashtag.downcase.delete('#'))
      self.issuetags << tag
    end
  end

  after_update do
    self.issuetags.clear
    hashtags = self.description.scan(/#\w+/)
    hashtags.uniq.map do |hashtag|
      tag = Issuetag.find_or_create_by(name: hashtag.downcase.delete('#'))
      self.issuetags << tag
    end
  end

  def state_tag
    if state == "To Do"
      "label-primary"
    elsif state == "Doing"
      "label-info"
    elsif state == "Done"
      "label-success"
    else
    end
  end

  def importance
    ("★" if priority == 1) || ("★★" if priority == 2) || "★★★"
  end
end
