//
//  tody_iosApp.swift
//  tody_ios
//
//  Created by Adedola Owen Abaru on 12/02/2024.
//

import SwiftUI
import LinkNavigator

@main
struct tody_iosApp: App {
    @AppStorage("hasNotDoneOnboarding") var hasNotDoneOnboarding: Bool = true
    @AppStorage("hasLoggedIn") var hasLoggedIn: Bool = false
    
    let singleNavigator = SingleLinkNavigator(
        routeBuilderItemList: AppRouterGroup().routers,
        dependency: AppDependency())
    
    var body: some Scene {
        WindowGroup {
            LinkNavigationView(
                linkNavigator: singleNavigator,
                item: .init(path: "home"))
            .ignoresSafeArea()
        }
    }
}


