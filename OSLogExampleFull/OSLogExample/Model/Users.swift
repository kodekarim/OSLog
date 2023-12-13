/* 
Copyright (c) 2023 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Users : Codable, Identifiable {
	let id : Int?
	let firstName : String?
	let lastName : String?
	let maidenName : String?
	let age : Int?
	let gender : String?
	let email : String?
	let phone : String?
	let username : String?
	let password : String?
	let birthDate : String?
	let image : String?
	let bloodGroup : String?
	let height : Int?
	let weight : Double?
	let eyeColor : String?
	let hair : Hair?
	let domain : String?
	let ip : String?
	let address : Address?
	let macAddress : String?
	let university : String?
	let bank : Bank?
	let company : Company?
	let ein : String?
	let ssn : String?
	let userAgent : String?

	enum CodingKeys: String, CodingKey {

		case id = "id"
		case firstName = "firstName"
		case lastName = "lastName"
		case maidenName = "maidenName"
		case age = "age"
		case gender = "gender"
		case email = "email"
		case phone = "phone"
		case username = "username"
		case password = "password"
		case birthDate = "birthDate"
		case image = "image"
		case bloodGroup = "bloodGroup"
		case height = "height"
		case weight = "weight"
		case eyeColor = "eyeColor"
		case hair = "hair"
		case domain = "domain"
		case ip = "ip"
		case address = "address"
		case macAddress = "macAddress"
		case university = "university"
		case bank = "bank"
		case company = "company"
		case ein = "ein"
		case ssn = "ssn"
		case userAgent = "userAgent"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		id = try values.decodeIfPresent(Int.self, forKey: .id)
		firstName = try values.decodeIfPresent(String.self, forKey: .firstName)
		lastName = try values.decodeIfPresent(String.self, forKey: .lastName)
		maidenName = try values.decodeIfPresent(String.self, forKey: .maidenName)
		age = try values.decodeIfPresent(Int.self, forKey: .age)
		gender = try values.decodeIfPresent(String.self, forKey: .gender)
		email = try values.decodeIfPresent(String.self, forKey: .email)
		phone = try values.decodeIfPresent(String.self, forKey: .phone)
		username = try values.decodeIfPresent(String.self, forKey: .username)
		password = try values.decodeIfPresent(String.self, forKey: .password)
		birthDate = try values.decodeIfPresent(String.self, forKey: .birthDate)
		image = try values.decodeIfPresent(String.self, forKey: .image)
		bloodGroup = try values.decodeIfPresent(String.self, forKey: .bloodGroup)
		height = try values.decodeIfPresent(Int.self, forKey: .height)
		weight = try values.decodeIfPresent(Double.self, forKey: .weight)
		eyeColor = try values.decodeIfPresent(String.self, forKey: .eyeColor)
		hair = try values.decodeIfPresent(Hair.self, forKey: .hair)
		domain = try values.decodeIfPresent(String.self, forKey: .domain)
		ip = try values.decodeIfPresent(String.self, forKey: .ip)
		address = try values.decodeIfPresent(Address.self, forKey: .address)
		macAddress = try values.decodeIfPresent(String.self, forKey: .macAddress)
		university = try values.decodeIfPresent(String.self, forKey: .university)
		bank = try values.decodeIfPresent(Bank.self, forKey: .bank)
		company = try values.decodeIfPresent(Company.self, forKey: .company)
		ein = try values.decodeIfPresent(String.self, forKey: .ein)
		ssn = try values.decodeIfPresent(String.self, forKey: .ssn)
		userAgent = try values.decodeIfPresent(String.self, forKey: .userAgent)
	}

}
