//
//  ListView.swift
//  BigMntChallenge
//
//  Created by Pawel Madej on 25/02/2020.
//  Copyright © 2020 Pawel Madej. All rights reserved.
//

import SwiftUI

struct ListView: View {
    @State private var songs = [
        "Look What You Made Me Do",
        "Delicate",
        "Style",
        "Love Story",
        "22",
        "Lover",
        "Christmas Tree Farm",
        "Blank Space"
    ]

    var body: some View {
        List {
            Section(header:
                Text("Taylor Swift Songs")
                    .font(Font.custom("Times New Roman", size: 40))
                    .bold()
                    .padding(.vertical, 10)
            ) {
                ForEach(songs, id: \.self) { song in
                    Text(song)
                        .font(Font.custom("Times New Roman", size: 30))
                        .padding(.vertical, 10)
                        .foregroundColor(.gray)
                }
                HStack {
                    Spacer()

                    Text("Total Songs: \(songs.count)")
                        .font(Font.custom("Times New Roman", size: 20))
                        .bold()
                        .padding(.vertical, 5)

                    Spacer()
                }
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
