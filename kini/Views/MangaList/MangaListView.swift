//
//  MangaListView.swift
//  kini
//
//  Created by Jacob Ortmann on 6/25/22.
//

import SwiftUI

struct MangaListView: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var mangas: FetchedResults<MangaData>
    var searchResults: String = ""
    
    private func searchPredicate(query: String) -> NSPredicate? {
        if query.isEmpty { return nil }
        return NSPredicate(format: "%K BEGINSWITH[cd] %@",
        #keyPath(MangaData.name), query)
      }
    
    var body: some View {
        NavigationView {
        List {
            ForEach(mangas) { manga in
                    MangaListRow(manga: manga)
                    .padding()
            }
            .onChange(of: searchResults) { newVal in
                mangas.nsPredicate = searchPredicate(query: newVal)
        }
            if mangas.isEmpty {
                    Text("No manga in library")
                
            }
        }
        .frame(minWidth: 300,  idealWidth: 300)
        }
        
    }
   
}
