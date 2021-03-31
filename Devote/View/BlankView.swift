//
//  BlankView.swift
//  Devote
//
//  Created by Seunghun Yang on 2021/03/31.
//

import SwiftUI

struct BlankView: View {
    // MARK: - Properties
    var backgroundColor: Color
    var backgroundOpacity: Double
    
    // MARK: - Body
    var body: some View {
        VStack {
            Spacer()
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(backgroundColor)
        .opacity(backgroundOpacity)
        .edgesIgnoringSafeArea(.all)
        .blendMode(.overlay)
    }
}

// MARK: - Preview
struct BlankView_Previews: PreviewProvider {
    static var previews: some View {
        BlankView(backgroundColor: Color.black, backgroundOpacity: 0.3)
            .background(BackgroundImageView())
            .background(backgroundGradient.ignoresSafeArea(.all))
    }
}

