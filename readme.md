![](https://nebula.wsimg.com/4c982b5c0ec714609efcc8d95bd7b468?AccessKeyId=AE390C3BA3FA36C76872&disposition=0&alloworigin=1)

***

#  📚"Test" 📚

***
## This app about magic book. 
You could ask this book about something what worry you.   
When you touch this book📕, it gives answer for you! 😎.   
*Good luck and have fun my Friends!*💛
***
I used:
<ul>
<li> Image view</li>
<li> Button </li>
<li> Array </li>
<li> AVFoundation </li>
</ul>

***
When you you start app, you can hear amazing  song🎵 *(I imported for this AVFoundation)*,   
when you opening or closing this virtual book you can hear sound effect 👻 *(AVFoundation)*:  

>````swift
>    func playSound() {
>        let url = Bundle.main.url(forResource: "shot", withExtension: "mp3")
>        player = try! AVAudioPlayer(contentsOf: url!)
>        player.play()
>    }
>````

You can open or close this book enough touch the book.   
You can see, when this book's open you can close it touch   
on book or touch it outside of it and it will close. But you   
can't open it when book's close if you touch it outside this book.

***

___Example a code for click on book:___
````swift
    @IBAction func changeText(_ sender: UIButton) {
        let arrayText = ["YES", "NO", "MAYBE", "NO DOUBT ABOUT IT", "ABSOLUTELY", "THE STARS SAY NO",   
        "SO IT SHALL BE", "UNLIKELY", "INDICATIONS SAY YES", "POSITIVELY", "YOU CAN COUNT ON IT",   
        "ANSWER UNCLEAR ASK LATER", "DON'T BET ON IT", "LOOKS LIKE YES", "CHANCE AREN'T GOOD",   
        "FOCUS AND ASK AGAIN", "CAN'T SAY NOW", "PROSPECT GOOD", "VERY LIKELY", "CONSULT ME LATER",   
        "CANNOT FORETELL NOW"]
        
        if bookImage.image == #imageLiteral(resourceName: "clouse_book") {
            playSound()
            bookImage.image = #imageLiteral(resourceName: "open_book")
            textAnswer.text = arrayText.randomElement()
        } else {
            setBook()
        }
    }
````
***
Example app: 
> <img src="https://github.com/grafon100/ask_book/blob/master/ask_book.gif" width="500" height="500">  
***
All images and sounds using in this app was take with open resources.   
_Type of licence:_ __Non-Commercial__.  
__This app is not intended for commercial use!__  
***
*If you are the owner of these images or sounds and  
you do not want your materials to be presented in this application,  
or it somehow violates your copyright.   
Please let me know and I will remove this material from the application immediately.*  
***
Email: <mikita.hnidzin@icloud.com>
