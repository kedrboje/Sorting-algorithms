var draft = [9,8,6,7,5,3,4,2,1,0,14,12,13]

func merge<T: Comparable>(list1: [T], list2: [T]) -> [T] {
    if list1.count == 0 {
        return list2
    } else if list2.count == 0 {
        return list1
    } else if list1[0] < list2[0] {
        return [list1[0]] + merge(list1: Array(list1[1..<list1.count]), list2: list2)
    } else {
        return [list2[0]] + merge(list1: list1, list2: Array(list2[1..<list2.count]))
    }
}

func mergeSort<T: Comparable>(list: [T]) -> [T] {
    if list.count < 2 {
        return list
    } else {
        let half = Int(list.count / 2)
        return merge(list1: mergeSort(list: Array(list[0..<half])), list2: mergeSort(list: Array(list[half..<list.count])))
    }
}

mergeSort(list: draft)
