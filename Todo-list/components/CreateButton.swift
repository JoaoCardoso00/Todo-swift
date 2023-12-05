//
//  CreateButton.swift
//  Todo-list
//
//  Created by joao cardoso on 05/12/23.
//

import SwiftUI

struct CreateButton: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10).frame(width: 65, height: 65).foregroundStyle(Color("Brand Blue dark"))
            Image(systemName: "plus.circle").foregroundColor(Color("Gray-100")).font(.title2)
        }
    }
}

#Preview {
    CreateButton()
}
