//
//  RecipeView.swift
//  Recipe App
//
//  Created by Inconnu on 12/26/22.
//

import SwiftUI

struct RecipeView: View {
    var recipe: Recipe
    var body: some View {
        ScrollView{
            VStack{
                VStack{
                    AsyncImage(url: URL(string: recipe.image)) { image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 300)
                    } placeholder: {
                        Image(systemName: "photo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100,height: 100,alignment: .center)
                            .foregroundColor(Color.white.opacity(0.7))
                            .frame(maxWidth: .infinity,maxHeight: .infinity)
                    }
                }
                .frame(height: 300)
                .background(
                    LinearGradient(
                        gradient: Gradient(
                            colors: [Color.gray.opacity(0.3), Color.gray]
                        ),
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                
                VStack (alignment: .leading, spacing: 20){
                    Text(recipe.name)
                        .font(.largeTitle)
                        .bold()
                        .multilineTextAlignment(.leading)
                    VStack(alignment: .leading, spacing: 20){
                        
                        if !recipe.description.isEmpty{
                            Text(recipe.description)
                        }
                        
                        if !recipe.ingredients.isEmpty{
                            VStack(alignment: .leading, spacing: 10){
                                Text("Ingrediant")
                                    .font(.headline)
                                Text(recipe.ingredients)
                            }
                        }
                        
                        if !recipe.directions.isEmpty{
                            VStack(alignment: .leading, spacing: 10){
                                Text("Directions")
                                    .font(.headline)
                                Text(recipe.directions)
                            }
                        }
                    }
                    .frame(maxWidth: .infinity,alignment: .leading)
                }
                .padding(.horizontal)
            }
        }
        .ignoresSafeArea(.container,edges: .top)
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView(recipe: Recipe.all[1])
    }
}
