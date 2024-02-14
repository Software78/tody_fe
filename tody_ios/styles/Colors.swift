//
//  Colors.swift
//  tody_ios
//
//  Created by Adedola Owen Abaru on 12/02/2024.
//

import Foundation
import SwiftUI

enum Colors {
    case brandPrimaryDark
    case brandPrimaryDefault
    case brandPrimaryBackground
    case brandPrimaryPressed
    case brandPrimaryFocused
    case brandPrimaryOutline
}

extension Colors{
    var color: Color {
        switch self{
        case .brandPrimaryBackground:
            return Color("brand-primary-background")
        case .brandPrimaryDark:
            return Color("brand-primary-dark")
        case .brandPrimaryDefault:
            return Color("brand-primary-default")
        case .brandPrimaryPressed:
            return Color("brand-primary-pressed")
        case .brandPrimaryFocused:
            return Color("brand-primary-focused")
        case .brandPrimaryOutline:
            return Color("brand-primary-outline")
        }
    }
}
