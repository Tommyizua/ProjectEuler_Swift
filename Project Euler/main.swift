import Darwin
import Foundation

func isPrime(number: Int) -> Bool {
    for i in 2...Int(sqrt(Double(number))) {
        if number % i == 0 {
            return false
        }
    }
    return true
}


/*
 func first() {
 var sum = 0
 for i in 0..<1000 {
 if i % 3 == 0 || i % 5 == 0 {
 sum += i
 }
 }
 print(sum)
 }
 
 func second() {
 var fib = [0,1]
 var value = 0
 var sum = 0
 var i = 2
 
 while value < 4_000_000 {
 value = fib[i-1] + fib[i-2]
 fib.append(value)
 if value % 2 == 0 {
 sum += value
 }
 i++
 }
 print(sum)
 }
 
 func third() {
 var sum: Int64 = 1
 let number: Int64 = 600851475143
 for divider in 2..<number {
 if number % divider == 0 && sum < number {
 sum *= divider
 print(divider)
 }
 }
 }
 
 func fourth() {
 var first = 0
 var second = 0
 var biggestResult = 0
 for var i = 999; i > 100; i-- {
 for var j = 990; j > 100; j-- {
 first = i
 second = j
 let result = i * j
 let reverse = Int(taskFourth(result.description)) ?? 0
 if result == reverse && result > biggestResult {
 biggestResult = result
 }
 }
 }
 print(biggestResult, first, second)
 }
 
 func taskFourth(word: String) -> String {
 var newWord = ""
 for var i = Int(word.characters.count) - 1; i >= 0; i-- {
 newWord += String(word[word.characters.startIndex.advancedBy(i)])
 }
 return newWord
 }
 
 func fifth() {
 var number = 20
 var counter = 0
 while 1 > 0 {
 for i in 1...number {
 counter = 0
 if number % i == 0 {
 } else {
 counter++
 break
 }
 }
 if counter == 0 {
 break
 }
 number++
 }
 print(number)
 }
 
 func sixth() {
 let number = 100
 var sum = 0.0
 var sumSquare = 0.0
 for i in 1...number {
 sum += Double(i)
 sumSquare += pow(Double(i), 2)
 }
 print(pow(sum, 2) - sumSquare)
 }
 
 func seventh() {
 var number = 4
 var primeNumbers = [2, 3]
 while primeNumbers.count < 10_001 {
 var counter = 0
 for divider in 2...number {
 switch divider {
 case 2...number-1 where number % divider == 0:
 counter = 1
 case number where counter == 0:
 primeNumbers.append(number)
 default:
 break
 }
 }
 number++
 print(primeNumbers.count)
 }
 print("\n", primeNumbers[10_001 - 1])
 }
 func eighth() {
 let numbers = "7316717653133062491922511967442657474235534919493496983520312774506326239578318016984801869478851843858615607891129494954595017379583319528532088055111254069874715852386305071569329096329522744304355766896648950445244523161731856403098711121722383113622298934233803081353362766142828064444866452387493035890729629049156044077239071381051585930796086670172427121883998797908792274921901699720888093776657273330010533678812202354218097512545405947522435258490771167055601360483958644670632441572215539753697817977846174064955149290862569321978468622482839722413756570560574902614079729686524145351004748216637048440319989000889524345065854122758866688116427171479924442928230863465674813919123162824586178664583591245665294765456828489128831426076900422421902267105562632111110937054421750694165896040807198403850962455444362981230987879927244284909188845801561660979191338754992005240636899125607176060588611646710940507754100225698315520005593572972571636269561882670428252483600823257530420752963450"
 var biggest = 0
 for i in 0...numbers.characters.count - 13 {
 var sum = 1
 for j in i..<i + 13 {
 sum *= Int(String(numbers[numbers.characters.startIndex.advancedBy(j)]))!
 }
 if sum > biggest {
 biggest = sum
 }
 }
 print(biggest)
 }
 
 func ninth() {
 for a in 2...1000 {
 for b in 3...1000 {
 let c = 1000 - a - b
 let a2 = pow(Double(a), 2)
 let b2 = pow(Double(b), 2)
 let c2 = pow(Double(c), 2)
 if a < b && b < c && a2 + b2 == c2 {
 print(a * b * c)
 }
 }
 }
 }
 func isPrime(number: Int) -> Bool {
 if number < 2 {
 return false
 }
 for var i = 2; i <= Int(sqrt(Double(number))); i++ {
 if number % i == 0 {
 return false
 }
 }
 return true
 }
 func tenth() {
 let n = 2_000_000
 var primeNumbers = [Int]()
 for number in 2..<n {
 if isPrime(number) {
 primeNumbers.append(number)
 }
 }
 var sum = 0
 for numb in primeNumbers {
 sum += numb
 }
 print(sum)
 }
 
 func compare(inout number: Int, inout bigger: Int) {
 if number > bigger {
 bigger = number
 }
 number = 1
 }
 
 func doubleDigitNumberFromString(id: Int, str: String) -> Int {
 return Int(String(str[str.characters.startIndex.advancedBy(id)]) + String(str[str.characters.startIndex.advancedBy(id+1)]))!
 }
 
 func eleventh() {
 let numbers = "08 02 22 97 38 15 00 40 00 75 04 05 07 78 52 12 50 77 91 08 49 49 99 40 17 81 18 57 60 87 17 40 98 43 69 48 04 56 62 00 81 49 31 73 55 79 14 29 93 71 40 67 53 88 30 03 49 13 36 65 52 70 95 23 04 60 11 42 69 24 68 56 01 32 56 71 37 02 36 91 22 31 16 71 51 67 63 89 41 92 36 54 22 40 40 28 66 33 13 80 24 47 32 60 99 03 45 02 44 75 33 53 78 36 84 20 35 17 12 50 32 98 81 28 64 23 67 10 26 38 40 67 59 54 70 66 18 38 64 70 67 26 20 68 02 62 12 20 95 63 94 39 63 08 40 91 66 49 94 21 24 55 58 05 66 73 99 26 97 17 78 78 96 83 14 88 34 89 63 72 21 36 23 09 75 00 76 44 20 45 35 14 00 61 33 97 34 31 33 95 78 17 53 28 22 75 31 67 15 94 03 80 04 62 16 14 09 53 56 92 16 39 05 42 96 35 31 47 55 58 88 24 00 17 54 24 36 29 85 57 86 56 00 48 35 71 89 07 05 44 44 37 44 60 21 58 51 54 17 58 19 80 81 68 05 94 47 69 28 73 92 13 86 52 17 77 04 89 55 40 04 52 08 83 97 35 99 16 07 97 57 32 16 26 26 79 33 27 98 66 88 36 68 87 57 62 20 72 03 46 33 67 46 55 12 32 63 93 53 69 04 42 16 73 38 25 39 11 24 94 72 18 08 46 29 32 40 62 76 36 20 69 36 41 72 30 23 88 34 62 99 69 82 67 59 85 74 04 36 16 20 73 35 29 78 31 90 01 74 31 49 71 48 86 81 16 23 57 05 54 01 70 54 71 83 51 54 69 16 92 33 48 61 43 52 01 89 19 67 48"
 
 var biggest = 0
 var sum = 1
 var counter = 0
 
 // check for biggest in horizontal line
 for var j = 0; j < numbers.characters.count-11; j+=3 {
 for var i = j; i < j + 11; i+=3 {
 sum *= doubleDigitNumberFromString(i, str: numbers)
 }
 compare(&sum, bigger: &biggest)
 }
 
 // check for biggest in vertical line
 for var j = 0; j < 1018; j+=3 {
 for var i = j; i < 181+j; i+=60 {
 sum *= doubleDigitNumberFromString(i, str: numbers)
 }
 compare(&sum, bigger: &biggest)
 }
 
 // check for biggest in diagonal from left to right down
 for var j = 0; j < 1018; j+=3 {
 for var i = j; i < 190+j; i+=63 {
 sum *= doubleDigitNumberFromString(i, str: numbers)
 }
 compare(&sum, bigger: &biggest)
 if ++counter == 17 {
 counter = 0
 j+=9
 continue
 }
 }
 
 // check for biggest in diagonal from left to right up
 for var j = 1188; j > 179; j-=3 {
 for var i = j; i > j-190; i-=57 {
 sum *= doubleDigitNumberFromString(i, str: numbers)
 }
 compare(&sum, bigger: &biggest)
 if ++counter == 17 {
 counter = 0
 j-=9
 continue
 }
 }
 
 print(biggest)
 }
 
 func numberOfDivisor(number: Double) -> Int {
 var divisorsCounter = 1
 for var i = 2.0; i < sqrt(number); i++ {
 if number % i == 0 {
 divisorsCounter++
 }
 }
 return divisorsCounter * 2
 }
 
 func twelfth() {
 var divisorsCounter = 2
 for var number = 28.0; divisorsCounter < 501; number++ {
 let value = number*(number+1)/2
 divisorsCounter = numberOfDivisor(value)
 print(value, divisorsCounter)
 }
 
 //73920      384 112    >100
 //2031120   2015 240    >200
 //2162160   2079 320    >300
 //17907120  5984 480    >400
 
 //104126917 14430  2
 }
 
 func nDigitNumberFromAny(id: Int, numbers: Any, n: Int) -> Int64 {
 var number = ""
 let str = String(numbers)
 for i in 0..<n {
 number += String(str[str.characters.startIndex.advancedBy(id + i)])
 }
 return Int64(number)!
 }
 
 func thirteenth() {
 let numbers = "37107287533902102798797998220837590246510135740250463769376774900097126481248969700780504170182605387432498619952474105947423330951305812372661730962991942213363574161572522430563301811072406154908250230675882075393461711719803104210475137780632466768926167069662363382013637841838368417873436172675728112879812849979408065481931592621691275889832738442742289174325203219235894228767964876702721893184745144573600130643909116721685684458871160315327670386486105843025439939619828917593665686757934951621764571418565606295021572231965867550793241933316490635246274190492910143244581382266334794475817892575867718337217661963751590579239728245598838407582035653253593990084026335689488301894586282278288018119938482628201427819413994056758715117009439035398664372827112653829987240784473053190104293586865155060062958648615320752733719591914205172558297169388870771546649911559348760353292171497005693854370070576826684624621495650076471787294438377604532826541087568284431911906346940378552177792951453612327252500029607107508256381565671088525835072145876576172410976447339110607218265236877223636045174237069058518606604482076212098132878607339694128114266041808683061932846081119106155694051268969251934325451728388641918047049293215058642563049483624672216484350762017279180399446930047329563406911573244438690812579451408905770622942919710792820955037687525678773091862540744969844508330393682126183363848253301546861961243487676812975343759465158038628759287849020152168555482871720121925776695478182833757993103614740356856449095527097864797581167263201004368978425535399209318374414978068609844840309812907779179908821879532736447567559084803087086987551392711854517078544161852424320693150332599594068957565367821070749269665376763262354472106979395067965269474259770973916669376304263398708541052684708299085211399427365734116182760315001271653786073615010808570091499395125570281987460043753582903531743471732693212357815498262974255273730794953759765105305946966067683156574377167401875275889028025717332296191766687138199318110487701902712526768027607800301367868099252546340106163286652636270218540497705585629946580636237993140746255962240744869082311749777923654662572469233228109171419143028819710328859780666976089293863828502533340334413065578016127815921815005561868836468420090470230530811728164304876237919698424872550366387845831148769693215490281042402013833512446218144177347063783299490636259666498587618221225225512486764533677201869716985443124195724099139590089523100588229554825530026352078153229679624948164195386821877476085327132285723110424803456124867697064507995236377742425354112916842768655389262050249103265729672370191327572567528565324825826546309220705859652229798860272258331913126375147341994889534765745501184957014548792889848568277260777137214037988797153829820378303147352772158034814451349137322665138134829543829199918180278916522431027392251122869539409579530664052326325380441000596549391598795936352974615218550237130764225512118369380358038858490341698116222072977186158236678424689157993532961922624679571944012690438771072750481023908955235974572318970677254791506150550495392297953090112996751986188088225875314529584099251203829009407770775672113067397083047244838165338735023408456470580773088295917476714036319800818712901187549131054712658197623331044818386269515456334926366572897563400500428462801835170705278318394258821455212272512503275512160354698120058176216521282765275169129689778932238195734329339946437501907836945765883352399886755061649651847751807381688378610915273579297013376217784275219262340194239963916804498399317331273132924185707147349566916674687634660915035914677504995186714302352196288948901024233251169136196266227326746080059154747183079839286853520694694454072476841822524674417161514036427982273348055556214818971426179103425986472045168939894221798260880768528778364618279934631376775430780936333301898264209010848802521674670883215120185883543223812876952786713296124747824645386369930090493103636197638780396218407357239979422340623539380833965132740801111666627891981488087797941876876144230030984490851411606618262936828367647447792391803351109890697907148578694408955299065364044742557608365997664579509666024396409905389607120198219976047599490197230297649139826800329731560371200413779037855660850892521673093931987275027546890690370753941304265231501194809377245048795150954100921645863754710598436791786391670211874924319957006419179697775990283006991536871371193661495281130587638027841075444973307840789923115535562561142322423255033685442488917353448899115014406480203690680639606723221932041495354150312888033953605329934036800697771065056663195481234880673210146739058568557934581403627822703280826165707739483275922328459417065250945123252306082291880205877731971983945018088807242966198081119777158542502016545090413245809786882778948721859617721078384350691861554356628840622574736922845095162084960398013400172393067166682355524525280460972253503534226472524250874054075591789781264330331690"
 
 var sum: Int64 = 0
 for var i = 0;i<=numbers.characters.count-50; i+=50 {
 sum += nDigitNumberFromAny(i, numbers: numbers, n: 15)
 }
 print(nDigitNumberFromAny(0, numbers: sum, n: 10))
 }
 
 func fourteenth() {
 var biggestCount = 0
 var startBiggestNumber = 2
 
 for var number = 2; number < 1_000_000; number++ {
 print(number)
 var value = number
 var counter = 0
 while value > 1 {
 if value % 2 == 0 {
 value /= 2
 } else {
 value = 3 * value + 1
 }
 counter++
 }
 if biggestCount < counter {
 biggestCount = counter
 startBiggestNumber = number
 }
 }
 print(biggestCount, startBiggestNumber)
 //Total stemps: 258 Biggest had: 524 Number: 837799
 }
 
 func fifteenth() {
 var array = [[1: 1, 2: 1, 3: 1, 4: 1, 5: 1, 6: 1, 7: 1, 8: 1, 9: 1, 10: 1, 11: 1, 12: 1, 13: 1, 14: 1, 15: 1, 16: 1, 17: 1, 18: 1, 19: 1, 20: 1, 21: 1]]
 for i in 1...20 {
 let empty = [Int: Int]()
 // add empty dictionary, which we will editting later.
 array.append(empty)
 for j in 1...21 {
 if j == 1 {
 (array[i])[j] = 1
 continue
 }
 let previousNumber = (array[i])[j-1]
 let previousLineNumber = (array[i-1])[j]
 (array[i])[j] = previousLineNumber! + previousNumber!
 }
 }
 print((array[20])[21]!)
 //137846528820
 }
 
 func sixteenth() {
 func powBig(num: Int, p: Int) -> String {
 
 var digits = [num]
 var nextDigit = 0
 let base = 1000000000
 for _ in 0..<p - 1 {
 for i in 0..<digits.count {
 digits[i] *= num
 digits[i] += nextDigit % base
 nextDigit = digits[i] / base + nextDigit / base
 digits[i] = digits[i] % base
 }
 if nextDigit != 0 {
 let length = nextDigit.description.characters.count;
 for _ in 0..<length {
 digits.append(nextDigit % base)
 nextDigit /= base
 }
 }
 }
 var result = ""
 for var y = digits.count - 1; y >= 0; y-- {
 result += digits[y].description
 }
 return result
 }
 
 let str = powBig(2, p: 1000)
 
 var sum = 0
 for value in str.characters {
 sum += Int(String(value))!
 }
 print(sum)
 }
 
 
 var twos = [Int](count: 4, repeatedValue: 0)
 twos[0] = 1
 
 for _ in 0..<10 {
 
 var future = false
 var current = false
 
 for z in 0..<twos.count {
 if future {
 current = true
 }
 twos[z] *= 2
 
 if twos[z] >= 10 {
 twos[z] -= 10
 future = true
 } else {
 future = false
 }
 
 if current {
 twos[z]++
 }
 current = false
 }
 var sum = 0
 
 for x in twos {
 sum += x
 }
 print(sum)
 
 }
 
 extension Int {
 var spellOutStyle:String {
 let formatter = NSNumberFormatter()
 formatter.numberStyle = .SpellOutStyle
 return formatter.stringFromNumber(self)!
 }
 }
 
 func seventeenth() {
 
 var sum = 0
 for number in 1...1000 {
 var and = ""
 
 switch number {
 case _ where number % 100 == 0:
 break
 case 101...999:
 and = "and"
 default:
 break
 }
 let num = (number.spellOutStyle + and).stringByReplacingOccurrencesOfString(" ", withString: "").stringByReplacingOccurrencesOfString("-", withString: "")
 sum += num.characters.count
 }
 print(sum)
 //21124
 }
 
 func eighteenth() {
 
 let location = "/Users/user/Documents/iOS/Tommy/Swift/Project Euler/Project Euler/Task18.txt"
 var pyramidNumbers = ""
 if let fileContent = try? String(contentsOfFile: location) {
 print(fileContent)
 pyramidNumbers = fileContent.stringByReplacingOccurrencesOfString("\n", withString: "").stringByReplacingOccurrencesOfString(" ", withString: "")
 }
 func getNumber(i: Int) -> Int {
 return Int(String(pyramidNumbers[pyramidNumbers.characters.startIndex.advancedBy(i)]) + String(pyramidNumbers[pyramidNumbers.characters.startIndex.advancedBy(i+1)]))!
 }
 //print(pyramidNumbers)
 
 var sum = Int(String(pyramidNumbers[pyramidNumbers.characters.startIndex]))!
 var end = 0
 var endValue = 5
 var start = 2
 var startValue = 2
 for var j = 2; j <= 200; j = start {
 var biggets = 0
 end += endValue
 for var i = j; i < end; i+=2 {
 //print(getNumber(i))
 biggets = max(getNumber(i), getNumber(i+2))
 //print(biggets,i)
 
 if i == end - 3 {
 sum += biggets
 print("big", biggets)
 }
 }
 endValue += 2
 startValue += 2
 start += startValue
 }
 
 //print(sum)
 
 let pyramid =
 [[75],
 [95, 64],
 [17, 47, 82],
 [18, 35, 87, 10],
 [20, 04, 82, 47, 65],
 [19, 01, 23, 75, 03, 34],
 [88, 02, 77, 73, 07, 63, 67],
 [99, 65, 04, 28, 06, 16, 70, 92],
 [41, 41, 26, 56, 83, 40, 80, 70, 33],
 [41, 48, 72, 33, 47, 32, 37, 16, 94, 29],
 [53, 71, 44, 65, 25, 43, 91, 52, 97, 51, 14],
 [70, 11, 33, 28, 77, 73, 17, 78, 39, 68, 17, 57],
 [91, 71, 52, 38, 17, 14, 91, 43, 58, 50, 27, 29, 48,],
 [63, 66, 04, 68, 89, 53, 67, 30, 73, 16, 69, 87, 40, 31],
 [04, 62, 98, 27, 23, 09, 70, 98, 73, 93, 38, 53, 60, 04, 23]
 ]
 
 func getLargestPath(row: Int, index: Int, sum: Int) -> Int {
 if row == pyramid.count - 1 {
 return sum + pyramid[row][index]
 }
 
 let pathA = getLargestPath(row + 1, index: index, sum: sum + pyramid[row][index])
 let pathB = getLargestPath(row + 1, index: index + 1, sum: sum + pyramid[row][index])
 
 if pathA > pathB {
 return pathA
 } else {
 return pathB
 }
 }
 
 print(getLargestPath(0, index: 0, sum: 0))
 print(59+73+52+53+87+57+92+81+81+79+81+32+86+82+97+55+97+36+62+65+90+93+95+54+71+71+68+71+94+08+89+69+73+52+39+90+84+52+95+65+94+64+96+22+58+45+56+82+74+52+98+38+91+78+90+70+61+17+11+75+74+55+81+87+89+99+73+88+95+68+37+87+73+77+60+82+87+64+96+65+47+94+85+51+87+65+65+91+83+72+24+98+89+53+82+96+58+98+95)
 }
 
 func nineteenth() {
 var day = 1
 var sundayCounter = 0
 var days = [1: 31, 2: 28, 3: 31, 4: 30, 5: 31, 6: 30, 7: 31, 8: 31, 9: 30, 10: 31, 11: 30, 12: 31]
 
 for year in 1901...2000 {
 
 if year % 4 == 0 && year % 100 != 0 {
 days[2] = 29
 } else if year % 400 == 0 {
 days[2] = 29
 } else {
 days[2] = 28
 }
 
 for i in 1...12 {
 let daysInMonth = days[i]!
 for value in 1...daysInMonth {
 day++
 
 if day == 7 && value == 1 {
 sundayCounter++
 day = 0
 } else if day == 7 {
 day = 0
 }
 }
 
 }
 }
 print(sundayCounter)
 }
 
 func twentieth() {
 
 var numbers = [Int]()
 for i in 2...100 {
 numbers.append(i)
 }
 
 var factorial = [Int](count: 158, repeatedValue: 0)
 factorial[0] = 1
 
 for value in numbers {
 for var i = factorial.count-1; i >= 0; i-- {
 
 factorial[i] *= value
 for var value = 900; value >= 100; value -= 100 {
 if factorial[i] >= value {
 factorial[i] -= value
 factorial[i+2] += value / 100
 }
 }
 
 for var value = 90; value >= 10; value -= 10 {
 if factorial[i] >= value {
 factorial[i] -= value
 factorial[i+1] += value / 10
 for var j = i+1; j < factorial.count-1; j++ {
 if factorial[j] >= 10 {
 factorial[j] -= 10
 factorial[j+1]++
 }
 }
 }
 }
 }
 }
 
 var sum = 0
 
 for x in factorial {
 sum += x
 }
 print(sum, factorial)
 //648
 }
 
 func twentyfirst() {
 var amicableNumbers = [Int]()
 for number in 2...10000 {
 
 if !amicableNumbers.contains(number) {
 
 var aSumDivisors = 0
 for i in 1..<number {
 if number % i == 0 {
 aSumDivisors += i
 }
 }
 var bSumDivisors = 0
 for i in 1..<aSumDivisors {
 
 if aSumDivisors % i == 0 {
 bSumDivisors += i
 }
 }
 
 if number == bSumDivisors && number != aSumDivisors {
 amicableNumbers.append(number)
 amicableNumbers.append(aSumDivisors)
 }
 }
 }
 
 var sum = 0
 for number in amicableNumbers {
 sum += number
 }
 
 print(sum, amicableNumbers)
 //31626
 }
 
 func getCharactersSum(nick: String) -> Int {
 let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
 var sum = 0
 for value in nick.characters {
 for (i, char) in alphabet.characters.enumerate() {
 if char == value {
 sum += i + 1
 }
 }
 }
 return sum
 }
 
 func twentySecond() {
 
 let location = "/Users/user/Documents/iOS/Tommy/Swift/Project Euler/Project Euler/p022_names.txt"
 var names = [String]()
 
 if let fileContent = try? String(contentsOfFile: location) {
 names = (fileContent.stringByReplacingOccurrencesOfString("\"", withString: "")).componentsSeparatedByString(",").sort(<)
 }
 
 var total = 0
 for (id, nick) in names.enumerate() {
 total += (id + 1) * getCharactersSum(nick)
 }
 
 print(total)
 //871198282
 }
 
 func twentyThird() {
 let limit = 28123
 var abundants = [Int]()
 for number in 3...limit {
 var sumDivisors = 1
 for var divisor = number - 1; divisor > 1; divisor-- {
 
 if number % divisor == 0 {
 sumDivisors += divisor
 }
 }
 if number < sumDivisors {
 abundants.append(number)
 }
 }
 var amountArray = [String: Int]()
 
 for var i = 0; i < abundants.count; i++ {
 for var j = i; j < abundants.count; j++ {
 let amount = abundants[i] + abundants[j]
 if amount <= limit {
 amountArray[amount.description] = amount
 }
 }
 }
 var sum = 0
 for i in 1...limit {
 if amountArray[i.description] == nil {
 sum += i
 }
 }
 print(sum)
 //4179871
 }
 
 func twentyFourth() {
 var numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
 
 var count = 1
 let limit = 1000000
 while count < limit {
 let n = numbers.count
 var i = n - 1
 while numbers[i - 1] >= numbers[i] {
 i--
 }
 var j = n
 while numbers[j - 1] <= numbers[i - 1] {
 j = j - 1
 }
 swap(&numbers[i - 1], &numbers[j - 1])
 
 i++
 j = n
 while i < j {
 swap(&numbers[i - 1], &numbers[j - 1])
 i++
 j--
 }
 count++
 }
 
 var combination = ""
 for value in numbers {
 combination += value.description
 }
 print(combination)
 }
 
 func twentyFifth() {
 let length = 1000
 var temp = [Int](count: length, repeatedValue: 0)
 temp[0] = 1
 var previousFibonacci = [Int](count: length, repeatedValue: 0)
 previousFibonacci[0] = 1
 
 var fibonacci = [Int](count: length, repeatedValue: 0)
 fibonacci[0] = 1
 
 for var k = 3; fibonacci[fibonacci.count-1] == 0; k++ {
 previousFibonacci = temp
 temp = fibonacci
 
 for var i = 0; i < fibonacci.count; i++ {
 fibonacci[i] += previousFibonacci[i]
 if fibonacci[i] >= 10 {
 fibonacci[i] -= 10
 fibonacci[i+1]++
 }
 }
 print(k)
 }
 //
 //    var number = ""
 //    for var i = fibonacci.count-1; i >= 0; i-- {
 //        number+=fibonacci[i].description
 //    }
 //    print(number)
 //4782
 }
 
 func twentySixth() {
 
 var biggestRepeat = 0
 
 for devisor in 2...999 {
 var dividend = 1
 var result = [Int]()
 
 for _ in 1...1000 {  //accuracy
 if dividend == 0 {
 break
 }
 switch devisor {
 case 1...10:
 dividend *= 10
 case 11...100:
 dividend *= 100
 case 101...1000:
 dividend *= 1000
 default:
 break
 }
 
 let res = dividend / devisor
 result.append(res)
 dividend -= res * devisor
 }
 
 var checkArray = [String: Int]()
 for i in 0..<result.count - 1 {
 if result[i] != result[i+1] && checkArray[result[i+1].description] == nil {
 checkArray[result[i].description] = result[i]
 } else {
 break
 }
 }
 if biggestRepeat < checkArray.count {
 biggestRepeat = max(checkArray.count, biggestRepeat)
 print(checkArray.count, devisor)  // last is the largest Reciprocal cycles
 }
 }
 // 981 983
 }
 
 func isPrime(number: Double) -> Bool {
 if number < 2 {
 return false
 }
 for var i = 2.0; i <= sqrt(Double(number)); i++ {
 if number % i == 0 {
 return false
 }
 }
 return true
 }
 
 
 func twentySeventh() {
 
 var maxA = 0.0
 var maxB = 0.0
 var biggestValue = 0
 for var a = -999.0; a < 1000; a++ {
 for var b = -999.0; b < 1000; b++ {
 var counterPrimesNumbers = 0
 for var n = 0.0; n < 10000000; n++ {
 let formula = n * n + a * n + b
 
 if isPrime(formula) {
 counterPrimesNumbers++
 if biggestValue < counterPrimesNumbers {
 biggestValue = max(biggestValue, counterPrimesNumbers)
 maxA = a
 maxB = b
 }
 } else {
 break
 }
 }
 }
 }
 print(biggestValue, maxA, maxB, "=", maxA * maxB)
 // 71 -61.0 971.0 = -59231.0
 }
 
 func twentyEighth() {
 
 var size = 8
 var upLeftValue = 3
 var downLeftValue = 9
 var upRigthValue = 5
 var downRigthValue = 7
 var diagonalsSum = 1 + upLeftValue + downRigthValue + upRigthValue + downLeftValue
 
 for var counter = 3; counter < 1001; counter += 2 {
 
 upLeftValue += size + 2
 size += 8
 downLeftValue += size
 upRigthValue += size - 4
 downRigthValue += size - 2
 diagonalsSum += upLeftValue + downRigthValue + upRigthValue + downLeftValue
 }
 print(diagonalsSum)
 //669171001
 }
 
 func twentyNineth() {
 
 var powNumbers = [String: Double]()
 
 for var a = 2.0; a <= 100; a++ {
 for var b = 2.0; b <= 100; b++ {
 let result = pow(a, b)
 
 if powNumbers[result.description] == nil {
 powNumbers[result.description] = result
 }
 }
 }
 print(powNumbers.count)
 //9183
 }
 
 func thirty() {
 var numbers = [Int]()
 let limit = Int(5.0 * pow(9.0, 5.0))
 for var number = 2; number <= limit; number++ {
 
 var sum = 0.0
 for value in number.description.characters {
 sum += pow(Double(String(value))!, 5)
 }
 
 if sum == Double(number) {
 numbers.append(Int(number))
 }
 }
 print(numbers.reduce(0, combine: +))
 //443839
 }
 
 func thirtyFirst() {
 
 let pounds = [1, 2, 5, 10, 20, 50, 100]
 
 var counter = 1
 var sum = 0
 
 for var g = 0; g <= 2; g++ {
 for var f = 0; f <= 4; f++ {
 for var e = 0; e <= 10; e++ {
 for var d = 0; d <= 20; d++ {
 for var c = 0; c <= 40 ; c++ {
 for var b = 0; b <= 100 ; b++ {
 for var a = 0; a <= 200; a++ {
 sum = pounds[0] * a + pounds[1] * b + pounds[2] * c + pounds[3] * d + pounds[4] * e + pounds[5] * f + pounds[6] * g
 
 if sum > 200 {
 sum = 0
 break
 } else if sum == 200 {
 counter++
 sum = 0
 break
 }
 
 }
 }
 }
 }
 }
 }
 }
 print(counter)
 //73682
 }
 
 func searchOfNumbersInValue(value: Int, inout array: [Character]) {
 
 for char in String(value).characters {
 for number in 1...9 {
 
 if number == Int(String(char)) && !array.contains(char) {
 array.append(char)
 }
 }
 }
 }
 
 func thirtySecond() {
 var numbers = [Int: Bool]()
 
 for i in 1...99 {
 for j in 111...2000 {
 let result = i * j
 if numbers[result] == nil && (result.description.characters.count + i.description.characters.count + j.description.characters.count) == 9 {
 var arrayChars = [Character]()
 
 searchOfNumbersInValue(i, array: &arrayChars)
 searchOfNumbersInValue(j, array: &arrayChars)
 searchOfNumbersInValue(result, array: &arrayChars)
 
 if arrayChars.count == 9 {
 numbers[result] = true
 }
 }
 }
 }
 print([Int](numbers.keys).reduce(0, combine: +))
 //45228
 }
 
 func toReduce(inout numerator: Int, inout denominator: Int) {
 let nod = makeNod(&numerator, d: &denominator)
 if nod != 0 {
 
 numerator /= nod
 denominator /= nod
 }
 }
 
 func makeNod(inout n: Int, inout d: Int) -> Int {
 n = abs(n)
 d = abs(d)
 while d != 0 && n != 0 {
 if n % d > 0 {
 let temp = n
 n = d
 d = temp % d
 } else {
 break
 }
 }
 if d != 0 && n != 0 {
 return d
 } else {
 return 0
 }
 }
 
 func foo() {
 for numerator in 10...98 {
 for denominator in numerator+1...99 {
 
 var numerator = numerator
 var denominator = denominator
 toReduce(&numerator, denominator: &denominator)
 
 }
 }
 }
 
 
 func thirtyThird() {
 var denProduct = 1
 var nomProduct = 1
 
 for i in 1..<10 {
 for den in 1..<i {
 for nom in 1..<den {
 if (nom * 10 + i) * den == nom * (i * 10 + den) {
 denProduct *= den
 nomProduct *= nom
 }
 }
 }
 }
 print(denProduct/nomProduct)
 }
 
 func thirtyFourth() {
 var numbers = [Int]()
 var digitsArray = [1]
 
 for i in 1...9 {
 var total = 1
 for num in 1...i {
 total *= num
 }
 digitsArray.append(total)
 }
 
 for factNumber in 3...362_880 {
 var sum = 0
 for char in factNumber.description.characters {
 sum += digitsArray[Int(String(char))!]
 if sum > factNumber {
 break
 }
 
 }
 if sum == factNumber {
 numbers.append(factNumber)
 }
 }
 print(numbers)
 print(numbers.reduce(0, combine: +))
 //40730
 }
 
 func isPrime(number: Int) -> Bool {
 if number < 2 {
 return false
 }
 for var i = 2; i <= Int(sqrt(Double(number))); i++ {
 if number % i == 0 {
 return false
 }
 }
 return true
 }
 
 func thirtyFifth() {
 var circularNumbersCounter = 0
 for number in 1...999_999 {
 if isPrime(number) {
 var circularNumber = true
 if number > 9 {
 let numberChars = number.description.characters
 var chars = [Character](numberChars)
 for _ in 0..<numberChars.count {
 swap(&chars[0], &chars[numberChars.count-1])
 for i in 0..<numberChars.count-2 {
 swap(&chars[i+1], &chars[i])
 }
 let numb = Int(String(chars))!
 if !isPrime(numb) {
 circularNumber = false
 break
 }
 }
 }
 
 if circularNumber {
 circularNumbersCounter++
 }
 }
 }
 print(circularNumbersCounter)
 //55
 }
 
 func thirtySixth() {
 var sum = 0
 for num in 0...999_999 {
 let numReverse = Int(String([Character]([Character](num.description.characters).reverse())))!
 let binary = String(num, radix: 2)
 let reverseBinary = String(numReverse, radix: 2)
 
 if num == numReverse && binary == reverseBinary {
 print(binary)
 print(reverseBinary)
 sum += num
 }
 }
 print(sum)
 //872187
 }
 
 func isPrime(number: Int) -> Bool {
 if number < 2 {
 return false
 }
 for var i = 2; i <= Int(sqrt(Double(number))); i++ {
 if number % i == 0 {
 return false
 }
 }
 return true
 }
 
 func thirtySeventh() {
 
 var primes = [Int]()
 for var number = 8; primes.count < 11; number++ {
 if isPrime(number) && !number.description.containsString("0") {
 var truncatableNumber = false
 var numFront = number
 var numBack = number
 for _ in 1..<number.description.characters.count {
 numFront = Int(String(numFront.description.characters.dropFirst()))!
 numBack = Int(String(numBack.description.characters.dropLast()))!
 
 if isPrime(numFront) && isPrime(numBack) {
 truncatableNumber = true
 } else {
 truncatableNumber = false
 break
 }
 }
 if truncatableNumber {
 primes.append(number)
 }
 }
 }
 print(primes.reduce(0, combine: +))
 //748317
 }
 
 func searchOfNumbersInValue(value: String, inout array: [Character]) {
 
 for char in value.characters {
 for number in 1...9 {
 if number == Int(String(char)) && !array.contains(char) {
 array.append(char)
 }
 }
 }
 }
 
 func thirtyEigth() {
 var biggestNumbers = 0
 
 for var i = 1; i < 10000; i++ {
 var result = ""
 for var j = 1; result.characters.count <= 9; j++ {
 let number = i * j
 result += number.description
 if result.characters.count == 9 && !result.containsString("0") {
 var arrayChars = [Character]()
 
 searchOfNumbersInValue(result, array: &arrayChars)
 
 if arrayChars.count == 9 && biggestNumbers < Int(result)! {
 biggestNumbers = max(biggestNumbers, Int(result)!)
 }
 }
 }
 }
 print(biggestNumbers)
 //932718654
 }
 
 func thirtyNineth() {
 var arr = [Int](count: 1000, repeatedValue: 0)
 for p in 1...1000 {
 for var a = 1; a < p; a++ {
 let a2 = pow(Double(a), 2)
 let b = (p * p - 2 * p * a) / (2 * p - 2 * a)
 let b2 = pow(Double(b), 2)
 let c2 = a2 + b2
 let c = Int(sqrt(c2))
 if a < c && b < c && a < b && a + b + c == p  {
 arr[p-1]++
 }
 }
 }
 print(arr.indexOf(arr.maxElement()!)!+1)
 }
 
 func fourty() {
 var str = ""
 for  number in 1...200_000 {
 str += number.description
 }
 
 var sum = 1
 for var i = 1; i <= 1_000_000; i*=10 {
 sum *= Int(String(str[str.characters.startIndex.advancedBy(i-1)]))!
 }
 print(sum)
 timer.invalidate()
 print(timer.description)
 }
 
 func isPrime(number: Int) -> Bool {
 for var i = 2; i <= Int(sqrt(Double(number))); i++ {
 if number % i == 0 {
 return false
 }
 }
 return true
 }
 
 func nextCombitanionIn(inout numbers: [Int], count: Int) -> Bool {
 var result: Bool
 
 var k = count-1
 while k > 0 {
 if numbers[k-1]<=numbers[k] {
 break
 }
 k--
 }
 if k != 0 {
 var t = k+1
 while t < count {
 if numbers[t]<=numbers[k-1] {
 break
 }
 t++
 }
 swap(&numbers[t-1], &numbers[k-1])
 t = 0;
 while t<(count-k)/2 {
 swap(&numbers[count-t-1], &numbers[k+t])
 t++
 }
 result = false
 } else {
 result = true
 }
 return result
 }
 
 func fourtyFirst() {
 var numbers = [7,1,2,3,4,5,6]
 while !nextCombitanionIn(&numbers,count: numbers.count) {
 var number = ""
 for value in numbers {
 number += value.description
 }
 let numb = Int(number)!
 
 if isPrime(numb) {
 print(numb)
 }
 }
 }
 
 func fourtySecond() {
 var triangleNumbers = [Double: Bool]()
 
 for n in 1...100 {
 triangleNumbers[Double(n)/2 * (Double(n)+1)] = true
 }
 
 var alphabetValues = [Character: Int]()
 let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
 for (n, char) in alphabet.characters.enumerate() {
 alphabetValues[char] = n + 1
 }
 
 let location = "/Users/user/Documents/iOS/Tommy/Swift/Project Euler/Project Euler/p042_words.txt"
 var words = [String]()
 
 if let fileContent = try? String(contentsOfFile: location) {
 words = (fileContent.uppercaseString.stringByReplacingOccurrencesOfString("\"", withString: "")).componentsSeparatedByString(",")
 }
 
 var triangleWordsCounter = 0
 for word in words {
 var sum = 0
 for letter in word.characters {
 sum += alphabetValues[letter]!
 }
 
 if triangleNumbers[Double(sum)] != nil {
 triangleWordsCounter++
 }
 }
 print(triangleWordsCounter)
 }
 
 func nextCombitanionIn(inout numbers: [Int], count: Int) -> Bool {
 var result: Bool
 
 var k = count-1
 while k > 0 {
 if numbers[k-1]<=numbers[k] {
 break
 }
 k--
 }
 if k != 0 {
 var t = k + 1
 while t < count {
 if numbers[t] <= numbers[k-1] {
 break
 }
 t++
 }
 swap(&numbers[t-1], &numbers[k-1])
 t = 0;
 while t < (count-k)/2 {
 swap(&numbers[count-t-1], &numbers[k+t])
 t++
 }
 result = false
 } else {
 result = true
 }
 return result
 }
 
 func fourtySecond() {
 var numbers = [0,1,2,3,4,5,6,7,8,9]
 var sum = 0
 while !nextCombitanionIn(&numbers,count: numbers.count) {
 var checker = true
 for i in 1...7 {
 var shortNumber = ""
 for value in numbers[i...i+2] {
 shortNumber += value.description
 }
 let numb = Int(shortNumber)!
 var divider = 1
 switch i {
 case 1...2: divider = i + 1
 case 3: divider = 5
 case 4: divider = 7
 case 5: divider = 11
 case 6: divider = 13
 case 7: divider = 17
 default: break
 }
 if numb % divider != 0 {
 checker = false
 }
 }
 if checker {
 var number = ""
 for value in numbers {
 number += value.description
 }
 let numb = Int(number)!
 sum += numb
 }
 }
 print(sum)
 }
 
 func fourtyThird() {
 var pentagonalNumbers = [Int]()
 var pentagonalDict = [Int: Bool]()
 
 for n in 1...5000 {
 let numb = n * (3 * n - 1) / 2
 pentagonalNumbers.append(numb)
 pentagonalDict[numb] = true
 }
 
 var smallest = 100000000
 for i in 0..<3000-1 {
 for j in i+1..<3000 {
 let pair = pentagonalNumbers[i] + pentagonalNumbers[j]
 let difference = pentagonalNumbers[j] - pentagonalNumbers[i]
 
 if pentagonalDict[pair] != nil && pentagonalDict[difference] != nil && difference < smallest {
 smallest = difference
 }
 }
 }
 print(smallest)
 }
 
 func fourtyFourth() {
 let limit = 100000
 
 var triangle = [Int]()
 
 for n in 1...limit {
 let numb = n * (n + 1 ) / 2
 triangle.append(numb)
 }
 
 var pentagonalDict = [Int: Bool]()
 
 for n in 1...limit {
 let numb = n * (3 * n - 1) / 2
 pentagonalDict[numb] = true
 }
 
 var hexagonalDict = [Int: Bool]()
 
 for n in 1...limit {
 let numb = n * (2 * n - 1)
 hexagonalDict[numb] = true
 }
 
 for i in 0..<limit {
 let numb = triangle[i]
 if pentagonalDict[numb] != nil && hexagonalDict[numb] != nil {
 print(numb)
 }
 }
 }
 
 func isPrime(number: Int) -> Bool {
 for var i = 2; i <= Int(sqrt(Double(number))); i++ {
 if number % i == 0 {
 return false
 }
 }
 return true
 }
 
 func fourtySixth() {
 
 for n in 4...10000 {
 
 if !isPrime(n) && n % 2 != 0 {
 var checker = false
 for var previous = n; previous >= 2 && !checker; previous-- {
 if isPrime(previous) {
 for i in 1...100 {
 let num = previous + 2 * (i * i)
 if num == n {
 checker = true
 // print(n)
 break
 }
 }
 }
 }
 if !checker {
 print(n)
 break
 }
 }
 }
 }
 
 func isPrime(number: Int) -> Bool {
 for var i = 2; i <= Int(sqrt(Double(number))); i++ {
 if number % i == 0 {
 return false
 }
 }
 return true
 }
 
 func fourtySeveth() {
 
 var threefactors = [Int: Bool]()
 for var n = 0; ; n++ {
 var factCount = 0
 for var i = 2; i < n; i++ {
 if n % i == 0 && isPrime(i) {
 factCount++
 }
 }
 if factCount == 4 {
 threefactors[n] = true
 let lastN = n - 1
 let lastN2 = n - 2
 let lastN3 = n - 3
 if threefactors[lastN] != nil && threefactors[lastN2] != nil && threefactors[lastN3] != nil {
 print(n)
 print(lastN)
 print(lastN2)
 print(lastN3)
 break
 }
 }
 }
 }
 
 func fourtyEigth() {
 
 var result = 0
 let size = 10_000_000_000
 
 for i in 1...1000 {
 var temp = i
 for var j = 1; j < i; j++ {
 temp *= i
 temp %= size
 }
 result += temp
 result %= size
 }
 print(result)
 }
 
 func comparingWith(var letters: [String], number: Int) -> Bool {
 for letter in number.description.characters {
 for i in 0..<letters.count {
 if String(letter) == letters[i] {
 letters.removeAtIndex(i)
 break
 }
 }
 }
 return letters.isEmpty
 }
 
 func fourtyNineth() {
 for var num = 1000; num <= 4000; num++ {
 if isPrime(num) {
 let letters = num.description.characters.map{String($0)}
 for var adding = 1000; adding <= 4000; adding++ {
 let secondNum = num + adding
 
 if isPrime(secondNum) && comparingWith(letters, number: secondNum) {
 let thirdNum = secondNum + adding
 
 if isPrime(thirdNum) && comparingWith(letters, number: thirdNum) && thirdNum.description.characters.count == 4 {
 print(num, secondNum, thirdNum, adding)
 print(num.description + secondNum.description + thirdNum.description )
 }
 }
 }
 }
 }
 }

 func binarySearch<T:Comparable>(inputArr:Array<T>, searchItem: T)->Int{
 var lowerIndex = 0;
 var upperIndex = inputArr.count - 1
 
 while true {
 let currentIndex = (lowerIndex + upperIndex)/2
 if inputArr[currentIndex] == searchItem {
 return currentIndex
 } else if (lowerIndex > upperIndex) {
 return -1
 } else {
 if inputArr[currentIndex] > searchItem {
 upperIndex = currentIndex - 1
 } else {
 lowerIndex = currentIndex + 1
 }
 }
 }
 }
 
 func fifty() {
 let limit = 1000000
 var primes = [Int]()
 var primeSum = [0]
 
 for p in 2...limit {
 if isPrime(p) {
 primes.append(p)
 }
 }
 
 for i in 0..<primes.count {
 primeSum.append(primes[i] + primeSum[i])
 }
 
 var biggest = (value: Int(), counter: 0)
 
 for var i = biggest.counter; i < primeSum.count; i++ {
 for var j = i-(biggest.counter+1); j >= 0; j-- {
 if primeSum[i] - primeSum[j] > limit {
 break
 }
 
 if binarySearch(primes, searchItem: primeSum[i] - primeSum[j]) >= 0 {
 biggest.counter = i - j
 biggest.value = primeSum[i] - primeSum[j]
 }
 }
 }
 print(biggest)
 }*/

func hasSameDigit(number: Int) -> Bool {
    
    let numberString = number.description
    
    for (index, compareValue) in numberString.characters.enumerate() {
        
        for id in index + 1...numberString.characters.count {
           
            if id == numberString.characters.count {
                
                break
            }

            let indexValue = numberString.characters.startIndex.advancedBy(id)
            
            let value = numberString[indexValue]
            
            if compareValue == value {
                
                return true
            }
            
        }
        
    }

    return false
}

func fiftyFirst() {
    
    let number = 100
    
    var arraySameDigit = [Int]()
    
    for value in number...99999999 {
        
//        if value.description.characters.last != "3" {
//            continue
//        }
        
        if isPrime(value) {
            
            if arraySameDigit.count < 8 {
                
                if hasSameDigit(value) {
                    
                    arraySameDigit.append(value)
                    
                    continue
                    
                } else {
                    
                    arraySameDigit.removeAll()
                }
                
            } else if arraySameDigit.count > 8 {
                
                arraySameDigit.removeAll()
                
            } else if arraySameDigit.count == 8 {
                
                print("\(arraySameDigit)\n")
                
                break
            }
        }
    }
    
}


fiftyFirst()
//fifty()
//fourtyNineth()
//fourtyEigth()
//fourtySeventh()
//fourtySixth()
//fourtyFifth()
//fourtyFourth()
//fourtyThird()
//fourtySecond()
//fourtyFirst()
//fourty()
//thirtyNineth()
//thirtyEigth()
//thirtySeventh()
//thirtySixth()
//thirtyFifth()
//thirtyFourth()
//thirtyThird()
//thirtySecond()
//thirtyFirst()
//thirty()
//twentyNineth()
//twentyEighth()
//twentySeventh()
//twentySixth()
//twentyFifth()
//twentyFourth()
//twentyThird()
//twentySecond()
//twentyfirst()
//twentieth()
//nineteenth()
//eighteenth()
//seventeenth()
//sixteenth()
//fifteenth()
//fourteenth()
//thirteenth()
//twelfth()
//eleventh()
//tenth()
//ninth()
//eighth()
//seventh()
//sixth()
//fifth()
//fourth()
//third()
//second()
//first()