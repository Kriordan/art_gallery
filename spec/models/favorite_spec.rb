require 'spec_helper'

describe Favorite do
  
  it { should validate_presence_of(:collection) }
  it { should validate_presence_of(:customer) }
  it { should belong_to(:collection) }
  it { should belong_to(:customer) }

end
