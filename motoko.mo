import Map "mo:base/HashMap";
import Text "mo:base/Text";

//functional programming lamguage 
// verileri topladıkalrı yer hash mao. node da depoladşığışımız 
actor {
// isimsiz olusmaya izin . bu bir akıllı sözleşme 
  type Name = Text;
  type Phone = Text;

  type Entry = { 
    desc: Text;
    phone: Phone;
    // braces sonuna noktalı virgül!!!
  };
// let: immutable
// var: mutable
//const: ....
//shared fyunc: dosyaları bağlıyor
let phonebook = Map.HashMap<Name, Entry>(0, Text.equal, Text.hash);
//query => sorgular 
//update => geliştirme 
//async () paralelde yapılıyor 

public func insert(name: Name, entry: Entry): async(){
  phonebook.put(name, entry);
}; 
//? string, int... 
public query func lookup(name: Name) : async ?Entry {
  phonebook.get(name);
};
// motoko bir type language old. için her şeyin türünğ yazmammız lazım. 
};


