class Plan < ApplicationRecord
  validates :title, presence:true, length: { maximum: 20 }
  validates :start_date, presence:true
  validates :end_date, presence:true
  validates :memo, length: { maximum: 500 }

  validate :not_exceed_start_date

  def not_exceed_start_date
    unless start_date == nil || end_date == nil
      errors.add(:end_date, "は開始日以降の日付で選択してください。") if end_date < start_date
    end
  end
end
