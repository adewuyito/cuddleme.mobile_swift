//
//  OnboardingView.swift
//  cuddleme.mobile_swift
//
//  Created by Gideon Adewuyi on 28/08/2024.
//

import SwiftUI

let appLinearGradient = LinearGradient(
		colors: [.gradientDark, .gradientLight],
		startPoint: .leading,
		endPoint: .trailing
)

struct OnboardingView: View {
		var body: some View {
				VStack {

						Image("logo_gradient_full")
								.padding(.bottom, 24)
								.padding(.top, 52)
						Text("Let’s get started. Create your account")
								.cuddleFont()
								.padding(.bottom, 30)
						ZStack {
								Image("line")
										.aspectRatio(contentMode: .fill)
						}
						Text("lorem ipsim siet")
								.cuddleFont(.Athletics, size: 30.75, weight: .bold)
								.padding(.bottom, 60)

						CuddleGradientButton(label: "Sign up with Linkedin", onCall: {})
								.padding(.bottom, 32.0)

						HStack {
								Text("Have an account already?")
										.cuddleFont(size: 14)
										.foregroundStyle(.grey76)
								Button(
										action: {},
										label: {
												Text("Log in")
														.cuddleFont(size: 16, weight: .medium)
														.foregroundStyle(appLinearGradient)
														.underline()
										}
								)
						}
					
						Spacer()

						TextLinkBuilder(
								firstText: "By signing up you agree to our",
								secondText: "Terms and Conditions.",
								onCall: {}
						)

						TextLinkBuilder(
								firstText: "Learn how we use your data in our",
								secondText: "Privacy Policy.",
								onCall: {}
						)

				}.padding(.horizontal, 24)
		}
}

struct TextLinkBuilder: View {
		let firstText: String
		let secondText: String
		let onCall: () -> Void
		var body: some View {
				HStack {
						Text(firstText)
								.cuddleFont(size: 14)
								.foregroundStyle(.grey76)
						Button(
								action: onCall,
								label: {
										Text(secondText)
												.cuddleFont(size: 12, weight: .medium)
												.foregroundStyle(.grey76)
												.underline()
								}
						)
				}

		}
}

struct CuddleGradientButton: View {
		let label: String
		let onCall: () -> Void

		var body: some View {
				Button(
						action: onCall,
						label: {
								Text(label)
										.cuddleFont(size: 18, weight: .medium)
										.padding([.top, .bottom], 16)
										.foregroundStyle(.white)
										#if os(iOS)
												.frame(maxWidth: .infinity)
										#endif
						}
				)
				.buttonStyle(PlainButtonStyle())
				.background(appLinearGradient)
				.clipShape(Capsule())

		}
}

#Preview {
		OnboardingView()
}
