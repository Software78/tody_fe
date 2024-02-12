//
//  Welcome.swift
//  tody_ios
//
//  Created by Adedola Owen Abaru on 12/02/2024.
//

import SwiftUI

struct WelcomeView: View {
    @State private var position : Int = 1
    var body: some View {
        VStack {
            Image("onboarding_\(position)")
                .onAppear{
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3 ){
                        position = 2
                    }
                }
        }
    }
}

#Preview {
    WelcomeView()
}
