//
//  AppBarNavigationView.swift
//  DemoSwiftUI
//
//  Created by Paul Olivier on 17/03/2021.
//

import SwiftUI

struct AppBarNavigationView: View {
    
    @State private var contactList = ContactList(contacts: [])
    
    var body: some View {
        TabView {
            ContentView(contactList: $contactList)
                .tabItem {
                    Image(systemName: "textformat.abc")
                    Text("Saisie")
                }
            ContactListView(contactList: $contactList)
                .tabItem {
                    Image(systemName: "list.dash")
                    Text("List")
                }
        }
    }
}

struct AppBarNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        AppBarNavigationView()
    }
}
