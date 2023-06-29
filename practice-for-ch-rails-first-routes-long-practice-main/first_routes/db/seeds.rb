# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


# Create a bunch of users
User.create(username: 'Hari')
User.create(username: 'juliofoolio')
User.create(username: 'tswiftie52')
User.create(username: 'elliotk')
User.create(username: 'elliotC')
User.create(username: 'ashley')
User.create(username: 'shali')
User.create(username: 'stefan')
User.create(username: 'dominic')
p "Finished creating users!"


# Create a bunch of artworks
p "Creating artworks"
Artwork.create({title: 'Mona Lisa', image_url: 'monalist@gmail.com', artist_id: 3})      # 1
Artwork.create(title: 'Starry Night', image_url: 'starryblurry@gmail.com', artist_id: 2) # 2
Artwork.create(title: 'Bayc', image_url: 'bayc@hostingplace.com', artist_id: 3)
Artwork.create(title: 'Tears in the Rain', image_url: 'thatoneshow@imgur.com', artist_id: 4)
Artwork.create(title: 'Girl with the Pearl Earing', image_url: 'gwtpe@google.com', artist_id: 5)
Artwork.create(title: 'The Last Supper', image_url: 'tls@apple.com', artist_id: 6)
Artwork.create(title: 'The Night Watch', image_url: 'nighttime@googlelcom', artist_id: 5)
Artwork.create(title: 'Night Cafe', image_url: 'nightcafe@googs.com', artist_id: 3)
Artwork.create(title: 'The Kiss', image_url: 'kiss123@google.com', artist_id: 3)
Artwork.create(title: 'Birth of Venus', image_url: 'venus@apple.com', artist_id: 4)
Artwork.create(title: 'Rothko: Red', image_url: 'red@google.com', artist_id: 2)
p "Finished creating artworks"

# Create art shares
p "Creating shares"
ArtworkShare.create(artwork_id: 1, viewer_id: 2)
ArtworkShare.create(artwork_id: 4, viewer_id: 3)
ArtworkShare.create(artwork_id: 3, viewer_id: 4)
ArtworkShare.create(artwork_id: 2, viewer_id: 5)
ArtworkShare.create(artwork_id: 3, viewer_id: 6)
ArtworkShare.create(artwork_id: 2, viewer_id: 4)
ArtworkShare.create(artwork_id: 2, viewer_id: 3)
ArtworkShare.create(artwork_id: 5, viewer_id: 4)
ArtworkShare.create(artwork_id: 4, viewer_id: 6)
ArtworkShare.create(artwork_id: 7, viewer_id: 8)
ArtworkShare.create(artwork_id: 8, viewer_id: 9)
ArtworkShare.create(artwork_id: 9, viewer_id: 12)
ArtworkShare.create(artwork_id: 10, viewer_id: 11)
ArtworkShare.create(artwork_id: 11, viewer_id: 6)
p "Finished creating objects"
