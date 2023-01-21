//
//  CustomButton.swift
//  Country Flag Game
//
//  Created by Daksh Nakra on 1/20/23.
//

import SwiftUI

struct CustomButton: View {
    var text: String
    var background: Color = .yellow
    var body: some View {
        Text(text)
            .foregroundColor(.cyan)
            .padding()
            .padding(.horizontal)
            .background(background)
            .cornerRadius(25)
            .shadow(radius: 10)
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(text: "Next")
    }
}
