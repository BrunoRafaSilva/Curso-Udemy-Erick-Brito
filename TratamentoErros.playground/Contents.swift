// Tratamento de Erros
enum LoginError: Error {
    case wrongLogin
    case wrongPassword
    case noInternetConnection
}


func login(userName: String, password: String) throws -> Bool {
    if checkInternetConnection() {
        if userName != "bruno"{
            throw LoginError.wrongLogin
        }
        if password != "123456"{
            throw LoginError.wrongPassword
        }
        return true
    } else {
        throw LoginError.noInternetConnection
    }
}

func checkInternetConnection() -> Bool {
    return true
}

do{
    let loginResult = try login(userName: "bruno", password: "123456")
} catch LoginError.wrongLogin{
    print("Username invalid")
} catch LoginError.wrongPassword {
    print("Password Invalid")
}catch LoginError.noInternetConnection {
    print("No internet connection")
}

let loginResult = try?/*!*/ login(userName: "bruno", password: "12345")
