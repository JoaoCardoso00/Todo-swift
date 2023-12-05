//
//  DeleteButton.swift
//  Todo-list
//
//  Created by joao cardoso on 05/12/23.
//

import SwiftUI

struct DeleteButton: View {
    var action: () -> Void

    var body: some View {
        Button(action: action) {
            Image(systemName: "trash").foregroundColor(Color("Gray-300"))
        }
    }
}

#Preview {
    DeleteButton {}
}
