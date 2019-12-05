var draft = [9,8,6,7,5,3,4,2,1,0,14,12,13]

func selection<T: Comparable>(list: inout [T]) -> [T] {
    for i in 0..<list.count - 1 {
        var forMinVal = i
        var j = i + 1
        while j < list.count {
            if list[j] < list[forMinVal] {
                forMinVal = j
            }
            j += 1
        }
        let tmp = list[i]
        list[i] = list[forMinVal]
        list[forMinVal] = tmp
    }
    return list
}

print(selection(list: &draft))

