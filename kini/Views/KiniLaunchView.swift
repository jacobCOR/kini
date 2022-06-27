//
//  KiniLaunchView.swift
//  kini
//
//  Created by Jacob Ortmann on 6/25/22.
//

import SwiftUI

struct KiniLaunchView: View {
    @State var searchText: String = ""
    var body: some View {
        NavigationView {
                MangaListLeftPane()
                MangaListRightPane()
        }
    }
}

struct KiniLaunchView_Previews: PreviewProvider {
    static var previews: some View {
        KiniLaunchView()
    }
}
