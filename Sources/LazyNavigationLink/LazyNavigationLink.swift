//
//  LazyNavigationLink.swift
//  LazyNavigationLink
//
//  Created by Oliver Letterer on 13.05.22.
//

import SwiftUI

public struct LazyNavigationLink<Destination: View>: View {
    private let label: AnyView

    @State private var _destination: Destination?
    @ViewBuilder private let destination: () -> Destination

    public init<Label: View>(label: Label, @ViewBuilder destination: @escaping () -> Destination) {
        self.label = AnyView(label)
        self.destination = destination

        self.__destination = State<Destination?>(initialValue: nil)
    }

    public var body: some View {
        NavigationLink(isActive: Binding<Bool>(get: { _destination != nil }, set: { newValue in
            if newValue {
                _destination = destination()
            } else {
                _destination = nil
            }
        }), destination: { _destination }, label: { label })
    }
}
