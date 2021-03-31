//
//  ListRowItemView.swift
//  Devote
//
//  Created by Seunghun Yang on 2021/03/31.
//

import SwiftUI

struct ListRowItemView: View {
    // MARK: - Properties
    @Environment(\.managedObjectContext) var viewContext
    @ObservedObject var item: Item
    
    // MARK: - Body
    var body: some View {
        Toggle(isOn: $item.completion) {
            Text(item.task ?? "")
                .font(.system(.title2, design: .rounded))
                .fontWeight(.heavy)
                .foregroundColor(item.completion ? Color.pink : Color.primary)
                .animation(.default)
        } //: Toggle
        .onReceive(item.objectWillChange, perform: { _ in
            if self.viewContext.hasChanges {
                try? self.viewContext.save()
            }
        })
        .toggleStyle(CheckboxStyle())
    }
}
