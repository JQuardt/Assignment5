//
//  MyStory.swift
//  Assignment5
//
//  Created by Jenna Marquardt on 2/9/24.
//

import Foundation
import SwiftUI

struct MyStory {
    var pageIndex : Int = 0

    let story = Story(pages: [
        StoryPage( // 0
            """
            Howdy Cowboy! Ever since you were a young pup, you wanted to be a sheriff. The shiny star, the shiny pistol, the cowboy hat and boots - you want it all. You arrive in the town of Mellow Mesa hoping to apply for their town sheriff. Who is your noble steed that is helping you on your journey?
            """,
            choices: [
                Choice(text: "Lightning, a black stallion with a heart of gold.", destination: 1),
                Choice(text: "Grant a big and tall Budweiser Clydesdale. He's a gentle giant.", destination: 2),
                Choice(text: "Dominic the wonky donkey. He's got one eye weirdly larger than the other.", destination: 3),
                Choice(text: "Harvey the Hippo. He's wearing a backwards ball-cap and loves hip-hop, obviously.", destination: 4),
            ]
        ),
        StoryPage( // 1
            """
            Oh that's right, you're riding Lightning. Lightning rears with a mighty neigh and jauntily gallops his way into town.
            """,
            choices: [
                Choice(text: "Continue", destination: 5),
            ]
        ),
        StoryPage( // 2
            """
            Oh that's right, you're riding Grant. Grant clops along at a casual, steady pace into town.
            """,
            choices: [
                Choice(text: "Continue", destination: 5),
            ]
        ),
        StoryPage( // 3
            """
            Oh that's right, you're riding Dominic. Dominic he-haws mighty loudly as you loudly approach the town.
            """,
            choices: [
                Choice(text: "Continue", destination: 5),
            ]
        ),
        StoryPage( // 4
            """
            What?! A Hippo? You can't be serious. You're riding a hippo into town... you realize that this is an Old West story, right? Where did you get a hippo and how did you get it saddled? Oh never mind, that's a story for another time, I guess. Ok then... you are riding a hippo into town. Harvey the Hippo is thinking up hip hop rhythms as you trudge along at hippo pace into town.
            """,
            choices: [
                Choice(text: "Continue", destination: 5),
            ]
        ),
        StoryPage( // 5
            """
            You see a few buildings -- the Sarsaparilla Saloon, the General Mercantile, and the Sheriff's Office. Which one do you approach?
            """,
            choices: [
                Choice(text: "The Sarsaparilla Saloon - I'm parched!", destination: 6),
                Choice(text: "The General Mercantile - Let's go shopping!", destination: 7),
                Choice(text: "The Sheriff's Office - Gotta get that shiny star!", destination: 8),
                Choice(text: "Just kick some tires.", destination: 9),
            ]
        ),
        StoryPage( // 6
            """
            You kick open the swinging double doors of the saloon. You see two folks -- the bartender and a young fresh-faced chap. The bartender is busy cleaning glasses in the back room. He yells that the saloon opens at night. The young chap is relaxing in a corner chair reading a book the size of his head.
            """,
            choices: [
                Choice(text: "Go over and ask the chap what he's reading.", destination: 10),
                Choice(text: "Leave the Saloon.", destination: 5),
            ]
        ),
        StoryPage( // 7
            """
            You enter the store, and your nose is overwhelmed by the fresh scent. There are two aisles in the store, both stocked fully and entirely with deodorant. Weird. Well, do you want to buy some? It might come in handy. What do you do?
            """,
            choices: [
                Choice(text: "Purchase some deodorant. I feel a bit smelly.", destination: 11),
                Choice(text: "Leave the store sad that they don't sell any beef jerky.", destination: 5),
            ]
        ),
        StoryPage( // 8
            """
            You enter the Sheriff's office. The deputy wants you to prove yourself. He points to a board with three posters on it.
            """,

            choices: [
                Choice(text: "Stinky Pete", destination: 12),
                Choice(text: "One-Eyed Wally", destination: 13),
                Choice(text: "Coyote Kate", destination: 14),
                Choice(text: "Let's explore some more of the town.", destination: 5),
            ]
        ),
        StoryPage( // 9
            """
            You came all the way to town to kick some tires? Ok I guess it's always good to take some time for self-care, you know take your bearings, do some meditation, and breath. Yes let's do that. Let's focus on our breath. B-r-e-a-t-h-e in. Aaaaand b-r-e-a-t-h-e out. Oh how very relaxing. It is nice to spend some time doing nothing for a while, you are right. But anyways back to business.
            """,
            choices: [
                Choice(text: "Yes, back to business", destination: 5),
            ]
        ),
        StoryPage( // 10
            """
            "Howdy! My name's $name. Say, what are you reading?" "Good afternoon, my name's Teddy. I am an ophthalmologist and studying Artificial Intelligence in Ophthalmology." "Op-tha What?" "Ophthalmology - you know an eye doctor?" "Oh... well... great... carry on." You don't want to disturb Teddy's research, so you head back outside.
            """,
            choices: [
                Choice(text: "Head back outside.", destination: 5),
            ]
        ),
        StoryPage( // 11
            """
            One stick of deodorant is added to your inventory. You go back outside. There is nothing else to do here.
            """,
            choices: [
                Choice(text: "Head back outside.", destination: 5),
            ]
        ),
        StoryPage( // 12
            """
            You vow to bring Stinky Pete to justice. Stinky Pete's hideout is in Snake River Canyon. You ride out to the canyon on your steed. As you approach the canyon, your nostrils start to smell something fierce. It gets worse and worse as you continue into the canyon.  Well at least you know where Stinky Pete gets his name. Stinky Pete is wily and eyes you before you approach. He calls out, "Stop right thar! I'm the fastest pistol in the West and know how to shoot." You reply:
            
            
            """,
            choices: [
                Choice(text: "\"Correction. You were the fastest pistol in the West!\"", destination: 16),
                Choice(text: "\"I can see, well smell, that you have a problem. Must be hard making friends. Maybe we can help each other.\" Hold up the deodorant from your rucksack. \"This will solve your problem. If you agree to stop stealin' and thievin' I will give you it.\"", destination: 15),
            ]
        ),
        StoryPage( // 13
            """
            You're going to bring One-Eyed Wally in. One-Eyed Wally's hideout is in Oil Slick Cavern. You ride out to the Cavern on your steed. You see Oil Slick cavern. It has a sign outside so you're pretty sure it's the place. You spot One-Eyed Willy just inside the entrance of the cave. He must've heard you approach. He has one eye looking at you and the other eye is a bloated, purple mass. "Wow, that looks painful," you say. "People have been giving me grief about it my whole life," Willy says. "And I always take care of them," he says with an evil glint in his eye. What do you say to him?
            """,
            choices: [
                Choice(text: "\"Looks like it's time for someone to take care of you!\" Grab your pistol.", destination: 17),
                Choice(text: "\"Looks like it's time for someone to take care of you.\" Mention Teddy the eye doc.", destination: 18),
            ]
        ),
        StoryPage( // 14
            """
            You've got a fight to pick with Coyote Kate. Coyote Kate is known to ride around the Poppy Prairies on her mare, Junebug. You smell the poppies as you ride through the fields on your steed. The wind blows your hair back as you spot Coyote Kate and her mare, Junebug. She nods her head your way in greeting.
            """,

            choices: [
                Choice(text: "No time to talk. Go in shootin'!", destination: 16),
                Choice(text: "After observing your steed and hers, you realize that love is in the air. You say ,\"Our steeds are in love.\"", destination: 19),
            ]
        ),
        StoryPage( // 15
            """
            Is that deodorant? That store owner in town won't let me close enough to buy one. Gee wiz thanks a million! Yessir, I'll stop my thievin'!
            """,
            choices: [
                Choice(text: "Bring no-longer-stinky Pete in. Now nice and clean, he has sworn off his dirty ways.", destination: 21),
            ]
        ),
        StoryPage( // 16
            """
            You shoot faster than a scorpion stings, but not fast enough. After the initial BANG BANG!! you feel a pain in your chest. You clutch your chest and go down. It hurts so bad. You bleed out and die.
            """,
            choices: [
                Choice(text: "😢 Try again.", destination: 0),
            ]
        ),
        StoryPage( // 17
            """
            You duck out of the way as One-Eyed Wally surprisingly shoots out a laser with his one good eye! What?! Pew pew! That son of a gun shot you! You forgot to tell your momma good bye! You die.
            """,
            choices: [
                Choice(text: "😢 Try again.", destination: 0),
            ]
        ),
        StoryPage( // 18
            """
            Have you met the town's new eye doc, Teddy? He seems like a nice city slicker. Maybe he could take care of that eye for you?
            """,
            choices: [
                Choice(text: "Help Teddy get the healthcare he needs. After cleaning up, Teddy becomes a brand new man.", destination: 21),
            ]
        ),
        StoryPage( // 19
            """
            Junebug bashfully winks her lashes at your steed. She does look in love. Your horses canter together all the way back to town ready for a horsey wedding. Coyote Kate, inspired by all the love in the air, volunteers to be locked up. Bring Coyote Kate to jail. She does her time, followed up by an appropriate amount of community service. She never forgets the display of true love between steeds. This changes her life forever.
            """,
            choices: [
                Choice(text: "Continue.", destination: 21),
            ]
        ),
        StoryPage( // 20
            """
            What's this gun for if not for shooting! You didn't practice on all those tin cans for nothin'! You shoot the hat off Coyote Kate's head and then shoot her off her horse. She'll be pushing up daisies. But oh no! You've shot Junebug, her steed, too! Your steed yells out but it is too late. You get trampled in the chaos. You die.
            """,
            choices: [
                Choice(text: "😢 Try again.", destination: 0),
            ]
        ),
        StoryPage( // 21
            """
            After tying up your trusty steed, you walk into the Sheriff's Office ready to be pinned with a shiny star. The deputy looks over at you as you enter. "Looks like you took care of that ruffian, Sheriff!" He smiles at you and pulls a star out of his pocket to pin onto your chest. "Good work, partner."
            
            🎉 Congratulations!! You got a STAR!! 🎉
            """,
            choices: [
                Choice(text: "Play the Adventure again!", destination: 0),
            ]
        ),
    ])

    func getPageText() -> String {
        return story[pageIndex].text
    }

    func getPageChoice0() -> String {
        if story[pageIndex].choices.count > 0 {
            return story[pageIndex].choices[0].text
        } else {
            return ""
        }
    }

    func getPageChoice1() -> String {
        if story[pageIndex].choices.count > 1 {
            return story[pageIndex].choices[1].text
        } else {
            return ""
        }
    }

    func getPageChoice2() -> String {
        if story[pageIndex].choices.count > 2 {
            return story[pageIndex].choices[2].text
        } else {
            return ""
        }
    }

    func getPageChoice3() -> String {
        if story[pageIndex].choices.count > 3 {
            return story[pageIndex].choices[3].text
        } else {
            return ""
        }
    }

    func getChoiceDestination(_ picked : Int) -> Int {
        return story[pageIndex].choices[picked].destination
    }

    func getPageIndex() -> Int {
        return pageIndex
    }
    
    mutating func changePage(_ newPageNum : Int) {
        pageIndex = newPageNum
    }
    
    func findDestination(_ chosen : String) -> Int {
        //check against choice text
        //get destination from that number.
        var nextDestination : Int = 0
        var index = 0
        for choiceArray in story[pageIndex].choices {
            if chosen == choiceArray.text {
                nextDestination = choiceArray.destination
            }
            index += 1
        }
        return nextDestination
    }
}














