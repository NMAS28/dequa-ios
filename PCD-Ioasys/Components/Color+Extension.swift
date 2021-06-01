//
//  Color+Extension.swift
//  PCD-Ioasys
//
//  Created by NMAS Amaral on 19/05/21.
//

import SwiftUI

extension Color {
    init(hex:UInt, alpha: Double = 1) {
        self.init(.sRGB,
                  red: Double((hex>>16) & 0xff)/255,
                  green: Double((hex>>08) & 0xff)/255,
                  blue: Double((hex>>00) & 0xff)/255,
                  opacity: alpha
        )
    }
}

