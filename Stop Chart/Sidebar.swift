//
//  Sidebar.swift
//  Stop Chart
//
//  Created by Lukas Mauffré on 26/09/2021.
//  Copyright © 2021 Lukas Mauffré. All rights reserved.
//

import SwiftUI

struct Sidebar: View {
    var body: some View {
        NavigationView {
            List {
                Label("Courses", systemImage: "book.closed")
                Label("Tutorials", systemImage: "list.bullet.rectangle")
            }
            .listStyle(SidebarListStyle())
            .navigationTitle("Learn")
        }
    }
}

struct Sidebar_Previews: PreviewProvider {
    static var previews: some View {
        Sidebar()
    }
}
