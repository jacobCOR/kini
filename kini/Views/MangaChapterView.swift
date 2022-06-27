//
//  MangaChapterView.swift
//  kini
//
//  Created by Jacob Ortmann on 6/26/22.
//

import SwiftUI

struct MangaChapterView: View {
    
    var body: some View {
        GeometryReader { gr in
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .frame(minWidth: gr.size.width * 0.5, idealWidth: gr.size.width * 0.7)
        }
    }
}

struct MangaChapterView_Previews: PreviewProvider {
    static var previews: some View {
        MangaChapterView()
    }
}
