//
//  Networker.swift
//  combiner
//
//  Created by Misha Causur on 17.03.2022.
//

import Foundation

struct Networker {
    
    static let shared = Networker()
    
    func loadData<T: Decodable>(_ filename: String) -> T {
        let data: Data
        guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
            fatalError("Couldn't find \(filename) in bundle")
        }
        do {
            data = try Data(contentsOf: file)
        } catch {
            fatalError("Couldn't load \(filename) from main bundle:\n\(error.localizedDescription)")
        }
        
        do {
            return try JSONDecoder().decode(T.self, from: data)
        } catch {
            fatalError("Couldn't parse data as \(T.self)\n\(error)")
        }
    }
}

var faqData: [FAQ] = Networker.shared.loadData("faqData.json")
