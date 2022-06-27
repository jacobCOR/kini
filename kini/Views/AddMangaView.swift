//
//  AddMangaView.swift
//  kini
//
//  Created by Jacob Ortmann on 6/25/22.
//

import SwiftUI

struct AddMangaView: View {
    var body: some View {
        HStack {
            Button {
             // will add manga
            } label:
            {
                Text("Add Manga")
                Image(systemName: "plus")
            }
        }
    }
}

struct AddMangaView_Previews: PreviewProvider {
    static var previews: some View {
        AddMangaView()
    }
}
