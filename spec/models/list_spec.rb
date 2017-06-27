require 'rails_helper'

RSpec.describe List, type: :model do
 describe '#complete_all_tasks!' do
    it 'should switch complete attribute to true if it began as false' do
      task = Task.create(complete: false)
      task.complete_all_tasks!
      expect(task.complete_all_tasks).to eq(true)
    end

     it 'should switch complete attribute to true if it began as true' do
      task = Task.create(complete: true)
      task.complete_all_tasks!
      expect(task.complete_all_tasks).to eq(false)
    end
  end

  describe '#snooze_all_tasks!' do
    it 'should snooze all tasks by one hour' do
      time = Time.now
      task = Task.create(deadline: time_now)
      task.snooze.hour!
      expect(task.deadline).to eq(time_now + 1.hour)
    end

  # describe '#total_duration' do
  #   it 'should '
  end

end
