//
//  Data.swift
//  All About Gokul
//
//  Created by Gokul Sai Koppola on 20/09/24.
//
import Foundation
import SwiftUI

struct Info{
    let name: String
    let Story: String
    let image: String
    let link: String
    let hobbies: [String]
    let skills: [String]
    let education: [String]
    let work: [String]
    let funfacts: [String]
    let favorites: [String]
}

let information = Info(name: "Gokul Sai Koppola",
                       Story: """
I am an enthusiastic electrical and electronics engineering graduate 👷, I've dived into various tech projects during my college journey. From IoT and Cloud computing to Microcontroller-based systems. One highlight is a practical project in Ceebros Apartments, Chennai, where I crafted a system to cut down on electricity⚡️ bills in real-time. Developed an AgroBot 🤖, an autonomous robot built for basic agricultural tasks including pesticide sprinkling, seeding and fruit harvesting.

In the realm of iOS development, I have showcased my skills by creating various iOS apps using Swift in UIKit 👨‍💻.  I also worked with CAD software Fusion 360 to create 3d models in robotics. I also worked as vice president of iPowerE student chapter in SRM

Eager to contribute my technical skills and innovative mindset, I am actively seeking opportunities 😇. Let's connect and explore how my passion for technology and hands-on experience can contribute to your team's success.
""",
                       image: "ProfilePic",
                       link: "https://github.com/Gokul1503A",
                       hobbies: ["Reading", "Cooking", "Travelling", "Coding", "watch movies"],
                       skills: ["Swift", "CAD", "Cloud Computing", "IoT", "Microcontroller", "Robotics"],
                       education: ["B.tech In Electrical and Electronics Engineering", "PCM in 12th"],
                       work: ["developed iOS apps", "Developed an Autonating Lighting System", "Developed an AgroBot", "Made AI models with PyTorch"],
                       funfacts: [
"I like watching flop movies" ,
"My driving skills are so bad, they always terrify my friends when they ride with me",
"I always come long before right time, since I am always free and available."],
                       favorites: ["Alia Bhatt ❤️‍🔥", "Alia Bhatt 💕", "Alia Bhatt 🌟"])
