//
//  SwiftUIView.swift
//  
//
//  Created by Honey Shah on 17/02/23.
//

import SwiftUI

@available(iOS 13.0, *)
public struct SwiftUIView: View {
    @State public var showingAlert = true
    public var alertMessage: String
    public var buttonText: String
    public init(showingAlert: Bool = true, alertMessage: String, buttonText: String) {
        self.showingAlert = showingAlert
        self.alertMessage = alertMessage
        self.buttonText = buttonText
    }
    public var body: some View {
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
