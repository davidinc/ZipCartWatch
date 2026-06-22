//
//  OrderDetailWatchView.swift
//  ZipCartWatch Watch App
//
//  Created by Dawit Chernet on 2026-06-21.
//

import SwiftUI

struct OrderDetailWatchView: View {
    let order: WatchOrder

    var body: some View {
        ScrollView {
            VStack(spacing: 12) {
                Image(systemName: iconName)
                    .font(.system(size: 42))

                Text(order.productName)
                    .font(.headline)
                    .multilineTextAlignment(.center)

                Text(order.orderNumber)
                    .font(.caption)
                    .foregroundStyle(.secondary)

                ProgressView(value: order.progress)
                    .padding(.horizontal)

                Text(order.status.rawValue)
                    .font(.headline)

                Text("Delivery")
                    .font(.caption)
                    .foregroundStyle(.secondary)

                Text(order.estimatedDelivery)
                    .font(.caption)
                    .multilineTextAlignment(.center)

                Button("Refresh") {
                    print("Refresh tapped")
                }
                .buttonStyle(.bordered)
            }
            .padding()
        }
        .navigationTitle("Order")
    }

    private var iconName: String {
        switch order.status {
        case .confirmed:
            return "checkmark.seal"
        case .preparing:
            return "shippingbox"
        case .outForDelivery:
            return "truck.box"
        case .delivered:
            return "house.fill"
        }
    }
}
