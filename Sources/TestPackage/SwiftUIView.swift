//
//  SwiftUIView.swift
//  
//
//  Created by Honey Shah on 17/02/23.
//

import SwiftUI

@available(iOS 13.0, *)
struct SwiftUIView: View {
    @State var showingAlert = true
    var alertMessage: String
    var buttonText: String
    var body: some View {
        if #available(iOS 15.0, *) {
            ZStack { }
                .alert(alertMessage, isPresented: $showingAlert) {
                    Button(buttonText, role: .cancel) { }
                }
        } else {
            Text(alertMessage)
        }
    }
}
