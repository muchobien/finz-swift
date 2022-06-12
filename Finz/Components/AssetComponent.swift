//
//  AssetComponent.swift
//  Finz
//
//  Created by Rodrigo Sanabria on 12/6/22.
//

import SwiftUI

struct AssetComponent: View {
    var body: some View {
        HStack(spacing: 20) {
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .fill(.primary.opacity(0.2))
                .frame(width: 44)
                .frame(height: 44)
            VStack(alignment: .leading, spacing: 4) {
                Text("Title")
                    .font(.subheadline)
                    .bold()
                    .lineLimit(1)
                Text("Category")
                    .font(.footnote)
                    .opacity(0.7)
                    .lineLimit(1)
                Text("Date")
                    .font(.footnote)
                    .foregroundColor(.secondary)
            }
            Spacer()
            Text("$23.00")
                .bold()
        }
        .padding([.top, .bottom], 8)
    }
}

struct AssetComponent_Previews: PreviewProvider {
    static var previews: some View {
        AssetComponent()
    }
}
