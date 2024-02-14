//
//  Welcome.swift
//  tody_ios
//
//  Created by Adedola Owen Abaru on 13/02/2024.
//

import SwiftUI
import LinkNavigator

struct WelcomeRouteBuilder<RootNavigator: RootNavigatorType>{
    static func generate() -> RouteBuilderOf<RootNavigator> {
        var matchPath: String { "welcome" }
        return .init(matchPath: matchPath) { navigator, _, _ -> RouteViewController? in
            WrappingController(matchPath: matchPath) {
                WelcomeView(linkNavigator: navigator)
            }
        }
    }
}

struct WelcomeView: View {
    let linkNavigator :  RootNavigatorType
    
    func emailLogin() -> Void{
        linkNavigator.replace(linkItem: .init(path: "login"), isAnimated: true)
    }
    
    func googleLogin () -> Void{
        
    }
    
    func appleLogin () -> Void {
        
    }
    
    var body: some View {
        NavigationStack {
            VStack{
                Image("welcome")
                VStack {
                    RoundedButtonWithIcon(text: "Continue with E-mail", icon: "mail", action: emailLogin)
                        .padding(.bottom, 16.0)
                    HStack{
                        Rectangle()
                            .fill(.neutralOutline)
                            .frame(height: 1)
                        Text("or continue with")
                            .f12px()
                            .foregroundColor(.neutralSecondary)
                        Rectangle()
                            .fill(.neutralOutline)
                            .frame(height: 1)
                        
                    }.padding(.bottom, 16.0)
                    HStack{
                        RoundedSocailLoginButton(text: "Facebook", icon: "facebook", action: googleLogin)
                        RoundedSocailLoginButton(text: "Google", icon: "google", action: appleLogin)
                    }
                }.padding(.horizontal, 24.0)
            }.navigationBarTitleDisplayMode(.inline)
        }
    }
}

//#Preview {
//    WelcomeView()
//}
