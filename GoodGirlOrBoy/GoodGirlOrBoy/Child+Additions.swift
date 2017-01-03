
import Foundation

extension Child {
    
    public override func awakeFromInsert() {
        super.awakeFromInsert()
        date = NSDate()
    }
    
    public override func prepareForDeletion() {
        super.prepareForDeletion()
        print("Deleting object: \(self)")
    }
    
    var localizedDescription: String {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        let string = formatter.string(from: date! as Date)
        return "☕️ \(string)"
    }
}
