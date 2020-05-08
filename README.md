A README should include all installation instructions as well as directions on using the application. For instance, it should tell the app user how to:

cd into the root directory and bundle the project;
run tests;
run any script files in the root directory.

# _Anagrams_

#### _An application that will check whether two inputted words are anagrams or antigrams of each other._

#### By _**Daniel Merys**_

## Description

_This repository has the logic files for the Anagrams application, which will compare two words and determine if they are anagrams or antigrams of each other._

## Setup/Installation Requirements

1. Clone this repository to your machine
2. Install packages Ruby Gem
`run $ bundle install`


## Known Bugs

No bugs currently known, but please let me know if you find one so I can correct it.
 
## Support and contact details

_Have a bug or an issue with this application? [Open a new issue](https://github.com/dkmerys/project-template/issues) here on GitHub._

## Technologies Used


Git and GitHub
Ruby
Ruby Gems

### Specs
| Spec                                                                         | Input             | Output             |
|------------------------------------------------------------------------------|-------------------|--------------------|
| Accepts 2 user inputs and converts them to lowercase                         | "HELLO", "hello"  | "hello", "hello"   |
| Returns 'false' if either input contains no vowels                           | "bcd", "fgh"      | false              |
| Return 'true' if both user inputs contain vowels                             | "bcde", "aeiou"   | true               |
| Replaces special characters in a word with an asterix                        | "Hello!" "World!" | "hello*", "world*" |
| Returns 'true' if user inputs contain no special characters                  | "Hello", "World"  | true               |
| Returns 'false' if either user input contains special characters             | "Hello!", "World" | false              |
| Returns 'true' if both user inputs contain the same array of letters         | "Elvis", "Lives"  | true               |
| Returns 'false' if both user inputs do not contain the same array of letters | "Elvis", "Hawaii" | false              |
| Returns 'false if both user inputs share no letters                          | "hi", "bye"       | false              |
| Returns 'true" if both user inputs share any letters                         | "hi", "hello"     | true               |



### License

This software is licensed under the MIT license.

Copyright (c) 2020 **_Daniel Merys_**