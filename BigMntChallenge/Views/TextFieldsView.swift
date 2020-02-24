//
//  TextFieldsView.swift
//  BigMntChallenge
//
//  Created by Pawel Madej on 24/02/2020.
//  Copyright © 2020 Pawel Madej. All rights reserved.
//

import SwiftUI

struct TextFieldsView: View {
    @State private var email = ""
    @State private var pass = ""
    @State private var pass2 = ""
    @State private var mobile = ""

    var body: some View {
        ZStack {
            Color.black
                .opacity(0.8)
                .edgesIgnoringSafeArea(.all)

            VStack(spacing: 16) {
                Spacer()

                HStack {
                    Text("1")
                        .foregroundColor(Color(UIColor.darkGray))
                        .padding(10)
                        .background(Color(UIColor.lightGray))
                        .clipShape(Circle())
                        .padding(6)
                        .background(Color(UIColor.darkGray))
                        .clipShape(Circle())

                    Spacer()

                    Text("2")
                        .foregroundColor(Color(UIColor.lightGray))
                        .padding(16)
                        .background(Color(UIColor.darkGray)).clipShape(Circle())

                    Spacer()

                    Text("3")
                        .foregroundColor(Color(UIColor.lightGray))
                        .padding(16)
                        .background(Color(UIColor.darkGray)).clipShape(Circle())
                }
                .padding(.vertical)

                HStack(spacing: 0) {
                    Image(systemName: "envelope.fill")
                        .font(.title)
                        .foregroundColor(Color.white)
                        .frame(width: 60, height: 60)
                        .background(Color.gray)

                    TextField("Email address", text: $email)
                        .frame(height: 60)
                        .padding(.leading)
                        .background(Color(UIColor.lightGray))

                }

                HStack(spacing: 16) {
                    HStack(spacing: 0) {
                        Image(systemName: "lock.fill")
                            .font(.title)
                            .foregroundColor(Color.white)
                            .frame(width: 60, height: 60)
                            .background(Color.gray)

                        SecureField("Password", text: $pass)
                            .frame(height: 60)
                            .padding(.leading)
                            .background(Color(UIColor.lightGray))
                    }

                    HStack(spacing: 0) {
                        Image(systemName: "lock.fill")
                            .font(.title)
                            .foregroundColor(Color.white)
                            .frame(width: 60, height: 60)
                            .background(Color.gray)

                        SecureField("Again", text: $pass2)
                            .frame(height: 60)
                            .padding(.leading)
                            .background(Color(UIColor.lightGray))
                    }
                }
                HStack(spacing: 0) {
                    Image(systemName: "phone.fill")
                        .font(.title)
                        .foregroundColor(Color.white)
                        .frame(width: 60, height: 60)
                        .background(Color.gray)

                    TextField("Mobile Number", text: $mobile)
                        .frame(height: 60)
                        .padding(.leading)
                        .background(Color(UIColor.lightGray))
                }

                HStack(spacing: 16) {
                    Button(action: {}) {
                        Image(systemName: "chevron.left")
                            .font(.largeTitle)
                    }
                    .frame(width: 60, height: 60)
                    .background(Color.red)
                    .foregroundColor(Color.white)
                    .padding(0)

                    Button(action: {}) {
                        Text("Continue").font(.title)
                    }
                    .frame(height: 60)
                    .frame(maxWidth: .infinity)
                    .background(Color(UIColor.lightGray))
                    .foregroundColor(Color.white)
                }
                .padding(.vertical)

                Text("We use your email and mobile number to send you ride confirmations and receipts.")
                    .foregroundColor(Color(UIColor.lightGray))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal,32)
            }
            .padding(.horizontal, 32)
        }
    }
}

struct TextFields_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldsView()
    }
}
