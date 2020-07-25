//
//  Review.swift
//  GYG-Challenge
//
//  Created by toxicsun on 7/24/20.
//  Copyright © 2020 Anonymous. All rights reserved.
//

struct Reviews: Codable {
	var reviews: [Review]
	var totalCount: Int
	var pagination: Pagination
}

struct Pagination: Codable {
	var limit: Int
	var offset: Int
}

struct Review: Codable, Identifiable {
	var id: Int
	var author: Author
	var enjoyment: String
	var message: String
	var rating: Int
	var created: String
}

extension Review {
	static var `defualt`: Review {
	return Review(id: 123,
				  author: Author(fullName: "Lee",
								 country: "United Kingdom",
								 photo: "florian"),
				  enjoyment: "Fantastic Trip",
				  message: "We loved Tempelhof, my 10yr old thought it was fantastic and probably one of his highlights of Berlin. The guide was brilliant and gave lots of information on both the history and the architecture. I would recommend this tour to anyone, however there is a lot of walking and most of it is up and down stairs, so make sure you’re able to manage it before booking.",
				  rating: 5,
				  created: "2020-03-07T01:05:16+01:00")
	}
}

struct Author: Codable {
	var fullName: String
	var country: String?
	fileprivate var photo: String?
}