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
    var body: some View {
        Text("")
    }
}


//#Preview {
//    LoginView()
//}
