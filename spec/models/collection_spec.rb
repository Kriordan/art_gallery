require 'spec_helper'

describe Collection do
  
  it { should have_many(:favorites) }
  it { should have_many(:artworks) }

  let(:blanks) { [nil, ''] }

  it { should have_valid(:name).when('faizaan', 'voltron', 'beard collection') }
  it { should_not have_valid(:name).when(*blanks) }

end
