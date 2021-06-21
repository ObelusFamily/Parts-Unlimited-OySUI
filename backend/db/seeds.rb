# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
Comment.destroy_all
Item.destroy_all
User.destroy_all
users = User.create!([
    {
        email: "pablo@gmail.com",
        username: "Pablog",
        image: "https://image.freepik.com/vector-gratis/avatar-personaje-empresario-aislado_24877-60111.jpg",
        bio: "Nothing",
        password: "password1"
    },
    {
        email: "maria@gmail.com",
        username: "Mariag",
        image: "https://www.w3schools.com/howto/img_avatar2.png",
        bio: "Nothing",
        password: "password2"
    },
    {
        email: "bob@gmail.com",
        username: "Bobg",
        image: "https://cdn.icon-icons.com/icons2/1736/PNG/512/4043260-avatar-male-man-portrait_113269.png",
        bio: "Nothing",
        password: "password3"
    } 
])

items = Item.create!([
    {
        title: "Martians coming to earth!",
        description: "Yes, this is not fake news.",
        user: users.first   
    },
    {
        title: "Pandemic",
        description: "COVID-19 affects in different ways depending on each person. Most people who are infected have symptoms of mild or moderate intensity, and they recover without the need for hospitalization.",
        user: users.second   
    }
])

comments = Comment.create!([
    {
        body: "Nice!",
        user: users.second,
        item: items.first
    },
    {
        body: "Hey there!",
        user: users.third,
        item: items.first
    }
])

favorites = Favorite.create!([
    {
        item: items.first,
        user: users.third
    },
    {
        item: items.second,
        user: users.third
    }
])
