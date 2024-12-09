//
//  Quetion.swift
//  QiuckTest
//
//  Created by Olga on 06.12.2024.
//

struct Quetion {
    let title: String
    let type: ResponseType
    let answers: [Answer]
    
    static func getQuestions() -> [Quetion] {
        [
            Quetion (title: "Какую пищу вы любите?",
                      type: .single,
                      answers: [
                        Answer(title: "Стейк", animal: .dog),
                        Answer(title: "Рыба", animal: .cat),
                        Answer(title: "Морковь", animal: .rabbit),
                        Answer(title: "Кукуруза", animal: .turtle)
                              ]
                      ),
            Quetion (title: "Что вам нравится больше?",
                      type: .multiple,
                      answers: [
                        Answer(title: "Плавать", animal: .dog),
                        Answer(title: "Спать", animal: .cat),
                        Answer(title: "Обнимать", animal: .rabbit),
                        Answer(title: "Есть", animal: .turtle)
                              ]
                      ),
            Quetion (title: "Любите ли вы поездки на машине?",
                      type: .ranged,
                      answers: [
                        Answer(title: "Ненавижу", animal: .dog),
                        Answer(title: "Нервничаю", animal: .cat),
                        Answer(title: "Не замечаю", animal: .rabbit),
                        Answer(title: "Обожаю", animal: .turtle)
                        ]
                      )
            ]
    }
}

struct Answer {
    let title: String
    let animal: Animal
}

enum ResponseType {
    case single
    case multiple
    case ranged
}

enum Animal: Character {
    case dog = "🐶"
    case cat = "🐱"
    case rabbit = "🐰"
    case turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog:
            return "Вы верный как пёс"
        case .cat:
            return "Вы милый и пушистый как котенок"
        case .rabbit:
            return "У вас передние зубы как у кролика"
        case .turtle:
            return "Вы медленный как черепаха"
        }
    }
}
