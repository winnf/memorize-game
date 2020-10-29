//
//  Array+Only.swift
//  Memorize
//
//  Created by Winnie Fong on 10/15/20.
//  Copyright © 2020 Winnie Fong. All rights reserved.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
