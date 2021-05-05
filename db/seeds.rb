
User.create(name: 'Riley', password_digest: 'password', bio: 'Long time hunter, famous for discovering the phantom of Fargos Pizza')

House.create(location: 'Fargos Pizza', kind: 'Restaurant', notes: 'Recently shuttered due to Covid-19', user_id: 1)

Ghost.create(name: 'Phantom of Fargos Pizza', kind: 'Phantom', notes: 'Prefers pepperoni pizza', user_id: 1)

Ghost.create(name: 'Satan Himself', kind: 'Demon', notes: 'Actually is pretty nice, all things considered.', user_id: 1)

Ghost.create(name: 'Peeves', kind: 'Poltergiest', notes: 'Unusually tidy behaviour', user_id: 1)