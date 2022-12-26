//
//  FavoritesView.swift
//  Recipe App
//
//  Created by Inconnu on 12/26/22.
//

import SwiftUI

struct FavoritesView: View{
    var body: some View{
        NavigationView{
            Text("You haven't saved any recipe to your favorites yet.")
                .padding(.horizontal, 50)
                .navigationTitle("Favorites")
        }.navigationViewStyle(.stack)
    }
}

struct FavoritesView_Previews: PreviewProvider{
    static var previews: some View{
        FavoritesView();
    }
}
