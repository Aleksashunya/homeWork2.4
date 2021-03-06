//
//  User.swift
//  homeWork2.4
//
//  Created by Александра Мельникова on 29.05.2021.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUserData() -> User {
        User(
            login: "User",
            password: "Password",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let birth: String
    let city: String
    let firstEducation: String
    let secondEducation: String
    let work: String
    let instagram: String
    let pathToSwiftbook: String
    let photos: [String]
    let mainPhoto: String
    let hobbies: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(name: "Александра",
               surname: "Мельникова",
               birth: "21 октября 1987 года (33 года)",
               city: "город Владивосток",
               firstEducation: "Дальневосточный государственный университет, специальность: Математик-экономист",
               secondEducation: "Дальневосточный федеральный университет, специальность: Переводчик английского языка",
               work: "Кассир в банке -> Бухгалтер -> Исполнительный директор",
               instagram: "@aleksashunya",
               pathToSwiftbook: """
💾 Предыстория:
В университете моими любимыми предметами были предметы связанные с программированием, тогда мы кодили на C++, Visual C, Octave и Matlab. Однако, после окончания университета, мечту о программировании я забросила в дальний ящик, и не возвращалась к ней до последних лет.

💻 Переломный момент:
Мысли о возврате к программированию не покидали меня, и пару лет назад я все-таки приняла решение двигаться в этом направлении.  Очень интересовала разработка под IOS, отправной точкой стала покупка макбука.

👩🏼‍💻 Где я сейчас:
Я пробовала заниматься сама на сайте Swiftbook, но за целый год так и не сдвинулась с мертвой точки. Тогда я решила записаться на курсы. Строгие временные рамки, и нежелание отставать от одногруппников, подстегивает развиваться. Моя цель - после окончания курсов найти работу по данной специальности, и посвятить свою дальнейшую карьеру программированию.
""",
               photos: ["pic1", "pic2", "pic3", "pic4", "pic5", "pic6"],
               mainPhoto: "myPhoto",
               hobbies: """
🏂 Сноубординг
Одно из моих самых любимых зимних увлечений. Катаюсь с 2017 года и обожаю покупать новый сноубордический инвентарь

🏋🏻‍♀️ Фитнес-клуб
Несколько раз в неделю я хожу в спортзал. В основном мне нравятся групповые силовые и аэробные занятия, но так же обязательно добавляю к ним занятия на растяжку и шпагат

📸 Фотография
Мне очень нравится фотографировать и я часто выкладываю новые фото в свой инстаграм

🏝 Путешествия
Как и большинство людей, я получаю удовольствие от путешествий - будь то интересные места в нашем регионе, или другие страны

🏕 Мечты
Моя мечта и цель - удаленная работа, чтобы иметь возможность работать из любой точки мира
"""
        )
    }
}
