def populate_identities(identities)
  identities.each do |identity|
    Identity.create(name: identity)
    WantedConnection.create(name: identity)
  end
end

identities = ['Influencer', 'Blogger', 'Instagrammer', 'Fashion Label', 'Online Creative']
populate_identities(identities)


u = User.create!(
                 contact_name: 'Meredith McMaster',
                 website: 'meredithmcmastermillinery.bigcartel.com',
                 email: 'meredithmcmastermillinery@gmail.com',
                 goals: 'Connections to positive, fun and like minded people',
                 requirements: 'Influencer in racing fashion, Female, Blogger/instagrammer'
                )

u.identities << Identity.find_by(name: 'Fashion Label')

u.wanted_connections << WantedConnection.find_by(name: 'Influencer')
u.wanted_connections << WantedConnection.find_by(name: 'Blogger')
u.wanted_connections << WantedConnection.find_by(name: 'Instagrammer')
u.wanted_connections << WantedConnection.find_by(name: 'Fashion Label')
u.wanted_connections << WantedConnection.find_by(name: 'Online Creative')


u = User.create!(
                 contact_name: 'Lily Riek',
                 website: 'www.thestylishteacher.net',
                 email: 'thestylishteacher@hotmail.com',
                 goals: 'Expand connections, Build following, Increase blog traffic',
                 requirements: 'Female, Ability to develop an ongoing relationship, Well made, quality products'
                )

u.identities << Identity.find_by(name: 'Influencer')
u.identities << Identity.find_by(name: 'Blogger')
u.identities << Identity.find_by(name: 'Instagrammer')

u.wanted_connections << WantedConnection.find_by(name: 'Fashion Label')

u = User.create!(
                 contact_name: 'Lisa Anderson',
                 website: 'lisamaryanderson.wordpress.com',
                 email: 'andersonlisamary@gmail.com',
                 goals: 'I would like to be able primarily to get in touch with brands that I can collaborate with and create connections nation wide. I would also like to be able to network with fellow bloggers and instagrammers to be able to put together my own networking event in Brisbane.',
                 requirements: 'Relatively established with a good follow-ship base- not just starting out.
Brands- Australia wide, Bloggers/instagrammers- Brisbane Based. Quality brands that align with my style- it would be of no use to me having connections with a brand that is polar opposite to my sense of style.'
                )

u.identities << Identity.find_by(name: 'Influencer')
u.identities << Identity.find_by(name: 'Blogger')
u.identities << Identity.find_by(name: 'Instagrammer')

u.wanted_connections << WantedConnection.find_by(name: 'Influencer')
u.wanted_connections << WantedConnection.find_by(name: 'Blogger')
u.wanted_connections << WantedConnection.find_by(name: 'Instagrammer')
u.wanted_connections << WantedConnection.find_by(name: 'Fashion Label')
