require 'spec_helper'

describe Customer do

  it { should have_many(:artworks) }
  it { should have_many(:favorites) }

  let(:blanks){[nil, '']}

  it { should have_valid(:name).when('John', 'Faizaan', 'Kevin Kwon') }
  it { should_not have_valid(:name).when(*blanks) }


  let(:invalid_emails){['user@mycom', 'usermy.com', 'user', '.com', 'my.com']}

  it { should have_valid(:email).when('John@gmail.com', 'faizaan@wizard.com', 'kkwon_123@kwon.com') }
  it { should_not have_valid(:email).when(*invalid_emails) }

  let(:invalid_amount){['99,999', -3]}

  it { should have_valid(:amount_spent).when(0, 99999, 10.30)}
  it { should_not have_valid(:amount_spent).when(*invalid_amount) }

end
