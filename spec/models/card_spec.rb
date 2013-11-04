require 'spec_helper'

describe Card do
  it { should belong_to :survey }
  it { should belong_to :person }
  it { should have_many :reply_cards }

  it { should validate_presence_of :survey }
  it { should validate_presence_of :person }
end