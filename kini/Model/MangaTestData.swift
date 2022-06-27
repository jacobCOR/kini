//
//  MangaData.swift
//  kini
//
//  Created by Jacob Ortmann on 6/26/22.
//

import Foundation
import CoreData

class MangaTestData: TestData {
    
    init(context: NSManagedObjectContext) {
        super.init(context: context, name: "MangaData")
    }
    
    override func addRows() throws {
        let manga = MangaData(context: context)
        manga.id = UUID()
        manga.name = "TestManga"
        manga.tags = "1,2,3,4"
        manga.image_url = URL(string: "https://i.imgur.com/XiRJs4D.jpg")
        
        try! context.save()
    }
    
    override func getRows() throws -> [Any]? {
        return try super.getRows()
    }
    
    func getRows(count: Int) throws -> [MangaData] {
        return try super.getRows(count: count)
    }
}
