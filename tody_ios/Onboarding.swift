//
//  Welcome.swift
//  tody_ios
//
//  Created by Adedola Owen Abaru on 12/02/2024.
//

import SwiftUI
import LinkNavigator


struct OnboardingRouteBuilder<RootNavigator: RootNavigatorType> {
    
    static func generate() -> RouteBuilderOf<RootNavigator> {
        var matchPath: String { "home" }
        return .init(matchPath: matchPath) { navigator, _, _ -> RouteViewController? in
            WrappingController(matchPath: matchPath) {
                OnboardingView(linkNavigator: navigator)
            }
        }
    }
}

struct OnboardingView: View {
    @AppStorage("hasNotDoneOnboarding") var hasNotDoneOnboarding: Bool?
    @State private var position : Int = 1
    let onboardingmessages:[OnboardingMessage] = [
        OnboardingMessage(
            title: "Your convenience in making a todo list",
            subtitle: "Here's a mobile platform that helps you create task or to list so that it can help you in every job easier and faster.",
            index: 1
        ),
        OnboardingMessage(
            title: "Here's a mobile platform that helps you create task or to list so that it can help you in every job easier and faster.",
            subtitle: "Easy-to-understand user interface  that makes you more comfortable when you want to create a task or to do list, Todyapp can also improve productivity",
            index: 2
        ),
    ]
    
    func toggleHasNotDoneOnboarding() -> Void {
        navigator.replace(linkItem: .init(path: "welcome"), isAnimated: true)
    }
    
    let navigator : RootNavigatorType
    
    init(linkNavigator: RootNavigatorType ){
        UIPageControl.appearance().currentPageIndicatorTintColor = .brandPrimaryDefault
        UIPageControl.appearance().pageIndicatorTintColor = .brandPrimaryFocused
        navigator = linkNavigator
    }
    
    
    
    var body: some View {
        NavigationStack {
            VStack {
                TabView{
                    ForEach(onboardingmessages) { item in
                        OnboardingImageView(message: item)
                    }
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            }.toolbar{
                ToolbarItem(placement: .topBarTrailing){
                    //
                    Button(action: toggleHasNotDoneOnboarding){
                        Text("Skip")
                    }
                }
            }
        }
    }
}

//#Preview {
//    OnboardingView(linkNavigator: )
//}


struct OnboardingImageView : View {
    let message : OnboardingMessage
    
    @State private var isAnimating: Bool = false
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                Image("onboarding_\(message.index)")
                Text(message.title)
                    .centerText()
                    .f28px()
                    .semiboldText()
                    .padding(.horizontal, 20)
                    .padding(.bottom, 12)
                Text(message.subtitle)
                    .centerText()
                    .foregroundColor(.neutralSecondary)
                    .f14px()
                    .regularText()
                    .padding(.horizontal, 41.0)
                Spacer()
            }
        }.onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}


struct OnboardingMessage : Identifiable {
    let title:String
    let subtitle:String
    let index:Int
    let id = UUID()
}
