// These algorithms not so good due to using extra memory for
// arrays and recursive calls of the functions, but still can be usable

var draft = [9,8,6,7,5,3,4,2,1,0,14,12,13]


func quickSort<T: Comparable>(list: [T]) -> [T] {
    if list.count > 1 {
        
        var less = [T]()
        var equal = [T]()
        var greater = [T]()
        let pivot = list[1]
        
        for element in list {
            if element < pivot {
                less.append(element)
            } else if element == pivot {
                equal.append(element)
            } else {
                greater.append(element)
            }
        }
        
        return quickSort(list: less) + equal + quickSort(list: greater)
        
    } else {
        return list
    }
}

func quickSortSecond<T:Comparable>(list: [T]) -> [T] {
    
    if list.count == 0 {
        return []
    }
    
    let pivot = list[0]
    let sublist = list.count > 1 ? list[1..<list.count] : []
    let smaller = sublist.filter {$0 <= pivot}
    let greater = sublist.filter {$0 > pivot}
    
    return quickSortSecond(list: smaller) + [pivot] + quickSortSecond(list: greater)
}

