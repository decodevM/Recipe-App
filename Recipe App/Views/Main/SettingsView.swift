//
//  SettingsView.swift
//  Recipe App
//
//  Created by Inconnu on 12/26/22.
//

import SwiftUI

struct SettingsView: View{
    var body: some View{
        NavigationView{
            Text("Settings View")
                .navigationTitle("Settings")
        }.navigationViewStyle(.stack)
    }
}

struct SettingsView_Previews: PreviewProvider{
    static var previews: some View{
        SettingsView()
    }
}
