//
//  MangaListRightPane.swift
//  kini
//
//  Created by Jacob Ortmann on 6/26/22.
//

import SwiftUI

struct MangaListRightPane: View {
    var body: some View {
        ScrollView {
            MangaChapterView()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
    }
}

struct MangaListRightPane_Previews: PreviewProvider {
    static var previews: some View {
        MangaListRightPane()
    }
}
