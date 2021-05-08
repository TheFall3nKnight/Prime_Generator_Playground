func isPrime (num:Int) -> Bool {
    if num == 1 {
        return false
    }
    else if num == 2 {
        return true
    }
    var divisor = 2
    repeat {
        if num % divisor == 0 {
            return false
        }
        divisor += 1
    } while divisor < num
    
    return true
}

func primeGen (upToNum: Int) -> Array<Int> {
    var primeList = [Int]()
    for num in 1...upToNum {
        if isPrime(num: num) {
            primeList.append(num)
        }
    }
    
    return primeList
}

print(primeGen(upToNum: 999))
