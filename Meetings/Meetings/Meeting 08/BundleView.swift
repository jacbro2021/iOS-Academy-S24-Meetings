//
//  BundleView.swift
//  Meetings
//
//  Created by jacob brown on 4/11/24.
//

import SwiftUI

struct BundleView: View {
    var body: some View {
        Text(getSquid())
    }

    func getSquid() -> String {
        if let url = Bundle.main.url(forResource: "squid", withExtension: "txt") {
            if let content = try? String(contentsOf: url) {
                return content
            }
        }
        return ""
    }
}

#Preview {
    BundleView()
}
