//
//  OrderListWatchView.swift
//  ZipCartWatch Watch App
//
//  Created by Dawit Chernet on 2026-06-21.
//

import SwiftUI

struct OrderListWatchView: View {
    @StateObject private var viewModel = WatchOrderViewModel()

    var body: some View {
        NavigationStack {
            List(viewModel.orders) { order in
                NavigationLink(value: order) {
                    WatchOrderCardView(order: order)
                }
            }
            .navigationTitle("ZipCart")
            .navigationDestination(for: WatchOrder.self) { order in
                OrderDetailWatchView(order: order)
            }
        }
    }
}
