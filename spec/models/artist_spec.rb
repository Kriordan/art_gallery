require 'spec_helper'

describe Artist do
  let(:blanks){[nil, '']}

  it { should have_valid(:name).when('Keith', 'Kevin', 'Faizaan Super') }
  it { should_not have_valid(:name).when(*blanks) }

  it { should have_valid(:birthplace).when('Tokyo, Japan', 'Boston, MA', 'Faizaan Hospital, New York City, NY') }
  it { should_not have_valid(:birthplace).when(*blanks) }

  it { should have_valid(:style_of_art).when('modern', 'classical', 'Postmodern Faizaan') }
  it { should_not have_valid(:style_of_art).when(*blanks) }

  let(:invalid_emails){['user@mycom', 'hello', '.com', 'user.com']}

  it { should have_valid(:email).when('Keith@gmail.com', 'kevin@lalalalala.com', 'faiz_aan_89@wizard.com') }
  it { should_not have_valid(:email).when(*invalid_emails) }


end
