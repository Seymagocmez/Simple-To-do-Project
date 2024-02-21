# Motoko Phonebook

Motoko Phonebook is a simple phonebook application implemented in Motoko, a functional programming language designed for building reliable and scalable Internet Computer applications.

## Overview

This application uses a hash map to store phonebook entries, allowing users to insert and lookup phone numbers associated with names. It is designed as an actor, enabling the creation of smart contracts in a decentralized environment.

## Features

- **Insert Entry:** Add a new phonebook entry with a name and description.
- **Lookup Entry:** Retrieve a phonebook entry by providing the associated name.

## Getting Started

### Prerequisites

- Ensure you have the Motoko compiler (`moc`) version 0.10.4 or later installed.

### Installation

1. Clone the repository:

   ```bash
   git clone [repository_url]
   cd motoko-phonebook
   ```

2. Compile the Motoko source code:

   ```bash
   moc Main.mo -o phonebook.wasm
   ```

### Usage

1. Import the necessary modules in your Motoko project:

   ```motoko
   import Map "mo:base/HashMap";
   import Text "mo:base/Text";
   ```

2. Define the actor for the phonebook:

   ```motoko
   actor {
       // ... (code for the phonebook actor)
   };
   ```

3. Create a hash map for storing phonebook entries:

   ```motoko
   let phonebook = Map.HashMap<Name, Entry>(0, Text.equal, Text.hash);
   ```

4. Use the provided functions for inserting and looking up entries:

   ```motoko
   // Insert a new entry
   public func insert(name: Name, entry: Entry): async(){
       phonebook.put(name, entry);
   };

   // Lookup an entry by name
   public query func lookup(name: Name) : async ?Entry {
       phonebook.get(name);
   };
   ```

5. Compile and deploy your Motoko project.

## Contributing

Contributions are welcome! If you have ideas for improvements or new features, feel free to submit a pull request.


