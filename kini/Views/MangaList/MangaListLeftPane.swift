//
//  MangaListLeftPane.swift
//  kini
//
//  Created by Jacob Ortmann on 6/26/22.
//

import SwiftUI

struct MangaListLeftPane: View {
    
    @State var searchResults: String = ""

    var body: some View {
        
            VStack(alignment: .leading) {
                Text("Manga Collection")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                Divider()
                MangaListView(searchResults: searchResults)
        }
    }
}

struct MangaListLeftPane_Previews: PreviewProvider {
    static var previews: some View {
        MangaListLeftPane()
    }
}
