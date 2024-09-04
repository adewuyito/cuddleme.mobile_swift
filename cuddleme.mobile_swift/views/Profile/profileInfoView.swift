//
//  profileInfoView.swift
//  cuddleme.mobile_swift
//
//  Created by Gideon Adewuyi on 30/08/2024.
//

import SwiftUI


struct CuddleProfileInfoView: View {
	var body: some View {
		HStack {
			CircularProgressView(progress: 0.5, lineWidth: 5)
				.padding(.trailing, 20.0)
			VStack(alignment: .leading) {
				HStack {
					Text("Josteve")
						.cuddleFont(.Athletics, size: 30, weight: .bold)
					Text("28")
						.cuddleFont(size: 17, weight: .medium)
					Image("crown_icon")
				}
				
				Text("Product Designer")
					.cuddleFont(size: 10, weight: .medium)
					.padding(.bottom, 12)
				
				Button(action: {}) {
					Text("Complete my profile")
						.cuddleFont(size: 10, weight: .medium)
						.foregroundStyle(.black)
						.padding(.horizontal, 11).padding(.vertical, 7)
						.buttonStyle(PlainButtonStyle())
				}
				.background(.whiteF6)
				.clipShape(Capsule())
				
			}
		}
	}
}
