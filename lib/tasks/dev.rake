namespace :dev do
  desc "TODO"
  task setup: :environment do

    puts "Creating"

    params = { 
      product: {
        name: "Gato",
        description: "Gato Domestico",
        price: "1000",
        animal_attributes: {
           race: "Gato sem pelos"
        }
      }
    }
    Product.create!(params[:product])

    params = { 
      product: {
        name: "Brinquedo para Gato",
        description: "Brinquedo para gato arranhar",
        price: "50",
        toy_attributes: {
          brand: "black_hawk"
        }
      }
    }
    Product.create!(params[:product])

    params = { 
      product: {
        name: "Gatomol",
        description: "Remedio para gatos",
        price: "89,00",
        remedy_attributes: {
          controlled: false
        }
      }
    } 

    Product.create!(params[:product])

    puts "Finish"

  end

end
