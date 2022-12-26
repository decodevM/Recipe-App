//
//  NewRecipeView.swift
//  Recipe App
//
//  Created by Inconnu on 12/26/22.
//

import SwiftUI

struct NewRecipeView: View{
    @State private var showAddRecipe: Bool = false;
    var body: some View{
        NavigationView{
            VStack{
                Button {
                    showAddRecipe = true
                } label: {
                    Text("Add new recipe manualy")
                }
            }
                .navigationTitle("New Recipe")
                .sheet(isPresented: $showAddRecipe) {
                    AddRecipe()
                }
        }.navigationViewStyle(.stack)
    }
}

struct NewRecipeView_Previews: PreviewProvider{
    static var previews: some View{
        NewRecipeView()
    }
}
