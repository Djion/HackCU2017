

import Foundation
import FirebaseDatabase

struct DogItem {
    
    let likes:Int
    let name:String
    let key: String
    let ref: FIRDatabaseReference?
    let photoURL: String
    
//    init(key:String = "", name: String, likes:Int, ref: FIRDatabaseReference){
//        self.likes = likes
//        self.name = name
//        self.ref = nil
//        self.photoURL = nil
//        self.key = key
//    }
    
    init(snapshot: FIRDataSnapshot) {
        key = snapshot.key
        let snapshotValue = snapshot.value as! [String: AnyObject]
        name = snapshotValue["name"] as! String
        likes = snapshotValue["likes"] as! Int
        photoURL = snapshotValue["photoURL"] as! String
        ref = snapshot.ref
    }
    
    func toAnyObject() -> Any {
        return [
            "name": name,
            "photoURL": photoURL,
            "likes": likes
        ]
    }
}
