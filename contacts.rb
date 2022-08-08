require 'pry'

# this method returns a hash, which you can pass to the remove_strawberry method:
# remove_strawberry(contacts)
def contacts
  {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we",
      favorite_ice_cream_flavors: ["chocolate", "vanilla"]
    },
    "Freddy Mercury" => {
      name: "Freddy",
      email: "freddy@mercury.com",
      favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }
end

def remove_strawberry(contacts)

  contacts.each do |k, v|
    if k == "Freddy Mercury"
      v.each do |k, v|
        if k == :favorite_ice_cream_flavors
          v = v.delete_if { |flavor| flavor == "strawberry" }
        end
      end
    end
  end

end

# print the output to the terminal for inspection
pp remove_strawberry(contacts)
