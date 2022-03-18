//
//  Networker.swift
//  combiner
//
//  Created by Misha Causur on 17.03.2022.
//

import Foundation
import Combine
import SwiftUI

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

extension NotificationCenter {
    struct Publisher: Combine.Publisher {
       
        typealias Output = Notification
        typealias Failure = Never
        init(center: NotificationCenter, name: Notification.Name, object: Any? = nil) {}
        
        func receive<S>(subscriber: S) where S : Subscriber, Never == S.Failure, Notification == S.Input {
            
        }
        
    }
}

extension Subscribers {
    class Assign<Root, Input>: Subscriber, Cancellable {
        
        typealias Failure = Never
        init(object: Root, keyPath: ReferenceWritableKeyPath<Root, Input>) {}
        
        func receive(subscription: Subscription) {
            
        }
        
        func receive(_ input: Input) -> Subscribers.Demand {
            return _ = Subscribers.Demand(from: JSONDecoder() as! Decoder)
        }
        
        func receive(completion: Subscribers.Completion<Never>) {
            
        }
        
        func cancel() {
            
        }
    }
}
