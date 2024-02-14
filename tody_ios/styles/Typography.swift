//
//  Typography.swift
//  tody_ios
//
//  Created by Adedola Owen Abaru on 12/02/2024.
//

import Foundation
import SwiftUI

var fontName: String = "SF Pro Display"

extension View {
    func f28px()  -> some View{
        self
            .font(.custom(fontName, size: 28))
    }
    
    func f26px() -> some View{
        self
            .font(.custom(fontName, size: 26))
    }
    
    func f24px() -> some View{
        self
            .font(.custom(fontName, size: 24))
    }
    
    func f18px() -> some View{
        self
            .font(.custom(fontName, size: 18))
    }
    
    func f16px() -> some View{
        self
            .font(.custom(fontName, size: 16))
    }
    
    func f14px() -> some View{
        self
            .font(.custom(fontName, size: 14))
    }
    
    func f10px() -> some View{
        self
            .font(.custom(fontName, size: 10))
    }
    
    func f12px() -> some View{
        self
            .font(.custom(fontName, size: 12))
    }

    func boldText() -> some View{
        self
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
    }
    
    func semiboldText() -> some View{
        self
            .fontWeight(.semibold)
    }
    
    func regularText() -> some View{
        self
            .fontWeight(.regular)
    }
    
    func mediumText() -> some View{
        self
            .fontWeight(.medium)
    }
    
    func centerText() -> some View{
        self
            .multilineTextAlignment(.center)
    }
    
}
