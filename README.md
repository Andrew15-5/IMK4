# IMK4 - place where all important files are stored

Here you can find lab and hw files, as well as books, lectures and more.

## Repository acronyms and abbreviations

### General

- ex - exercise
- hw - homework
- IMK - Informatics and Management Kaluga
- lab - laboratory work
- misc - miscellaneous

### 3rd semester

- dm - Discrete Mathematics
- foe - Fundamentals of Electronics
- hlp - High-level Programming
- mdpl - Machine-dependent Programming Languages

### 4th semester

- calg - Computational Algorithms
- carch - Computer Architecture
- cg - Computer Graphics
- latoa - Logic and Theory of Algorithms
- oop - Object-Oriented Programming
- tasod - Types and Structures of Data

### 5th semester

- db - Databases
- es - Expert Systems
- os - Operating Systems
- ppl - Perspective/Promising Programming Languages
- pt - Probability Theory
- rw - Research Work

### 6th semester

- cpsd - Cross-Platform Software Development
- j - Jurisprudence
- ls - Life Safety
- msd - Mobile Software Development
- mlm - Machine Learning Methods

### 7th semester

- cn - Computer Networks
- ipm - Information Processing Methods
- is - Information Security

## Repository structure

```text
IMK4
├── semester<number>
│   ├── [books]
│   │   ├── part<number>.zip
│   │   ...
│   ├── <subject>
│   │   ├── [exam]
│   │   │   ├── (problem|question)s
│   │   │   │   ├── <subject>_exam_(problem|question)s.pdf
│   │   │   │   ...
│   │   ├── [(lab|hw|ex|test)s]
│   │   │   ├── [guidelines]
│   │   │   │   ├── <subject>_(lab|hw|ex|test)_guidelines.pdf
│   │   │   │   ...
│   │   │   ├── (lab|hw|ex|test)<number>
│   │   │   │   ├── <subject>_(lab|hw|ex|test)<number>.pdf
│   │   │   │   ├── [<subject>_(lab|hw|ex|test)<number>_guidelines.pdf]
│   │   │   │   ├── <subject>_(lab|hw|ex|test)<number>_deadline
│   │   │   │   ...
│   │   │   ...
│   │   ├── [lectures]
│   │   │   ├── lecture<number>[-<number>]
│   │   │   │   ├── <subject>_lecture<number>[-<number>].pdf
│   │   │   │   ...
│   │   │   ...
│   │   └── [misc]
│   │       ├── <anything>
│   │       ...
│   ...
...
```

### Designations

- name --- literal, required
- [name] --- literal, optional (can be absent)
- \<name> --- non-literal, optional (the actual name is different, can be absent)
- (name1|name2) --- literal, one of (the actual name is either "name1" or "name2")

> Any `(lab|hw|ex|test|lecture)`'s `<number>` satisfies this Regular Expression
> format: `\d+[.\d+]`.

### Deadline file

Starting from the 4th semester each `(lab|hw|ex|test)` has corresponding file
with deadline date and time. Deadline files are named using the folowing format:

```text
<subject>_(lab|hw|ex|test)<number>_deadline
```

and contains one formated line folowing LF character (`\n`):

```text
<Month> <day of month> hh:mm
```

For example, the file `modeling_lab1.1_deadline` has the following text inside:

```text
February 18 13:35
```

A more demonstrative example would be:

```text
November 9 00:00
```

But there's an exception: if deadline for lab/hw wasn't provided, then the
deadline file will be empty.

> As of 2022-02-22 not every
> `./<subject>/(lab|hw|ex|test)s/(lab|hw|ex|test)<number>/`
> directory has a `<subject>_(lab|hw|ex|test)<number>_deadline` file (WIP).
> Exception is the 6th semester.

## Notes

Books are archived (in parts) because their names contain cyrillic
characters and these files are poorly displayed in git. Also big files
(i.e. books archived by whole semester instead of parts) are harder to maintain.
You can find same unarchived books in [Links](#links) section.

Every `.(doc[x]|.pp(t|s)x)` file has a .pdf copy (both files are located
in the same directory).\
.pdf files are generated using libreoffice:

```sh
libreoffice --convert-to pdf file.doc
```

## Links

MEGA link to [this repository](https://github.com/Andrew15-5/IMK4)'s folder
for your convenience:\
<https://mega.nz/folder/SIAiQYJY#6igJU4HHEe3ssltaCWMpWg>

MEGA links to books (unarchived):

- [Semester 1](https://mega.nz/folder/TQxyUIqS#_xU7mo_k8_v1CONH0DX2EA)
- [Semester 2](https://mega.nz/folder/fABghKzZ#IV_bfdzB42dbAPNow27a9Q)
- [Semester 3](https://mega.nz/folder/vI5SmB4J#lc0kxkz4ZdPQVB_WC-eG8Q)
- [Semester 4](https://mega.nz/folder/nBwllQYK#Fq3yOhnM5tbhIldpNuYh-A)

## License

[<img
alt="Creative Commons License"
style="border-width:0"
src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png"
/>](http://creativecommons.org/licenses/by-nc-sa/4.0/)

This work is licensed under a
[Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International
License](http://creativecommons.org/licenses/by-nc-sa/4.0/).
