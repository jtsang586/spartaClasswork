class Person 

    def name
        # create a name variable
        name = "Steve"
    end 

    def age
        # create age variable here
        age = 29

    end

    def children
        # create children array here
        children = ["Abra", "Kadabra", "Alakazam", "Mewtwo"]

    end

    def address

        # create address hash here
        address = {
            house_number: 10,
            street: "Cranwell close",
            town: "Shenley Brook End",
            county: "Milton Keynes",
            postcode: "MK5 7BU",
            email_addresses:["dssadsad","dsdsadada"]
        }

    end

    def password

        # do not change these variables
        favourite_things = ["motorbike" , "cat" , "travel"]
        memorable_stuff = {
          birth_year: 1983,
          mothers_name: "Eve",
          birth_town: "Richmond"
        }
        password = "#{favourite_things[1]} #{memorable_stuff[:birth_town]}" 

    end

end