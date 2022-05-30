import Foundation

struct K {

    struct FStore {
        static let collectionName = "messages"
        static let senderField = "sender"
        static let bodyField = "body"
        static let dateField = "date"
    }

    struct BrandColors {
        static let themeColorRed = "themeColorRed"
        static let themeColorLight = "themeColorLight"
        
    }

    static let cellIdentifier = "ReusableCell"
    static let cellNibName = "MessageCell"
}
