/* 
Copyright (c) 2019 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class Result_base {
	public var contacts : Array<Contacts>?

/**
    Returns an array of models based on given dictionary.
    
    Sample usage:
    let json4Swift_Base_list = Json4Swift_Base.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

    - parameter array:  NSArray from JSON dictionary.

    - returns: Array of Json4Swift_Base Instances.
*/
    public class func modelsFromDictionaryArray(array:NSArray) -> [Result_base]
    {
        var models:[Result_base] = []
        for item in array
        {
            models.append(Result_base(dictionary: item as! NSDictionary)!)
        }
        return models
    }

/**
    Constructs the object based on the given dictionary.
    
    Sample usage:
    let json4Swift_Base = Json4Swift_Base(someDictionaryFromJSON)

    - parameter dictionary:  NSDictionary from JSON.

    - returns: Json4Swift_Base Instance.
*/
	required public init?(dictionary: NSDictionary) {

        if (dictionary["contacts"] != nil) { contacts = Contacts.modelsFromDictionaryArray(array: dictionary["contacts"] as! NSArray) }
	}

		
/**
    Returns the dictionary representation for the current instance.
    
    - returns: NSDictionary.
*/
	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()


		return dictionary
	}

}
public class Contacts {
    public var id : String?
    public var name : String?
    public var email : String?
    public var address : String?
    public var gender : String?
    public var phone : Phone?
    
    /**
     Returns an array of models based on given dictionary.
     
     Sample usage:
     let contacts_list = Contacts.modelsFromDictionaryArray(someDictionaryArrayFromJSON)
     
     - parameter array:  NSArray from JSON dictionary.
     
     - returns: Array of Contacts Instances.
     */
    public class func modelsFromDictionaryArray(array:NSArray) -> [Contacts]
    {
        var models:[Contacts] = []
        for item in array
        {
            models.append(Contacts(dictionary: item as! NSDictionary)!)
        }
        return models
    }
    
    /**
     Constructs the object based on the given dictionary.
     
     Sample usage:
     let contacts = Contacts(someDictionaryFromJSON)
     
     - parameter dictionary:  NSDictionary from JSON.
     
     - returns: Contacts Instance.
     */
    required public init?(dictionary: NSDictionary) {
        
        id = dictionary["id"] as? String
        name = dictionary["name"] as? String
        email = dictionary["email"] as? String
        address = dictionary["address"] as? String
        gender = dictionary["gender"] as? String
        if (dictionary["phone"] != nil) { phone = Phone(dictionary: dictionary["phone"] as! NSDictionary) }
    }
    
    
    /**
     Returns the dictionary representation for the current instance.
     
     - returns: NSDictionary.
     */
    public func dictionaryRepresentation() -> NSDictionary {
        
        let dictionary = NSMutableDictionary()
        
        dictionary.setValue(self.id, forKey: "id")
        dictionary.setValue(self.name, forKey: "name")
        dictionary.setValue(self.email, forKey: "email")
        dictionary.setValue(self.address, forKey: "address")
        dictionary.setValue(self.gender, forKey: "gender")
        dictionary.setValue(self.phone?.dictionaryRepresentation(), forKey: "phone")
        
        return dictionary
    }
    
}
public class Phone {
    public var mobile : String?
    public var home : String?
    public var office : String?
    
    /**
     Returns an array of models based on given dictionary.
     
     Sample usage:
     let phone_list = Phone.modelsFromDictionaryArray(someDictionaryArrayFromJSON)
     
     - parameter array:  NSArray from JSON dictionary.
     
     - returns: Array of Phone Instances.
     */
    public class func modelsFromDictionaryArray(array:NSArray) -> [Phone]
    {
        var models:[Phone] = []
        for item in array
        {
            models.append(Phone(dictionary: item as! NSDictionary)!)
        }
        return models
    }
    
    /**
     Constructs the object based on the given dictionary.
     
     Sample usage:
     let phone = Phone(someDictionaryFromJSON)
     
     - parameter dictionary:  NSDictionary from JSON.
     
     - returns: Phone Instance.
     */
    required public init?(dictionary: NSDictionary) {
        
        mobile = dictionary["mobile"] as? String
        home = dictionary["home"] as? String
        office = dictionary["office"] as? String
    }
    
    
    /**
     Returns the dictionary representation for the current instance.
     
     - returns: NSDictionary.
     */
    public func dictionaryRepresentation() -> NSDictionary {
        
        let dictionary = NSMutableDictionary()
        
        dictionary.setValue(self.mobile, forKey: "mobile")
        dictionary.setValue(self.home, forKey: "home")
        dictionary.setValue(self.office, forKey: "office")
        
        return dictionary
    }
    
}

