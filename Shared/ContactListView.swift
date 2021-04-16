//
//  ContactListView.swift
//  DemoSwiftUI
//
//  Created by Paul Olivier on 17/03/2021.
//

import SwiftUI

struct ContactListView: View {
    
    @Binding var contactList: ContactList
    
    var body: some View {
        List(contactList.getContacts()){ contact in
            HStack{
                Text(contact.name)
                Spacer()
                Text(DateFormatter().string(from: contact.date))
            }
            
        }
    }
}

//struct ContactListView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContactListView(contactList: )
//    }
//}
