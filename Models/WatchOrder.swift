//
//  WatchOrder.swift
//  ZipCartWatch Watch App
//
//  Created by Dawit Chernet on 2026-06-21.
//

import Foundation

struct WatchOrder: Identifiable, Hashable {
    let id: UUID
    let orderNumber: String
    let productName: String
    let status: WatchOrderStatus
    let estimatedDelivery: String
    let progress: Double
}

enum WatchOrderStatus: String {
    case confirmed = "Confirmed"
    case preparing = "Preparing"
    case outForDelivery = "Out for Delivery"
    case delivered = "Delivered"
}
