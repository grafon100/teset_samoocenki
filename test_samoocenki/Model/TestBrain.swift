//
//  TestBrain.swift
//  САМООЦЕНКИ ДЕПРЕССИИ
//
//  Created by grafon100 on 28/08/2021.
//
import Foundation

struct TestBrain{
    let test = [
        Test(text: """
ШКАЛА ЗАНГА ДЛЯ САМООЦЕНКИ ДЕПРЕССИИ (адаптировано Т.И.Балашовой, НИИ им. Бехтерева).

Инструкция:
Внимательно прочитайте каждое утверждение и поставьте отметку в графе, которая лучше всего описывает то, как часто вы чувствовали или вели себя соответствующим образом в течение последней недели. Не размышляйте слишком долго, в тесте нет «правильных» или «неправильных» ответов.
""", point: [0, 0, 0, 0, 0]),
        Test(text: "Я чувствую подавленность и испытываю печаль", point: [1, 2, 3, 4]),
        Test(text: "Утром я чувствую себя лучше всего", point: [4, 3, 2, 1]),
        Test(text: "Я плачу или близок к этому", point: [1, 2, 3, 4]),
        Test(text: "Я плохо сплю ночью", point: [1, 2, 3, 4]),
        Test(text: "Я ем столько же, сколько и раньше", point: [4, 3, 2, 1]),
        Test(text: "Мне приятно смотреть на привлекательных женщин(мужчин), разговаривать с ними, находиться рядом", point: [4, 3, 2, 1]),
        Test(text: "Я замечаю, что теряю вес", point: [1, 2, 3, 4]),
        Test(text: "Меня беспокоят запоры", point: [1, 2, 3, 4]),
        Test(text: "Мое сердце бьется быстрее, чем обычно", point: [1, 2, 3, 4]),
        Test(text: "Я чувствую усталость без видимой причины", point: [1, 2, 3, 4]),
        Test(text: "Я мыслю так же ясно, как и раньше", point: [4, 3, 2, 1]),
        Test(text: "Мне легко делать то, что я умею", point: [4, 3, 2, 1]),
        Test(text: "Я чувствую беспокойство и не могу усидеть на месте", point: [1, 2, 3, 4]),
        Test(text: "У меня есть надежды на будущее", point: [4, 3, 2, 1]),
        Test(text: "Я более раздражителен, чем обычно", point: [1, 2, 3, 4]),
        Test(text: "Мне легко принимать решения", point: [4, 3, 2, 1]),
        Test(text: "Я чувствую себя полезным(ой) и необходимым(ой)", point: [4, 3, 2, 1]),
        Test(text: "Я живу полной и интересной жизнью", point: [4, 3, 2, 1]),
        Test(text: "Я чувствую, что другим людям станет лучше, если я умру", point: [1, 2, 3, 4]),
        Test(text: "Меня до сих пор радует то, что радовало всегда", point: [4, 3, 2, 1])
    ]
    
    let firstButton = "РЕДКО"
    let secondButton = "ИНОГДА"
    let thridButton = "ЧАСТО"
    let fourButton = "БОЛЬШУЮ ЧАСТЬ ВРЕМЕНИ"
    
    var numberAnswer = 0
    var pointUser = 0
    
    mutating func nextAnswer () -> String {
        if numberAnswer + 1 < test.count{
            numberAnswer += 1
            return test[numberAnswer].textQuestion
        } else {
            
            switch pointUser {
            case 0...49:
                numberAnswer = 0
                print(pointUser)
                pointUser = 0
                return "РЕЗУЛЬТАТ: Нормальное состояние"
            case 50...59:
                numberAnswer = 0
                print(pointUser)
                pointUser = 0
                return "РЕЗУЛЬТАТ: Легкое депрессивное расстройство"
            case 60...69:
                numberAnswer = 0
                print(pointUser)
                pointUser = 0
                return "РЕЗУЛЬТАТ: Депрессивное расстройство средней степени тяжести"
            case 70...80:
                numberAnswer = 0
                print(pointUser)
                pointUser = 0
                return "РЕЗУЛЬТАТ: Депрессивное расстройство тяжелой степени тяжести"
            default:
                return "Error"
            }
        }
    }
    
    mutating func addPointUser(answerUser: String){
        let placeInArra: Int
        switch answerUser{
        case "РЕДКО":
            placeInArra = 0
        case "ИНОГДА":
            placeInArra = 1
        case "ЧАСТО":
            placeInArra = 2
        case "БОЛЬШУЮ ЧАСТЬ ВРЕМЕНИ":
            placeInArra = 3
        default:
            placeInArra = 4
        }
        pointUser += test[numberAnswer].poitAnswer[placeInArra]
    }
    
    func returnNumberQuestion () -> Int {
        return numberAnswer
    }
 
    func changeProgress() -> Float{
        return Float(numberAnswer) / Float(test.count-1)
    }
}
