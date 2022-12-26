//
//  HomeView.swift
//  Recipe App
//
//  Created by Inconnu on 12/26/22.
//

import SwiftUI

struct HomeView: View{
    var body: some View{
        NavigationView{
            ScrollView{
                RecipeList(recipes: Recipe.all)
            }.navigationTitle("My Recipes")
        }
        .navigationViewStyle(.stack)
    }
}


struct HomeView_Previews: PreviewProvider{
    static var previews: some View{
        HomeView()
    }
}
