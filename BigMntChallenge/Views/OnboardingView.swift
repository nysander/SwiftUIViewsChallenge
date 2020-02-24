//
//  OnboardingView.swift
//  BigMntChallenge
//
//  Created by Pawel Madej on 17/02/2020.
//  Copyright © 2020 Pawel Madej. All rights reserved.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Love smoothies?")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.purple)
            Text("We have lots of recipes for you. Just think about your favourite fruit.")
                .padding(.horizontal, 50)
                .foregroundColor(.purple)
                .multilineTextAlignment(.center)

            Group {
                Image("apple")
                    .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 120, height:120)
                .cornerRadius(.infinity)
                    .offset(x: -70)
                Image("avocado")
                    .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 120, height:120)
                .cornerRadius(.infinity)

                Image("kiwi")
                    .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 120, height:120)
                .cornerRadius(.infinity)
                .offset(x: 70)

            }

            Button(action: {}) {
                HStack {
                    Text("Let's prepare your first now ...")
                        .foregroundColor(.white)
                    Image(systemName: "arrow.2.circlepath")
                        .foregroundColor(.white)
                        .rotationEffect(Angle(degrees: 30))
                }
            }
        .padding()
            .padding(.horizontal)
            .background(Color.purple)
            .clipShape(Capsule(style: .continuous))
        }
        .padding(.vertical, 20)
    }
}

struct Onboarding_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}


//Kiwi photo by amirali mirhashemian on Unsplash

//Avocado photo by Thought Catalog on Unsplash

// Apple photo by an_vision on Unsplash
