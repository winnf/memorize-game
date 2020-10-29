//
//  Array+identifiable.swift
//  Memorize
//
//  Created by Winnie Fong on 10/14/20.
//  Copyright © 2020 Winnie Fong. All rights reserved.
//

import Foundation

extension Array where Element: Identifiable {
    func firstIndex(matching: Element) -> Int? { //optional int 
         for index in 0..<self.count {
             if self[index].id == matching.id {
                 return index
             }
         }
         return nil
     }
}
