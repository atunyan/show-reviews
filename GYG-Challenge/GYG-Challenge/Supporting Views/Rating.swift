//
//  Rating.swift
//  GYG-Challenge
//


import SwiftUI

struct Rating: View {
	var value: Int

    var body: some View {
		HStack {
			ForEach(0 ..< 5) { item in
				if item < self.value {
					Image(systemName: "star.fill")
				} else {
					Image(systemName: "star")
				}
			}
		}.foregroundColor(Color.yellow)

    }
}

struct Rating_Previews: PreviewProvider {
    static var previews: some View {
		Rating(value: 3)
    }
}
