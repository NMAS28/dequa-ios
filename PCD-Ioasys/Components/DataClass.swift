//
//  DataClass.swift
//  PCD-Ioasys
//
//  Created by NMAS Amaral on 30/05/21.
//

import Foundation
class DataClass {

    var isPremium: Bool = false
    var isLogged: Bool = false

    class var sharedManager: DataClass {
        struct Static {
            static let instance = DataClass()
        }
        return Static.instance
    }
}
