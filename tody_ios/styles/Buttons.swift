//
//  Buttons.swift
//  tody_ios
//
//  Created by Adedola Owen Abaru on 12/02/2024.
//

import Foundation
import SwiftUI

struct RoundedButton : View {
    let text : String
    let action : ()->Void
    
    var body: some View {
        Button(action: action) {
            ZStack{
                RoundedRectangle(cornerRadius: 8)
                    .foregroundColor(.brandPrimaryDefault)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .frame(height: 56)
                    .clipShape(RoundedRectangle(cornerRadius: 16))
                Text(text)
                    .foregroundColor(.white)
            }
        }
    }
}



struct RoundedButtonWithIcon : View {
    let text : String
    let icon : String
    let action : ()->Void
    
    var body: some View {
        Button(action: action) {
            ZStack{
                RoundedRectangle(cornerRadius: 8)
                    .foregroundColor(.brandPrimaryDefault)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 56)
                    .clipShape(RoundedRectangle(cornerRadius: 16))
                HStack{
                    Image(icon)
                    Text(text)
                        .foregroundColor(.white)
                }
            }
        }
    }
}


struct RoundedSocailLoginButton : View {
    let text : String
    let icon : String
    let action : ()->Void
    
    var body: some View {
        Button(action: action) {
            ZStack{
                RoundedRectangle(cornerRadius: 8)
                    .foregroundColor(.neutralBackground)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 56)
                    .clipShape(RoundedRectangle(cornerRadius: 16))
                HStack{
                    Image(icon)
                    Text(text)
                        .foregroundColor(.black)
                }
            }
        }
    }
}

