//
//  BackgroundImageView.swift
//  Devote
//
//  Created by Seunghun Yang on 2021/03/30.
//

import SwiftUI

struct BackgroundImageView: View {
    // MARK: - Properties
    
    // MARK: - Body
    var body: some View {
        Image("rocket")
            .antialiased(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
            .resizable()
            .scaledToFill()
            .ignoresSafeArea(.all)
    }
}

// MARK: - Preview
struct BackgroundImageView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundImageView()
    }
}
