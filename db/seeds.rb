Author.destroy_all
Author.reset_pk_sequence
Category.destroy_all
Category.reset_pk_sequence
User.destroy_all
User.reset_pk_sequence
Book.destroy_all
Book.reset_pk_sequence
Checkout.destroy_all
Checkout.reset_pk_sequence

patrick_rothfuss = Author.create(name: "Patrick Rothfuss")

fantasy = Category.create(name: "Fantasy")

michael = User.create(name: "Michael")

name_of_the_wind = Book.create(title: "The Name of the Wind", author_id: patrick_rothfuss.id, category_id: fantasy.id)

puts "🌱 🌱 🌱  SEEDED 🌱 🌱 🌱 🌱 "