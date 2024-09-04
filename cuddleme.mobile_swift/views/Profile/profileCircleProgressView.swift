//
//  cuddleCircleProgressView.swift
//  cuddleme.mobile_swift
//
//  Created by Gideon Adewuyi on 30/08/2024.
//

import SwiftUI


struct CircularProgressView: View {
	let progress: Double
	var backgroundColor: Color = .gray.opacity(0.2)
	var lineWidth: CGFloat = 5
	var image: String = "mock_cat"
	
	var body: some View {
		ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)) {
			
			Circle()
				.stroke(.progressLight, lineWidth: lineWidth)
			
			Circle()
				.trim(from: 0, to: progress)
				.stroke(appLinearGradient, style: StrokeStyle(lineWidth: lineWidth, lineCap: .round))
				.rotationEffect(.degrees(90))
				.animation(.linear, value: progress)
			
			Image(image)
				.resizable()
				.aspectRatio(0.9, contentMode: .fit)
				.clipShape(Circle())
//				.scaledToFit()
			
			
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
