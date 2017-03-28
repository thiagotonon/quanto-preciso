require "rails_helper"

RSpec.describe Notice, type: :model do

  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:posted_at) }

end