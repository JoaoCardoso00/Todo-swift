//
//  CreateButton.swift
//  Todo-list
//
//  Created by joao cardoso on 05/12/23.
//

import SwiftUI

struct CreateButton: View {
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            ZStack {
                RoundedRectangle(cornerRadius: 10).frame(width: 50, height: 50).foregroundStyle(Color("Brand Blue dark"))
                Image(systemName: "plus.circle").foregroundColor(Color("Gray-100"))
            }
        }
    }
}

#Preview {
    CreateButton {}
}
