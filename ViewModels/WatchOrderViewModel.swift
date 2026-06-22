//
//  WatchOrderViewModel.swift
//  ZipCartWatch Watch App
//
//  Created by Dawit Chernet on 2026-06-21.
//

import Foundation
import Combine

final class WatchOrderViewModel: ObservableObject {
    @Published var orders: [WatchOrder] = []

    init() {
        loadOrders()
    }

    func loadOrders() {
        orders = [
            WatchOrder(
                id: UUID(),
                orderNumber: "ZC-1001",
                productName: "iPhone 16 Pro",
                status: .outForDelivery,
                estimatedDelivery: "Today 6:30 PM",
                progress: 0.75
            ),
            WatchOrder(
                id: UUID(),
                orderNumber: "ZC-1002",
                productName: "MacBook Pro",
                status: .preparing,
                estimatedDelivery: "Tomorrow",
                progress: 0.35
            ),
            WatchOrder(
                id: UUID(),
                orderNumber: "ZC-1003",
                productName: "AirPods Pro",
                status: .delivered,
                estimatedDelivery: "Delivered",
                progress: 1.0
            )
        ]
    }
}
