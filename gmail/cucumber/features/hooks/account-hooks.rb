Before '@account_data' do
  $create_account = 'Create your Google Account'
  $password = Faker::Base.numerify('rand####')
  $first_name = Faker::Name.name
  $last_name = Faker::Name.name
  $email = Faker::Base.numerify('QA#######')
  $day = Faker::Number.between(1, 31)
  $year = Faker::Base.numerify('19##')
  $phone = Faker::Base.numerify('+35193#######')
  $current_email = Faker::Internet.email('currentQA')
  $terms = 'Privacy and Terms'
end
