//
//  profileView.swift
//  cuddleme.mobile_swift
//
//  Created by Gideon Adewuyi on 30/08/2024.
//

import SwiftUI
import SwiftfulRouting

struct ProfileView: View {
		let router: AnyRouter
		var body: some View {

				NavigationStack {
						VStack {
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
						}.toolbar {
								ToolbarItemGroup(placement: .topBarTrailing) {
										Button(action: {}) {
												Label(
														title: { Text("Settings") },
														icon: { Image("setting_icon") }
												)
										}
										Button(action: {}) {
												Label(
														title: { Text("Settings") },
														icon: { Image("notification_icon") }
												)
										}
								}
						}

				}
		}
}

struct SettingsView: View {
		var body: some View {
				Text("Profile settings")
		}
}

struct CircularProgressView: View {
		let progress: Double
		var color: Color = .blue
		var backgroundColor: Color = .gray.opacity(0.2)
		var lineWidth: CGFloat = 10

		var body: some View {
				ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)) {

						Circle()
								.stroke(backgroundColor, lineWidth: lineWidth)

						Circle()
								.trim(from: 0, to: progress)
								.stroke(appLinearGradient, style: StrokeStyle(lineWidth: lineWidth, lineCap: .round))
								.rotationEffect(.degrees(90))
								.animation(.linear, value: progress)

						Text("\((progress * 100).formatted())%")
								.cuddleFont(size: 10, weight: .medium)
								.foregroundStyle(.white)
								.lineSpacing(4)
								.backgroundStyle(appLinearGradient)
								.frame(height: 30.0)
								.clipShape(Capsule())
								.padding(.horizontal, 12).padding(.vertical, 4.0)
								.background(appLinearGradient, in: Capsule())
								.offset(y: 15)
				}.frame(maxWidth: 158, maxHeight: 148)
		}
}

#Preview {
		RouterView {
				router in ProfileView(router: router)
		}
}
