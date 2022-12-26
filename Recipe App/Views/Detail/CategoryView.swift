//
//  CategoryView.swift
//  Recipe App
//
//  Created by Inconnu on 12/26/22.
//

import SwiftUI

struct CategoryView: View {
    var category: Category
    var recipes: [Recipe] {
        Recipe.all.filter { recipe in
            recipe.category == category.rawValue
        }
    }
    var body: some View {
        ScrollView{
            RecipeList(recipes: recipes)
            .navigationTitle(category.rawValue + "s")
        }.navigationViewStyle(.stack)
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(category: Category.breakfast)
    }
}
