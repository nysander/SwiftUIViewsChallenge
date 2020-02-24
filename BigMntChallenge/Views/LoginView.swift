//
//  LoginView.swift
//  BigMntChallenge
//
//  Created by Pawel Madej on 24/02/2020.
//  Copyright © 2020 Pawel Madej. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    @State private var login = ""
    @State private var password = ""
    
    var body: some View {
        ZStack {
            Image("loginbg")
                .resizable()
                .blur(radius: 20)
                .scaleEffect(1.2)
                .edgesIgnoringSafeArea(.vertical)

            VStack {
                Spacer()

                Image(systemName: "checkmark.circle.fill")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .foregroundColor(Color(UIColor.darkGray).opacity(0.8))
                    .padding(40)
                    .padding(.vertical)

                Spacer()

                HStack {
                    Image(systemName: "person.crop.circle")
                        .resizable()
                        .frame(width: 40, height: 40, alignment: .center)
                        .padding(.trailing)

                    VStack(alignment: .leading) {
                        Text("Name")
                            .bold()
                            .font(Font.lowercaseSmallCaps(.body)())
                        ZStack {
                            if password.isEmpty {
                                HStack {
                                    Text("Enter name")
                                    Spacer()
                                }
                                TextField("Enter name", text: $login)
                            }
                        }
                    }
                }
                .foregroundColor(.gray)

                Divider()
                    .foregroundColor(.gray)
                    .background(Color.gray)

                HStack {
                    Image(systemName: "lock")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40, alignment: .center)
                        .padding(.trailing)

                    VStack(alignment: .leading) {
                        Text("Password")
                            .bold()
                            .font(Font.lowercaseSmallCaps(.body)())
                        HStack {
                            ZStack {
                                if password.isEmpty {
                                    HStack {
                                        Text("Enter password")
                                        Spacer()
                                    }
                                }
                                SecureField("", text: $password)
                            }
                            Button(action: {}) {
                                Text("Help")
                            }
                        }
                    }
                }
                .foregroundColor(.gray)

                Divider()
                    .foregroundColor(.gray)
                    .background(Color.gray)

                Button(action: {}) {
                    Text("Sign In")
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(
                            Capsule()
                                .stroke()
                                .foregroundColor(.white))
                }
                .padding(.vertical, 20)

                HStack {
                    Text("Don't have an account?")
                        .foregroundColor(Color(UIColor.lightGray))
                        .font(Font.lowercaseSmallCaps(.body)())

                    Button(action: {}) {
                        Text("Sign up")
                            .font(Font.lowercaseSmallCaps(.body)())
                    }
                }
                .padding()
                .foregroundColor(.white)
            }
            .padding(30)
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}


//Photo by Henry Be on Unsplash
