//
//  BlankView.swift
//  Devote
//
//  Created by Seunghun Yang on 2021/03/31.
//

import SwiftUI

struct BlankView: View {
    // MARK: - Properties
    
    // MARK: - Body
    var body: some View {
        VStack {
            Spacer()
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(Color.black)
        .opacity(0.5)
        .edgesIgnoringSafeArea(.all)
    }
}

// MARK: - Preview
struct BlankView_Previews: PreviewProvider {
    static var previews: some View {
        BlankView()
    }
}
