class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events, id: :uuid do |t|
      t.has_many :userEventLinks
      t.string :name
      t.string :eventCode
      t.uuid :eventTypeId
      t.string :description
      t.date :date
      t.time :startTime
      t.time :endTime
      t.timestamps
    end
  end
end
