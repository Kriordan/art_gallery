require 'spec_helper'

describe Collection do
  
  let(:blanks) { [nil, ''] }

  it { should have_valid(:name).when('faizaan', 'voltron', 'beard collection') }
  it { should_not have_valid(:name).when(*blanks) }

end
