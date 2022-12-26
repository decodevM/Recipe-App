//
//  RecipeModel.swift
//  Recipe App
//
//  Created by Inconnu on 12/26/22.
//

import Foundation

enum Category: String, CaseIterable, Identifiable{
    var id: String {self.rawValue}
    
    case breakfast = "Breakfast"
    case soup = "Soup"
    case salad = "Salad"
    case appetizer = "Appetizer"
    case main = "Main"
    case side = "Side"
    case dessert = "Dessert"
    case snack = "Snack"
    case drink = "Drink"
}

struct Recipe: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let ingredients: String
    let directions: String
    let category: Category.RawValue
    let datePublished: String
    let url: String
}

extension Recipe {
    static let all: [Recipe] = [
        Recipe(
            name: "Air-Fryer Taquitos with Cauliflower and Black Beans",
            
            image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/97162/Air-Fryer-Taquitos-Recipe-688x387-c.jpg",
            
            description: "The air fryer cooks these taquitos just right—crunchy on the outside and tender on the inside. When placing taquitos in an airfryer, it helps to position them seam side down so that they hold their shape and stay closed as they cook. Check out more of our favorite vegan air-fryer recipes!",
            
            ingredients: "1½ cups chopped fresh mushrooms. \n1 cup finely chopped onion, \n1 cup finely chopped green bell pepper, \n1 clove garlic, minced. \n1 15-ounce can black beans, rinsed and drained. \n2 tablespoons tomato paste. \n4½ teaspoons salt-free taco seasoning. \n2 cups riced cauliflower. \n1 tablespoon lemon juice. \n¼ teaspoon sea salt. \n10 5-inch corn tortillas. \n1¼ cups guacamole",
            
            directions: "Preheat air fryer to 320°F for 8 minutes.\nFor filling, in a saucepan cook mushrooms, onion, bell pepper, and garlic in ¼ cup water over medium about 10 minutes or until onion starts to turn translucent, stirring occasionally. Add water, 1 to 2 tablespoons at a time, as needed to prevent sticking. Stir in beans, tomato paste, and taco seasoning. Cook 5 minutes, stirring occasionally. Remove from heat. Stir in riced cauliflower, lemon juice, and salt. Taste and adjust seasoning.\nWarm tortillas according to package directions. Wrap in a kitchen towel to keep warm. To assemble taquitos, lay a warm tortilla on a clean surface. Spoon tablespoons filling horizontally across middle of tortilla. Starting from edge closest to you, roll up tortilla, tucking it under filling and rolling tightly to make a thin roll. Place assembled taquito on a tray lined with an additional kitchen towel. Keep covered. Repeat with remaining tortillas and filling.\nTransfer half of the taquitos, or as many as can fit, into the air fryer. Air-fry 5 to 7 minutes or until tortillas are crisp and slightly browned around the edges. Serve warm with guacamole.",
            category: "Breakfast",
            datePublished: "Sep 19, 2019",
            url: "https://www.forksoverknives.com/recipes/vegan-baked-stuffed/air-fryer-taquitos-cauliflower-black-beans/"
        ),
        
        
        Recipe(
            name: "Thai Vegetable Noodle Soup",
            
            image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/110702/Thai-Spring-Noodle-Soup-wordpress-scaled-688x387-c.jpg",
            
            description: "This recipe requires just one pot and 25 minutes. With lots of veggies and plenty of Thai spices, this brightly flavored Thai noodle soup is both colorful and comforting.",
            
            ingredients: "½ cup thinly sliced scallions (green onions). \n2 tablespoons Thai Spice Blend. \n4 cups low-sodium vegetable stock or water. \n1 cup 1-inch pieces green beans. \n1 cup thinly sliced carrots. \n4 oz. dry brown rice noodles. \n1 cup snow peas, trimmed and halved crosswise. \n1 cup 1-inch broccoli and/or cauliflower florets. \n1 baby bok choy, cut into 1-inch pieces. \n1 cup unsweetened, unflavored plant milk. \n3 tablespoons lime juice. \n⅛ teaspoon sea salt. \n4 to 6 fresh basil leaves, torn into pieces",
            
            directions: "In a large saucepan combine scallions, Thai Spice Blend, and ¼ cup water. Cook over medium 2 minutes. Add stock, green beans, and carrots. Bring to boiling; reduce heat. Simmer, uncovered, 5 minutes. Add noodles, snow peas, broccoli, and bok choy; simmer 5 to 7 minutes more or until noodles are cooked. Add milk; cook 1 minute. Stir in lime juice and salt. Garnish with basil.",
            category: "Breakfast",
            datePublished: "Feb 20, 2020",
            url: "https://www.forksoverknives.com/recipes/vegan-soups-stews/thai-spring-noodle-soup/"
        ),
        
        Recipe(
            name: "Butternut Squash Mac and Cheese with Broccoli",
            
            image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/128193/butternut-broccoli-mac-and-cheese-wordpress-688x387-c.jpg",
            
            description: "Spiced butternut squash blended with nutritional yeast and a little plant milk makes a delightfully rich and “cheesy” sauce for pasta and broccoli. Pumpkin, acorn squash, or delicata squash will also work in this recipe. To make this recipe gluten-free, chose a whole grain pasta made with rice, corn, and/or quinoa.",
            
            ingredients: "½ cup thinly sliced scallions (green onions). \n2 tablespoons Thai Spice Blend. \n4 cups low-sodium vegetable stock or water. \n1 cup 1-inch pieces green beans. \n1 cup thinly sliced carrots. \n4 oz. dry brown rice noodles. \n1 cup snow peas, trimmed and halved crosswise. \n1 cup 1-inch broccoli and/or cauliflower florets. \n1 baby bok choy, cut into 1-inch pieces. \n1 cup unsweetened, unflavored plant milk. \n3 tablespoons lime juice. \n⅛ teaspoon sea salt. \n4 to 6 fresh basil leaves, torn into pieces",
            
            directions: "In a large saucepan combine scallions, Thai Spice Blend, and ¼ cup water. Cook over medium 2 minutes. Add stock, green beans, and carrots. Bring to boiling; reduce heat. Simmer, uncovered, 5 minutes. Add noodles, snow peas, broccoli, and bok choy; simmer 5 to 7 minutes more or until noodles are cooked. Add milk; cook 1 minute. Stir in lime juice and salt. Garnish with basil.",
            category: "Breakfast",
            datePublished: "Sep 1, 2020",
            url: "https://www.forksoverknives.com/recipes/vegan-pasta-noodles/butternut-mac-and-cheese-broccoli/"
        ),
        
        Recipe(
            name: "Five-Ingredient Veggie Burger",
            
            image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/97352/Five-Ingredient-Veggie-Burgers-Wordpress-1-688x387-c.jpg",
            
            description: "Cooking these earthy-tasting burgers in a very hot skillet creates delightfully crispy edges. All you need to make the delicious patties are five simple ingredients, plus salt and pepper. Serve with homemade ketchup, fresh-tasting mustard, Cheesy Caesar Dressing, Vegan Cheesy Sauce, or other condiments of your choosing. ",
            
            ingredients: "½ cup thinly sliced scallions (green onions). \n2 tablespoons Thai Spice Blend. \n4 cups low-sodium vegetable stock or water. \n1 cup 1-inch pieces green beans. \n1 cup thinly sliced carrots. \n4 oz. dry brown rice noodles. \n1 cup snow peas, trimmed and halved crosswise. \n1 cup 1-inch broccoli and/or cauliflower florets. \n1 baby bok choy, cut into 1-inch pieces. \n1 cup unsweetened, unflavored plant milk. \n3 tablespoons lime juice. \n⅛ teaspoon sea salt. \n4 to 6 fresh basil leaves, torn into pieces",
            
            directions: "In a large saucepan combine scallions, Thai Spice Blend, and ¼ cup water. Cook over medium 2 minutes. Add stock, green beans, and carrots. Bring to boiling; reduce heat. Simmer, uncovered, 5 minutes. Add noodles, snow peas, broccoli, and bok choy; simmer 5 to 7 minutes more or until noodles are cooked. Add milk; cook 1 minute. Stir in lime juice and salt. Garnish with basil.",
            category: "Breakfast",
            datePublished: "Sep 25, 2019",
            url: "https://www.forksoverknives.com/recipes/vegan-burgers-wraps/five-ingredient-veggie-burger/"
        ),
        
        Recipe(
            name: "Delicata Squash and Roasted Cabbage Stew",
            
            image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/158836/Jackfruit-Chowder-wordpress-688x387-c.jpg",
            
            description: "This hearty winter stew is full of German-style flavors that will warm your belly on a cold night. Bright yellow delicata squash melds with earthy cabbage, creamy white beans, and hearty potatoes to create a chunky and oh-so-satisfying stew. Coarse-grain mustard is stirred into the savory broth to pay homage to Germanic classics (think bratwurst flavors without the meat) while toasted caraway seeds add a subtle licorice zing to each bite. The pumpernickel croutons make this cabbage soup recipe absolutely drool-worthy, and you can use extras in a salad later in the week.",
            
            ingredients: "½ cup thinly sliced scallions (green onions). \n2 tablespoons Thai Spice Blend. \n4 cups low-sodium vegetable stock or water. \n1 cup 1-inch pieces green beans. \n1 cup thinly sliced carrots. \n4 oz. dry brown rice noodles. \n1 cup snow peas, trimmed and halved crosswise. \n1 cup 1-inch broccoli and/or cauliflower florets. \n1 baby bok choy, cut into 1-inch pieces. \n1 cup unsweetened, unflavored plant milk. \n3 tablespoons lime juice. \n⅛ teaspoon sea salt. \n4 to 6 fresh basil leaves, torn into pieces",
            
            directions: "In a large saucepan combine scallions, Thai Spice Blend, and ¼ cup water. Cook over medium 2 minutes. Add stock, green beans, and carrots. Bring to boiling; reduce heat. Simmer, uncovered, 5 minutes. Add noodles, snow peas, broccoli, and bok choy; simmer 5 to 7 minutes more or until noodles are cooked. Add milk; cook 1 minute. Stir in lime juice and salt. Garnish with basil.",
            category: "Soup",
            datePublished: "Nov 14, 2022",
            url: "https://www.forksoverknives.com/recipes/vegan-soups-stews/delicata-squash-and-roasted-cabbage-stew/"
        ),
        
        
        Recipe(
            name: "Five-Ingredient Veggie Burger",
            
            image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/97352/Five-Ingredient-Veggie-Burgers-Wordpress-1-688x387-c.jpg",
            
            description: "Cooking these earthy-tasting burgers in a very hot skillet creates delightfully crispy edges. All you need to make the delicious patties are five simple ingredients, plus salt and pepper. Serve with homemade ketchup, fresh-tasting mustard, Cheesy Caesar Dressing, Vegan Cheesy Sauce, or other condiments of your choosing. ",
            
            ingredients: "½ cup thinly sliced scallions (green onions). \n2 tablespoons Thai Spice Blend. \n4 cups low-sodium vegetable stock or water. \n1 cup 1-inch pieces green beans. \n1 cup thinly sliced carrots. \n4 oz. dry brown rice noodles. \n1 cup snow peas, trimmed and halved crosswise. \n1 cup 1-inch broccoli and/or cauliflower florets. \n1 baby bok choy, cut into 1-inch pieces. \n1 cup unsweetened, unflavored plant milk. \n3 tablespoons lime juice. \n⅛ teaspoon sea salt. \n4 to 6 fresh basil leaves, torn into pieces",
            
            directions: "In a large saucepan combine scallions, Thai Spice Blend, and ¼ cup water. Cook over medium 2 minutes. Add stock, green beans, and carrots. Bring to boiling; reduce heat. Simmer, uncovered, 5 minutes. Add noodles, snow peas, broccoli, and bok choy; simmer 5 to 7 minutes more or until noodles are cooked. Add milk; cook 1 minute. Stir in lime juice and salt. Garnish with basil.",
            category: "Salad",
            datePublished: "Sep 25, 2019",
            url: "https://www.forksoverknives.com/recipes/vegan-burgers-wraps/five-ingredient-veggie-burger/"
        ),
        
        Recipe(
            name: "Five-Ingredient Veggie Burger",
            
            image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/97352/Five-Ingredient-Veggie-Burgers-Wordpress-1-688x387-c.jpg",
            
            description: "Cooking these earthy-tasting burgers in a very hot skillet creates delightfully crispy edges. All you need to make the delicious patties are five simple ingredients, plus salt and pepper. Serve with homemade ketchup, fresh-tasting mustard, Cheesy Caesar Dressing, Vegan Cheesy Sauce, or other condiments of your choosing. ",
            
            ingredients: "½ cup thinly sliced scallions (green onions). \n2 tablespoons Thai Spice Blend. \n4 cups low-sodium vegetable stock or water. \n1 cup 1-inch pieces green beans. \n1 cup thinly sliced carrots. \n4 oz. dry brown rice noodles. \n1 cup snow peas, trimmed and halved crosswise. \n1 cup 1-inch broccoli and/or cauliflower florets. \n1 baby bok choy, cut into 1-inch pieces. \n1 cup unsweetened, unflavored plant milk. \n3 tablespoons lime juice. \n⅛ teaspoon sea salt. \n4 to 6 fresh basil leaves, torn into pieces",
            
            directions: "In a large saucepan combine scallions, Thai Spice Blend, and ¼ cup water. Cook over medium 2 minutes. Add stock, green beans, and carrots. Bring to boiling; reduce heat. Simmer, uncovered, 5 minutes. Add noodles, snow peas, broccoli, and bok choy; simmer 5 to 7 minutes more or until noodles are cooked. Add milk; cook 1 minute. Stir in lime juice and salt. Garnish with basil.",
            category: "Breakfast",
            datePublished: "Sep 25, 2019",
            url: "https://www.forksoverknives.com/recipes/vegan-burgers-wraps/five-ingredient-veggie-burger/"
        ),
        
        Recipe(
            name: "Delicata Squash and Roasted Cabbage Stew",
            
            image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/158836/Jackfruit-Chowder-wordpress-688x387-c.jpg",
            
            description: "This hearty winter stew is full of German-style flavors that will warm your belly on a cold night. Bright yellow delicata squash melds with earthy cabbage, creamy white beans, and hearty potatoes to create a chunky and oh-so-satisfying stew. Coarse-grain mustard is stirred into the savory broth to pay homage to Germanic classics (think bratwurst flavors without the meat) while toasted caraway seeds add a subtle licorice zing to each bite. The pumpernickel croutons make this cabbage soup recipe absolutely drool-worthy, and you can use extras in a salad later in the week.",
            
            ingredients: "½ cup thinly sliced scallions (green onions). \n2 tablespoons Thai Spice Blend. \n4 cups low-sodium vegetable stock or water. \n1 cup 1-inch pieces green beans. \n1 cup thinly sliced carrots. \n4 oz. dry brown rice noodles. \n1 cup snow peas, trimmed and halved crosswise. \n1 cup 1-inch broccoli and/or cauliflower florets. \n1 baby bok choy, cut into 1-inch pieces. \n1 cup unsweetened, unflavored plant milk. \n3 tablespoons lime juice. \n⅛ teaspoon sea salt. \n4 to 6 fresh basil leaves, torn into pieces",
            
            directions: "In a large saucepan combine scallions, Thai Spice Blend, and ¼ cup water. Cook over medium 2 minutes. Add stock, green beans, and carrots. Bring to boiling; reduce heat. Simmer, uncovered, 5 minutes. Add noodles, snow peas, broccoli, and bok choy; simmer 5 to 7 minutes more or until noodles are cooked. Add milk; cook 1 minute. Stir in lime juice and salt. Garnish with basil.",
            category: "Soup",
            datePublished: "Nov 14, 2022",
            url: "https://www.forksoverknives.com/recipes/vegan-soups-stews/delicata-squash-and-roasted-cabbage-stew/"
        ),
        
        
        Recipe(
            name: "Five-Ingredient Veggie Burger",
            
            image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/97352/Five-Ingredient-Veggie-Burgers-Wordpress-1-688x387-c.jpg",
            
            description: "Cooking these earthy-tasting burgers in a very hot skillet creates delightfully crispy edges. All you need to make the delicious patties are five simple ingredients, plus salt and pepper. Serve with homemade ketchup, fresh-tasting mustard, Cheesy Caesar Dressing, Vegan Cheesy Sauce, or other condiments of your choosing. ",
            
            ingredients: "½ cup thinly sliced scallions (green onions). \n2 tablespoons Thai Spice Blend. \n4 cups low-sodium vegetable stock or water. \n1 cup 1-inch pieces green beans. \n1 cup thinly sliced carrots. \n4 oz. dry brown rice noodles. \n1 cup snow peas, trimmed and halved crosswise. \n1 cup 1-inch broccoli and/or cauliflower florets. \n1 baby bok choy, cut into 1-inch pieces. \n1 cup unsweetened, unflavored plant milk. \n3 tablespoons lime juice. \n⅛ teaspoon sea salt. \n4 to 6 fresh basil leaves, torn into pieces",
            
            directions: "In a large saucepan combine scallions, Thai Spice Blend, and ¼ cup water. Cook over medium 2 minutes. Add stock, green beans, and carrots. Bring to boiling; reduce heat. Simmer, uncovered, 5 minutes. Add noodles, snow peas, broccoli, and bok choy; simmer 5 to 7 minutes more or until noodles are cooked. Add milk; cook 1 minute. Stir in lime juice and salt. Garnish with basil.",
            category: "Salad",
            datePublished: "Sep 25, 2019",
            url: "https://www.forksoverknives.com/recipes/vegan-burgers-wraps/five-ingredient-veggie-burger/"
        ),
        
        Recipe(
            name: "Air-Fryer Taquitos with Cauliflower and Black Beans",
            
            image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/97162/Air-Fryer-Taquitos-Recipe-688x387-c.jpg",
            
            description: "The air fryer cooks these taquitos just right—crunchy on the outside and tender on the inside. When placing taquitos in an airfryer, it helps to position them seam side down so that they hold their shape and stay closed as they cook. Check out more of our favorite vegan air-fryer recipes!",
            
            ingredients: "1½ cups chopped fresh mushrooms. \n1 cup finely chopped onion, \n1 cup finely chopped green bell pepper, \n1 clove garlic, minced. \n1 15-ounce can black beans, rinsed and drained. \n2 tablespoons tomato paste. \n4½ teaspoons salt-free taco seasoning. \n2 cups riced cauliflower. \n1 tablespoon lemon juice. \n¼ teaspoon sea salt. \n10 5-inch corn tortillas. \n1¼ cups guacamole",
            
            directions: "Preheat air fryer to 320°F for 8 minutes.\nFor filling, in a saucepan cook mushrooms, onion, bell pepper, and garlic in ¼ cup water over medium about 10 minutes or until onion starts to turn translucent, stirring occasionally. Add water, 1 to 2 tablespoons at a time, as needed to prevent sticking. Stir in beans, tomato paste, and taco seasoning. Cook 5 minutes, stirring occasionally. Remove from heat. Stir in riced cauliflower, lemon juice, and salt. Taste and adjust seasoning.\nWarm tortillas according to package directions. Wrap in a kitchen towel to keep warm. To assemble taquitos, lay a warm tortilla on a clean surface. Spoon tablespoons filling horizontally across middle of tortilla. Starting from edge closest to you, roll up tortilla, tucking it under filling and rolling tightly to make a thin roll. Place assembled taquito on a tray lined with an additional kitchen towel. Keep covered. Repeat with remaining tortillas and filling.\nTransfer half of the taquitos, or as many as can fit, into the air fryer. Air-fry 5 to 7 minutes or until tortillas are crisp and slightly browned around the edges. Serve warm with guacamole.",
            category: "Breakfast",
            datePublished: "Sep 19, 2019",
            url: "https://www.forksoverknives.com/recipes/vegan-baked-stuffed/air-fryer-taquitos-cauliflower-black-beans/"
        ),
        
        
        Recipe(
            name: "Thai Vegetable Noodle Soup",
            
            image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/110702/Thai-Spring-Noodle-Soup-wordpress-scaled-688x387-c.jpg",
            
            description: "This recipe requires just one pot and 25 minutes. With lots of veggies and plenty of Thai spices, this brightly flavored Thai noodle soup is both colorful and comforting.",
            
            ingredients: "½ cup thinly sliced scallions (green onions). \n2 tablespoons Thai Spice Blend. \n4 cups low-sodium vegetable stock or water. \n1 cup 1-inch pieces green beans. \n1 cup thinly sliced carrots. \n4 oz. dry brown rice noodles. \n1 cup snow peas, trimmed and halved crosswise. \n1 cup 1-inch broccoli and/or cauliflower florets. \n1 baby bok choy, cut into 1-inch pieces. \n1 cup unsweetened, unflavored plant milk. \n3 tablespoons lime juice. \n⅛ teaspoon sea salt. \n4 to 6 fresh basil leaves, torn into pieces",
            
            directions: "In a large saucepan combine scallions, Thai Spice Blend, and ¼ cup water. Cook over medium 2 minutes. Add stock, green beans, and carrots. Bring to boiling; reduce heat. Simmer, uncovered, 5 minutes. Add noodles, snow peas, broccoli, and bok choy; simmer 5 to 7 minutes more or until noodles are cooked. Add milk; cook 1 minute. Stir in lime juice and salt. Garnish with basil.",
            category: "Breakfast",
            datePublished: "Feb 20, 2020",
            url: "https://www.forksoverknives.com/recipes/vegan-soups-stews/thai-spring-noodle-soup/"
        ),
        
        Recipe(
            name: "Butternut Squash Mac and Cheese with Broccoli",
            
            image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/128193/butternut-broccoli-mac-and-cheese-wordpress-688x387-c.jpg",
            
            description: "Spiced butternut squash blended with nutritional yeast and a little plant milk makes a delightfully rich and “cheesy” sauce for pasta and broccoli. Pumpkin, acorn squash, or delicata squash will also work in this recipe. To make this recipe gluten-free, chose a whole grain pasta made with rice, corn, and/or quinoa.",
            
            ingredients: "½ cup thinly sliced scallions (green onions). \n2 tablespoons Thai Spice Blend. \n4 cups low-sodium vegetable stock or water. \n1 cup 1-inch pieces green beans. \n1 cup thinly sliced carrots. \n4 oz. dry brown rice noodles. \n1 cup snow peas, trimmed and halved crosswise. \n1 cup 1-inch broccoli and/or cauliflower florets. \n1 baby bok choy, cut into 1-inch pieces. \n1 cup unsweetened, unflavored plant milk. \n3 tablespoons lime juice. \n⅛ teaspoon sea salt. \n4 to 6 fresh basil leaves, torn into pieces",
            
            directions: "In a large saucepan combine scallions, Thai Spice Blend, and ¼ cup water. Cook over medium 2 minutes. Add stock, green beans, and carrots. Bring to boiling; reduce heat. Simmer, uncovered, 5 minutes. Add noodles, snow peas, broccoli, and bok choy; simmer 5 to 7 minutes more or until noodles are cooked. Add milk; cook 1 minute. Stir in lime juice and salt. Garnish with basil.",
            category: "Breakfast",
            datePublished: "Sep 1, 2020",
            url: "https://www.forksoverknives.com/recipes/vegan-pasta-noodles/butternut-mac-and-cheese-broccoli/"
        ),
        
        Recipe(
            name: "Five-Ingredient Veggie Burger",
            
            image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/97352/Five-Ingredient-Veggie-Burgers-Wordpress-1-688x387-c.jpg",
            
            description: "Cooking these earthy-tasting burgers in a very hot skillet creates delightfully crispy edges. All you need to make the delicious patties are five simple ingredients, plus salt and pepper. Serve with homemade ketchup, fresh-tasting mustard, Cheesy Caesar Dressing, Vegan Cheesy Sauce, or other condiments of your choosing. ",
            
            ingredients: "½ cup thinly sliced scallions (green onions). \n2 tablespoons Thai Spice Blend. \n4 cups low-sodium vegetable stock or water. \n1 cup 1-inch pieces green beans. \n1 cup thinly sliced carrots. \n4 oz. dry brown rice noodles. \n1 cup snow peas, trimmed and halved crosswise. \n1 cup 1-inch broccoli and/or cauliflower florets. \n1 baby bok choy, cut into 1-inch pieces. \n1 cup unsweetened, unflavored plant milk. \n3 tablespoons lime juice. \n⅛ teaspoon sea salt. \n4 to 6 fresh basil leaves, torn into pieces",
            
            directions: "In a large saucepan combine scallions, Thai Spice Blend, and ¼ cup water. Cook over medium 2 minutes. Add stock, green beans, and carrots. Bring to boiling; reduce heat. Simmer, uncovered, 5 minutes. Add noodles, snow peas, broccoli, and bok choy; simmer 5 to 7 minutes more or until noodles are cooked. Add milk; cook 1 minute. Stir in lime juice and salt. Garnish with basil.",
            category: "Breakfast",
            datePublished: "Sep 25, 2019",
            url: "https://www.forksoverknives.com/recipes/vegan-burgers-wraps/five-ingredient-veggie-burger/"
        ),
        
        Recipe(
            name: "Delicata Squash and Roasted Cabbage Stew",
            
            image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/158836/Jackfruit-Chowder-wordpress-688x387-c.jpg",
            
            description: "This hearty winter stew is full of German-style flavors that will warm your belly on a cold night. Bright yellow delicata squash melds with earthy cabbage, creamy white beans, and hearty potatoes to create a chunky and oh-so-satisfying stew. Coarse-grain mustard is stirred into the savory broth to pay homage to Germanic classics (think bratwurst flavors without the meat) while toasted caraway seeds add a subtle licorice zing to each bite. The pumpernickel croutons make this cabbage soup recipe absolutely drool-worthy, and you can use extras in a salad later in the week.",
            
            ingredients: "½ cup thinly sliced scallions (green onions). \n2 tablespoons Thai Spice Blend. \n4 cups low-sodium vegetable stock or water. \n1 cup 1-inch pieces green beans. \n1 cup thinly sliced carrots. \n4 oz. dry brown rice noodles. \n1 cup snow peas, trimmed and halved crosswise. \n1 cup 1-inch broccoli and/or cauliflower florets. \n1 baby bok choy, cut into 1-inch pieces. \n1 cup unsweetened, unflavored plant milk. \n3 tablespoons lime juice. \n⅛ teaspoon sea salt. \n4 to 6 fresh basil leaves, torn into pieces",
            
            directions: "In a large saucepan combine scallions, Thai Spice Blend, and ¼ cup water. Cook over medium 2 minutes. Add stock, green beans, and carrots. Bring to boiling; reduce heat. Simmer, uncovered, 5 minutes. Add noodles, snow peas, broccoli, and bok choy; simmer 5 to 7 minutes more or until noodles are cooked. Add milk; cook 1 minute. Stir in lime juice and salt. Garnish with basil.",
            category: "Soup",
            datePublished: "Nov 14, 2022",
            url: "https://www.forksoverknives.com/recipes/vegan-soups-stews/delicata-squash-and-roasted-cabbage-stew/"
        ),
        
        
        Recipe(
            name: "Five-Ingredient Veggie Burger",
            
            image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/97352/Five-Ingredient-Veggie-Burgers-Wordpress-1-688x387-c.jpg",
            
            description: "Cooking these earthy-tasting burgers in a very hot skillet creates delightfully crispy edges. All you need to make the delicious patties are five simple ingredients, plus salt and pepper. Serve with homemade ketchup, fresh-tasting mustard, Cheesy Caesar Dressing, Vegan Cheesy Sauce, or other condiments of your choosing. ",
            
            ingredients: "½ cup thinly sliced scallions (green onions). \n2 tablespoons Thai Spice Blend. \n4 cups low-sodium vegetable stock or water. \n1 cup 1-inch pieces green beans. \n1 cup thinly sliced carrots. \n4 oz. dry brown rice noodles. \n1 cup snow peas, trimmed and halved crosswise. \n1 cup 1-inch broccoli and/or cauliflower florets. \n1 baby bok choy, cut into 1-inch pieces. \n1 cup unsweetened, unflavored plant milk. \n3 tablespoons lime juice. \n⅛ teaspoon sea salt. \n4 to 6 fresh basil leaves, torn into pieces",
            
            directions: "In a large saucepan combine scallions, Thai Spice Blend, and ¼ cup water. Cook over medium 2 minutes. Add stock, green beans, and carrots. Bring to boiling; reduce heat. Simmer, uncovered, 5 minutes. Add noodles, snow peas, broccoli, and bok choy; simmer 5 to 7 minutes more or until noodles are cooked. Add milk; cook 1 minute. Stir in lime juice and salt. Garnish with basil.",
            category: "Salad",
            datePublished: "Sep 25, 2019",
            url: "https://www.forksoverknives.com/recipes/vegan-burgers-wraps/five-ingredient-veggie-burger/"
        ),
        
        Recipe(
            name: "Five-Ingredient Veggie Burger",
            
            image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/97352/Five-Ingredient-Veggie-Burgers-Wordpress-1-688x387-c.jpg",
            
            description: "Cooking these earthy-tasting burgers in a very hot skillet creates delightfully crispy edges. All you need to make the delicious patties are five simple ingredients, plus salt and pepper. Serve with homemade ketchup, fresh-tasting mustard, Cheesy Caesar Dressing, Vegan Cheesy Sauce, or other condiments of your choosing. ",
            
            ingredients: "½ cup thinly sliced scallions (green onions). \n2 tablespoons Thai Spice Blend. \n4 cups low-sodium vegetable stock or water. \n1 cup 1-inch pieces green beans. \n1 cup thinly sliced carrots. \n4 oz. dry brown rice noodles. \n1 cup snow peas, trimmed and halved crosswise. \n1 cup 1-inch broccoli and/or cauliflower florets. \n1 baby bok choy, cut into 1-inch pieces. \n1 cup unsweetened, unflavored plant milk. \n3 tablespoons lime juice. \n⅛ teaspoon sea salt. \n4 to 6 fresh basil leaves, torn into pieces",
            
            directions: "In a large saucepan combine scallions, Thai Spice Blend, and ¼ cup water. Cook over medium 2 minutes. Add stock, green beans, and carrots. Bring to boiling; reduce heat. Simmer, uncovered, 5 minutes. Add noodles, snow peas, broccoli, and bok choy; simmer 5 to 7 minutes more or until noodles are cooked. Add milk; cook 1 minute. Stir in lime juice and salt. Garnish with basil.",
            category: "Breakfast",
            datePublished: "Sep 25, 2019",
            url: "https://www.forksoverknives.com/recipes/vegan-burgers-wraps/five-ingredient-veggie-burger/"
        ),
        
        Recipe(
            name: "Delicata Squash and Roasted Cabbage Stew",
            
            image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/158836/Jackfruit-Chowder-wordpress-688x387-c.jpg",
            
            description: "This hearty winter stew is full of German-style flavors that will warm your belly on a cold night. Bright yellow delicata squash melds with earthy cabbage, creamy white beans, and hearty potatoes to create a chunky and oh-so-satisfying stew. Coarse-grain mustard is stirred into the savory broth to pay homage to Germanic classics (think bratwurst flavors without the meat) while toasted caraway seeds add a subtle licorice zing to each bite. The pumpernickel croutons make this cabbage soup recipe absolutely drool-worthy, and you can use extras in a salad later in the week.",
            
            ingredients: "½ cup thinly sliced scallions (green onions). \n2 tablespoons Thai Spice Blend. \n4 cups low-sodium vegetable stock or water. \n1 cup 1-inch pieces green beans. \n1 cup thinly sliced carrots. \n4 oz. dry brown rice noodles. \n1 cup snow peas, trimmed and halved crosswise. \n1 cup 1-inch broccoli and/or cauliflower florets. \n1 baby bok choy, cut into 1-inch pieces. \n1 cup unsweetened, unflavored plant milk. \n3 tablespoons lime juice. \n⅛ teaspoon sea salt. \n4 to 6 fresh basil leaves, torn into pieces",
            
            directions: "In a large saucepan combine scallions, Thai Spice Blend, and ¼ cup water. Cook over medium 2 minutes. Add stock, green beans, and carrots. Bring to boiling; reduce heat. Simmer, uncovered, 5 minutes. Add noodles, snow peas, broccoli, and bok choy; simmer 5 to 7 minutes more or until noodles are cooked. Add milk; cook 1 minute. Stir in lime juice and salt. Garnish with basil.",
            category: "Soup",
            datePublished: "Nov 14, 2022",
            url: "https://www.forksoverknives.com/recipes/vegan-soups-stews/delicata-squash-and-roasted-cabbage-stew/"
        ),
        
        
        Recipe(
            name: "Five-Ingredient Veggie Burger",
            
            image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/97352/Five-Ingredient-Veggie-Burgers-Wordpress-1-688x387-c.jpg",
            
            description: "Cooking these earthy-tasting burgers in a very hot skillet creates delightfully crispy edges. All you need to make the delicious patties are five simple ingredients, plus salt and pepper. Serve with homemade ketchup, fresh-tasting mustard, Cheesy Caesar Dressing, Vegan Cheesy Sauce, or other condiments of your choosing. ",
            
            ingredients: "½ cup thinly sliced scallions (green onions). \n2 tablespoons Thai Spice Blend. \n4 cups low-sodium vegetable stock or water. \n1 cup 1-inch pieces green beans. \n1 cup thinly sliced carrots. \n4 oz. dry brown rice noodles. \n1 cup snow peas, trimmed and halved crosswise. \n1 cup 1-inch broccoli and/or cauliflower florets. \n1 baby bok choy, cut into 1-inch pieces. \n1 cup unsweetened, unflavored plant milk. \n3 tablespoons lime juice. \n⅛ teaspoon sea salt. \n4 to 6 fresh basil leaves, torn into pieces",
            
            directions: "In a large saucepan combine scallions, Thai Spice Blend, and ¼ cup water. Cook over medium 2 minutes. Add stock, green beans, and carrots. Bring to boiling; reduce heat. Simmer, uncovered, 5 minutes. Add noodles, snow peas, broccoli, and bok choy; simmer 5 to 7 minutes more or until noodles are cooked. Add milk; cook 1 minute. Stir in lime juice and salt. Garnish with basil.",
            category: "Salad",
            datePublished: "Sep 25, 2019",
            url: "https://www.forksoverknives.com/recipes/vegan-burgers-wraps/five-ingredient-veggie-burger/"
        ),
        
    ]
}
