//
//  AppView.swift
//  BigMntChallenge
//
//  Created by Pawel Madej on 24/02/2020.
//  Copyright © 2020 Pawel Madej. All rights reserved.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("SwiftUI Views Challenge").font(.largeTitle)
                Text("by Big Mountain Studio").font(.title)

                Spacer()
                
                List {
                    NavigationLink(destination: LayoutView()) {
                        Text("Module 3 - Layout Views")
                    }
                    NavigationLink(destination: OnboardingView()) {
                        Text("Module 4 - Onboarding Screen")
                    }
                    NavigationLink(destination: ShapesView()) {
                        Text("Module 5 - Shapes")
                    }
                    NavigationLink(destination: TextFieldsView()) {
                        Text("Module 6 - TextFields")
                    }
                    NavigationLink(destination: LoginView()) {
                        Text("Module 7 - Login Screen")
                    }
                }
            }
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
