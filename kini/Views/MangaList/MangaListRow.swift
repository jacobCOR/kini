//
//  MangaListRow.swift
//  kini
//
//  Created by Jacob Ortmann on 6/25/22.
//

import SwiftUI
import SDWebImageSwiftUI

struct MangaListRow: View {
    var manga: MangaData
    var body: some View {
        VStack(alignment: .leading){
            VStack(alignment: .center) {
            HStack() {
                WebImage(url: manga.image_url)
                    .onSuccess(
                    )
                    .resizable()
                    .placeholder(Image(systemName: "photo"))
                        .indicator(.activity)
                        .transition(.fade(duration: 0.5))
                        .scaledToFit()
                        .cornerRadius(5)
                
                VStack(alignment: .leading) {
                Text(manga.name!)
                        .bold()
                    Text(manga.tags!)
                        .font(.caption)
                        .foregroundColor(.secondary)

                }
                
            }
            }
                
        }
    }
}

struct MangaListRow_Previews: PreviewProvider {

    static var previews: some View {
        let context = DataController.shared.persistentContainer.viewContext
        
        let mangaData = MangaTestData(context: context)
        let mangas = try! mangaData.getRows(count: 1)
        let manga = mangas[0]
        MangaListRow(manga: manga)
    }
}
