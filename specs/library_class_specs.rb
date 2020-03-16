require('minitest/autorun')
require('minitest/reporters')

require_relative('../library_class.rb')

class TestLibraryClass < MiniTest::Test

    def setup
        first_books = [{
                        title: "lord_of_the_rings",
                        rental_details:
                            {
                                student_name: "jeff",
                                date: "01/12/16"
                            }
                        },
                        {
                        title:"alphabet for dummies",
                        rental_details:
                            {
                                student_name: "jake",
                                date: "02/12/16"
                            }
                        },
                        {
                        title: "mechanics for dummies",
                        rental_details:
                            {
                                student_name: "jane",
                                date: "03/12/16"
                            }
                        }]
        @tokyo_library = LibraryClass.new("tokyo_city_library",first_books)

    end

    #create a test getter for the books
    def test_001_get_books
        assert_equal("[{:title=>\"lord_of_th",@tokyo_library.get_books.to_s[0..20])
    end
    #create a test for method that takes in a book title and retuns all associated information
    def test_002_get_all_info_of_1_book
        assert_equal({title: "lord_of_the_rings",
                                rental_details:{
                                    student_name: "jeff",
                                    date: "01/12/16"
                                    }
                                },@tokyo_library.lookup_book("lord_of_the_rings"))
                            end

    def test_002_get_all_info_of_1_book_fail
        assert_nil@tokyo_library.lookup_book("harry_potter")
    end
    #create a test for method that takes in a book title and adds it to book list
    #student names and date are empty string
    def test_003_add_book
        @tokyo_library.add_book("globalism")
        assert_equal(4,@tokyo_library.get_books.length)
    end
    #create a test for method that changes the rental details by taking in the title of the book,
    #the student renting it and the date its due to be returned
    def test_004_rental_update
        @tokyo_library.rental_updater("lord_of_the_rings","jake","01/01/17")
        assert_equal({title: "lord_of_the_rings",
                                rental_details:{
                                    student_name: "jake",
                                    date: "01/01/17"
                                    }}, @tokyo_library.lookup_book("lord_of_the_rings"))
    end
end
