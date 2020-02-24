//
//  LayoutView.swift
//  BigMntChallenge
//
//  Created by Pawel Madej on 10/02/2020.
//  Copyright © 2020 Pawel Madej. All rights reserved.
//

import SwiftUI

struct LayoutView: View {
    var body: some View {
        ZStack {
            Color.green
                .edgesIgnoringSafeArea(.all)

            HStack {
                VStack {
                    Spacer()
                    Text("Bottom leading")
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LayoutView()
    }
}
