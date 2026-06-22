//
//  WatchOrderCardView.swift
//  ZipCartWatch Watch App
//
//  Created by Dawit Chernet on 2026-06-21.
//

import SwiftUI

struct WatchOrderCardView: View {
    let order: WatchOrder

    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text(order.productName)
                .font(.headline)
                .lineLimit(1)

            Text(order.orderNumber)
                .font(.caption)
                .foregroundStyle(.secondary)

            Text(order.status.rawValue)
                .font(.caption2)

            ProgressView(value: order.progress)
        }
        .padding(.vertical, 4)
    }
}
