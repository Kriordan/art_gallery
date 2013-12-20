require 'spec_helper'

describe Artwork do

  it { should belong_to(:artist) }
  it { should belong_to(:customer) }

  it { should validate_presence_of(:artist) }

  it { should belong_to(:collection) }
  
  let(:blanks){[nil, '']}

  it { should have_valid(:name).when('Mona Lisa', 'Faizaan', 'Rainbows') }
  it { should_not have_valid(:name).when(*blanks) }

  it { should have_valid(:type_of_art).when('Painting', 'photo', 'sculpture') }
  it { should_not have_valid(:type_of_art).when(*blanks) }

  let(:invalid_amount){['99,999', -3, 0]}

  it { should have_valid(:cost).when(1, 99999, 10.30)}
  it { should_not have_valid(:cost).when(*invalid_amount) }

end
