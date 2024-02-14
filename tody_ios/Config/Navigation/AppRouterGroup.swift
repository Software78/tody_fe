//
//  AppRouterGroup.swift
//  tody_ios
//
//  Created by Adedola Owen Abaru on 13/02/2024.
//

import LinkNavigator

public typealias RootNavigatorType = LinkNavigatorFindLocationUsable & LinkNavigatorProtocol


struct AppRouterGroup<RootNavigator: RootNavigatorType> {
    init() { }
    
    var routers : [RouteBuilderOf<RootNavigator>] {
        [
            OnboardingRouteBuilder.generate(),
            WelcomeRouteBuilder.generate(),
            LoginRouteBuilder.generate()
        ]
    }
}
