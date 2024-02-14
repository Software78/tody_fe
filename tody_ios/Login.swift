//
//  Login.swift
//  tody_ios
//
//  Created by Adedola Owen Abaru on 12/02/2024.
//

import LinkNavigator
import SwiftUI

struct LoginRouteBuilder<RootNavigator: RootNavigatorType> {
    
    static func generate() -> RouteBuilderOf<RootNavigator> {
        var matchPath: String { "login" }
        return .init(matchPath: matchPath) { navigator, _, _ -> RouteViewController? in
            WrappingController(matchPath: matchPath) {
                LoginView(navigator: navigator)
            }
        }
    }
}

struct LoginView : View {
    let navigator : RootNavigatorType
    @State private var email : String = ""
    var body: some View {
        VStack {
            ScrollView{
                Text("Welcome Back!")
                    .f24px()
                    .padding(.bottom, 8)
                Text("Your work faster and structured with Todyapp")
                    .f14px()
                    .foregroundColor(.neutralSecondary)
                    .padding(.bottom, 48)
                VStack(alignment: .leading){
                    Text("Email Address")
                        .padding(.bottom, 12)
                    TextField("email@domain.com", text: $email)
                        .frame(height: 56)
                        .padding(.horizontal)
                        .background(.neutralBackground)
                        .clipShape(RoundedRectangle(cornerRadius: 6))
                        .padding(.bottom, 24)
                    Text("Password")
                        .padding(.bottom, 12)
                    SecureField("Password", text: $email)
                        .frame(height: 56)
                        .padding(.horizontal)
                        .background(.neutralBackground)
                        .clipShape(RoundedRectangle(cornerRadius: 6))
                        .padding(.bottom, 24)
                }
            }
            Spacer()
            RoundedButton(text: "Next", action: {})
                .padding(.bottom, 12)
        }.padding(/*@START_MENU_TOKEN@*/.all, 24.0/*@END_MENU_TOKEN@*/)
        
    }
}


//#Preview {
//    LoginView()
//}
