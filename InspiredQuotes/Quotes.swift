//
//  Quotes.swift
//  InspiredQuotes
//
//  Created by Jack Ngai on 2/16/17.
//  Copyright © 2017 Jack Ngai. All rights reserved.
//

import Foundation


extension Int{
    func random()->Int{
        return Int(arc4random_uniform(UInt32(self)))
    }
}

struct Quotes{
    
    let dictionary = [
                 "How do you truly become more valuable? Learn to work harder on yourself than you do on your job. - Jim Rohn",
                 "The most important thing in communication is to hear what isn't being said. - Peter Drucker",
                 "Scarcity is function of ability, or our lack of ability to acccess resources. - Peter Diamandis",
                 /*
         "Whatever the mind of man can conceive and believe, it can achieve. - Napoleon Hill",
                 "Believe you can and you are halfway there. - Theodore Roosevelt",
                 "Someone is sitting in the shade today because someone planted a tree a long time ago. - Warren Buffet",
                 "The measure of who we are is what we do with what we have. - Vince Lombardi",
                 "Remember, knowledge is not power, action is. Execution trumps knowledge everyday of the week. - Tony Robbins",
                 "Happiness is not something ready made. It comes from your own actions. - The 14th Dalai Lama",
                 "A journey of a thousand miles begins with a single step. - Lao Tzu",
                 "Gratitude is the sign of noble souls. - Aesop",
                 "Seek truth and you will find a path - Frank Slaughter",
                 "If you don't know where you are going, every road will get you nowhere. - Henry Kissinger",
                 "If everything seems under control, you are not going fast enough. - Mario Andretti",
                 "Try not to become a man of success, but rather try to become a man of value. - Albert Einstein",
                 "My favorite things in life don't cost any money. It's really clear the most precious resource we all have is time. - Steve Jobs",
                 "Never test the depths of the river with both feet. - Warren Buffet",
                 "The winner ain't the one with the fastest car. It's the one who refuses to lose. - Dale Earnhardt Sr.",
                 "When you cease to dream, you cease to live. - Malcolm Forbes",
                 "Never wish life were easier, wish that you were better. - Jim Rohn",
                 "Failure is success if we learn from it. - Malcolm Forbes",
                 "Formal education will make you a living; self-education will make you a fortune. - Jim Rohn",
                 "There is nothing so useless as doing efficiently that which should not be done at all. - Peter Drucker",
                 "Do or do not. There is no try. - Yoda",
                 "Perfection is not attainable, but if we chase perfection we can catch excellence. - Vince Lombardi",
                 "Setting goals is the first step in turning the invisible into the visible. - Tony Robbins",
                 "Be kind whenever possible. It is always possible. - The 14th Dalai Lama",
                 "When you are content to be simply yourself and don't compare or compete, everybody will respect you. - Lao Tzu",
                 "No act of kindness, no matter how small, is ever wasted. - Aesop",
                 "Imagination is more important than knowledge. - Albert Einstein",
                 "Faith is taking the first step even when you don't see the whole staircase. - MLK Jr.",
                 "Sometimes when you innovate, you make mistakes. it is best to admit quickly, and get on with improving your other innovations. - Steve Jobs",
                 "Success consists of going from failure to failure without loss of enthusiasm. - Winston Churchill",
                 "If you think you can, you can. And if you think you can't, you're right. - Mary Kay Ash",
                 "Never give up, for that is just the place and time that the tide will turn. - Harriet Beecher Stowe",
                 "If no mistake have you made, yet losing you are... a different game you should play. - Yoda",
                 "It's not whether you get knocked down, it's whether you get up. - Vince Lombardi",
                 "If you do what you've always done, you'll get what you've always gotten. - Tony Robbins",
                 "When I let go of what I am, I become what I might be. - Lao Tzu",
                 "The injury we do and the one we suffer are not weighed in the same scales. - Aesop",
                 "The important thing is not to stop questioning. Curiosity has its own reason for existing. - Albert Einstein",
                 "Life's most persistent and urgent question is, 'What are you doing for others?' - MLK Jr.",
                 "Sometimes life is going to hit you in the head with a brick. Don't lose faith. - Steve Jobs",
                 "If you're going through hell, keep going. - Winston Churchill",
                 "Aerodynamically, the bumble bee shouldn't be able to fly, but the bumble bee doesn't know it so it goes on flying anyway. - Mary Kay Ash",
                 "Any mind that is capable of real sorrow is capable of good. - Harriet Beecher Stowe",
                 "Friendships are discovered rather than made. - Harriet Beecher Stowe",
                 "The best and most beautiful things in the world cannot be seen or even touched - they must be felt with the heart. - Hellen Keller",
                 "This world is but a canvas to our imagination. - Henry David Thoreau",
                 "The secret of getting ahead is getting started. - Mark Twain",
                 "Failure is simply the opportunity to begin again, this time more intelligently. - Henry Ford",
                 "Life is an exciting business, and most exciting when it is lived for others. - Hellen Keller",
                 "It is in your moments of decision that your destiny is shaped. - Tony Robbins",
                 "Please all, and ou will please none. - Aesop",
                 "Anyone who has never made a mistake has never tried anything new. - Albert Einstein",
                 "Darkness cannot drive out darkness; only light can do that. Hate cannot drive out hate; only love can do that. - MLK Jr.",
                 "Setting goals is the first step in turning the invisible into the visible. - Tony Robbins",
                 "Success is not final, failure is not fatal: It is the courage to continue that counts. - Winston Churchill",
                 "A good goal is like a strenuous exercise - it makes you stretch. - Mary Kay Ash",
                 "The bitterest tears shed over graves are for words left unsaid and deeds left undone. - Harriet Beecher Stowe",
                 "Optimism is the faith that leads to achievement. Nothing can be done without hope and confidence. - Hellen Keller",
                 "You must live in the present, launch yourself on every wave, find your eternity in each moment. - Henry David Thoreau",
                 "It is common sense to take a method and try it. If it fails, admit it frankly and try another. But above all, try something. - FDR",
                 "If you think you can do a thing or think you can't do a thing, you're right. - Henry Ford",
                 "Self-pity is our worst enemy and if we yield to it, we can never do anything wise in this world. - Hellen Keller",
                 "Never trust the advice of a man in difficulties. - Aesop",
                 "Everything should be made as simple as possible, but not simpler. - Albert Einstein",
                 "It's really hard to design products by focus groups. A lot of times, people don't know what they want until you show it to them. - Steve Jobs",
                 "A pessimist sees the difficulty in every opportunity; an optimist sees the opportunity in every difficulty. - Winston Churchill",
                 "A mediocre idea that generates enthusiasm will go further than a great idea that inspires no one. - Mary Kay Ash",
                 "Walking with a friend in the dark is better than walking alone in the light. - Hellen Keller",
                 "Many men go fishing all of their lives without knowing that it is not fish they are after. - Henry David Thoreau",
                 "Age is an issue of mind over matter. If you don't mind, it doesn't matter. - Mark Twain",
                 "Happiness lies in the joy of achievementand the thrill of creative effort. - FDR",
                 "You can't build a reputation on what you are going to do. - Henry Ford",
                 "You may delay, but time will not. - Benjamin Franklin",
                 "Only I can change my life. No one can change it for me. - Carol Burnett",
                 "It always seems impossible until it's done. - Nelson Mandela",
                 "If you can dream it, you can do it. - Walt Disney",
                 "We can do anything we want to if we stick to it long enough. - Hellen Keller",
                 "The most beautiful thing we can experience is the mysterious. It is the source of all true art and science. - Albert Einstein",
                 "Design is not what it looks like and feels like. Design is how it works. - Steve Jobs",
                 "History will be kind to me for I intend to write it. - Winston Churchill",
                 "The only thing worse than being blind is having sight but no vision. - Hellen Keller",
                 "Heaven is under our feet as well as over our heads. - Henry David Thoreau",
                 "The fear of death follows from the fear of life. A man who lives fully is prepared to die at any time. - Mark Twain",
                 "The only limit to our realization of tomorrow will be our doubts of today. - FDR",
                 "When everything seems to be going against you, remember that the airplane takes off against the wind, not with it. - Henry Ford",
                 "Tell me and I forget, teach me and I may remember, involve me and I learn. - Benjamin Franklin",
                 "Quality is not an act, it is a habit. - Aristotle",
                 "With the new day comes new strength and new thoughts. - Eleanor Roosevelt",
                 "it does not matter how slowly you go as long as you do not stop. - Confucius",
                 "Our greatess weakness lies in giving up. The most certain way to succeed is always to try just one more time. - Thomas Edison",
                 "Either write something worth reading or do something worth writing. - Benjamin Franklin",
                 "Quality means doing it right when no one is looking. - Henry Ford",
                 "Men are not prisoners of fate, but only prisoners of their own minds. - FDR",
                 "Many a small thing has been made large by the right kind of advertising. - Mark Twain",
                 "Alone we can do so little; together we can do so much. - Hellen Keller",
                 "We make a living by what we get, but we make a life by what we give. - Winston Churchill",
                 "I want to put a ding in the universe. - Steve Jobs",
 
 */
                 "I have no special talents. I am only passionately curious. - Albert Einstein"
 
 
        
                 
    ]
    
    
}
