## DictionaryBuilder

```swift
let launchStatus = Dictionary {
    ["Weather": true]
    ["Range": true]
    
    if hasCrew {
        ["Medic": true]
    }
    
    if #available(macOS 11.0, iOS 14.0, *) {
        ["Latest Software": true]
    }
    
    switch reuseCount {
    case 0:
        ["Unboxed": true]
    default:
        ["Repainted": true]
    }
}
```
