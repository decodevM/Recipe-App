//
//  CategoriesView.swift
//  Recipe App
//
//  Created by Inconnu on 12/26/22.
//

import SwiftUI

struct CategoriesView: View{
    var body: some View{
        NavigationView{
            List{
                ForEach(Category.allCases) {category in
                    NavigationLink(
                        destination: CategoryView(category: category),
                        label: {
                            Text(category.rawValue + "s")
                        }
                    )
                }
            }
            .navigationTitle("Categories")
        }.navigationViewStyle(.stack)
    }
}


struct Categories_Previews: PreviewProvider{
    static var previews: some View{
        CategoriesView()
    }
}
