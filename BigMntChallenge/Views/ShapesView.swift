//
//  ShapesView.swift
//  BigMntChallenge
//
//  Created by Pawel Madej on 17/02/2020.
//  Copyright © 2020 Pawel Madej. All rights reserved.
//

import SwiftUI

struct ShapesView: View {
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                Rectangle()
                    .fill(Color.white)
                    .overlay(
                        Image("exercise")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .offset(y: 70))
                    .edgesIgnoringSafeArea(.top)

                Rectangle()
                    .fill(Color.white)
            }

            VStack(alignment: .leading, spacing: 20) {
                Text("Joel Doe")
                    .font(.largeTitle)
                    .bold()
                    .padding()

                Spacer()

                HStack {
                    VStack(alignment: .leading) {
                        Text("Calories")
                            .bold()
                        Text("1200")
                    }
                    VStack(alignment: .leading) {
                        Text("Jumps")
                            .bold()
                        Text("45")
                    }
                }
                .padding(.horizontal)

                VStack(alignment: .leading, spacing: 0) {
                    Group {
                        HStack {
                            VStack {
                                Group {
                                    Image(systemName: "calendar")
                                    Image(systemName: "timer")
                                    Image(systemName: "star.circle")
                                }
                                .padding(.vertical)
                                .padding(.trailing, 10)
                            }
                            VStack(alignment: .leading) {
                                Group {
                                Text("Workout history")
                                Text("Training schedule")
                                Text("Achievements")
                                }
                                .padding(.vertical)
                            }
                            Spacer()
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(.white)
                    .padding(.horizontal)
                }
                .background(
                    RoundedRectangle(cornerRadius: 20, style: .circular)
                        .foregroundColor(Color(UIColor.systemGray2)))
                    .padding(.horizontal)

                VStack(alignment: .leading, spacing: 0) {
                    Group {
                        HStack {
                            VStack {
                                Group {
                                    Image(systemName: "person.fill")
                                    Image(systemName: "chart.bar.fill")
                                    Image(systemName: "tv")
                                    Image(systemName: "gear");
                                }
                                .padding(.vertical)
                                .padding(.trailing, 10)
                            }
                            VStack(alignment: .leading) {
                                Group {
                                Text("Account")
                                Text("Statistics")
                                Text("Videos")
                                Text("Settings")
                                }
                                .padding(.vertical)
                            }
                            Spacer()
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(.white)
                    .padding(.horizontal)
                }
                .background(
                    RoundedRectangle(cornerRadius: 20, style: .circular)
                        .foregroundColor(Color(UIColor.systemGray2)))
                    .padding(.horizontal)

            }
            .padding(.bottom)
        }
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        ShapesView()
    }
}


//Photo by Clem Onojeghuo on Unsplash
