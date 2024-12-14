import SwiftUI

struct ContentView: View {
    private var people: [Person] = Person.allPeople
    
    var body: some View {
        NavigationView {
            List {
                ForEach(people, id: \.firstName) { person in
                    NavigationLink(destination: DetailView(person: person)) {
                        Text("\(person.firstName) \(person.surname)")
                            .padding()
                    }
                }
            }
            .navigationBarTitle("People List")
        }
    }
}

struct DetailView: View {
    let person: Person
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("Name: \(person.firstName) \(person.surname)")
                    .font(.title)
                
                Text("Gender: \(person.gender)")
                Text("Age: \(person.age)")
                
                Text("Address:")
                    .font(.headline)
                Text("\(person.address.streetAddress)")
                Text("\(person.address.city), \(person.address.state) \(person.address.postalCode)")
                
                Text("Phone Numbers:")
                    .font(.headline)
                ForEach(person.phoneNumbers, id: \.number) { phone in
                    Text("\(phone.type): \(phone.number)")
                }
                
            }
            .padding()
        }
        .navigationBarTitle("Details", displayMode: .inline)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}