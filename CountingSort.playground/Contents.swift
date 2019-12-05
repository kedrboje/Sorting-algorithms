var draft = [9,8,6,7,5,3,4,2,1,0,14,12,13]

func counting(list: inout [Int]) -> [Int] {
    guard let maxElement = list.max() else {
        return list
    }
    var container = [Int](repeating: 0, count: maxElement+1)
    var outer = [Int](repeating: 0, count: list.count)
    for i in list {
        container[i] += 1
    }
    var j = 0
    for a in 0..<maxElement+1 {
        for _ in 0..<container[a]{
            outer[j] = a
            j += 1
        }
    }
    return outer
}


counting(list: &draft)
