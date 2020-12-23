class User < ActiveRecord::Base
    has_many :checkouts
    has_many :books, through: :checkouts


    def checkout_book(book, due_date)
        book_checkout = Checkout.create(book_id: book.id, user_id: self.id, due_date: due_date)
        book_checkout.update(checked_out: true)        
    end

    def return_book(book)
        book_checkout = Checkout.where(book_id: book.id, user_id: self.id).last
        book_checkout.update(checked_out: false)
        puts "This book is overdue" if book_checkout.due_date < DateTime.now
    end



end