# IMK4 - place where all important files are stored

Here you can find lab and hw files, as well as books, lectures and more.

## Repository acronyms and abbreviations

### General

* ex - exercise
* hw - homework
* IMK - Informatics and Management Kaluga
* lab - laboratory work
* misc - miscellaneous

### 3rd semester

* dm - Discrete Mathematics
* foe - Fundamentals of Electronics
* hlp - High-level Programming
* mdpl - Machine-dependent Programming Languages

### 4th semester

* calg - Computational Algorithms
* cg - Computer Graphics
* latoa - Logic and Theory of Algorithms
* tasod - Types and Structures of Data

## Repository structure

```text
IMK4
├── semester
│   ├── books
│   │   ├── part<number>.zip
│   │   ├── book.*
│   │   ...
│   ├── subject
│   │   ├── exam
│   │   │   ├── problems
│   │   │   │   ├── subject_exam_problems.pdf
│   │   │   │   ...
│   │   │   └── questions
│   │   │       ├── subject_exam_questions.pdf
│   │   │       ...
│   │   ├── labs (hws/lectures)
│   │   │   ├── guidelines
│   │   │   │   ├── subject_lab_guidelines.pdf
│   │   │   │   ...
│   │   │   ├── lab<number>
│   │   │   │   ├── subject_lab<number>.pdf
│   │   │   │   ├── subject_lab<number>_deadline (hw)
│   │   │   │   ...
│   │   │   ...
│   │   └── misc
│   │       ├── anything
│   │       ...
...
```

Exception: `lecture<start number>-<end number>` (some lectures can be united)

### Deadline file

Starting from 4th semester each lab/hw has corresponding file with
deadline date and time.\
Deadline files are named using folowing format:

```text
<subject abbreviation>_<lab/hw><ordinal number>_deadline
```

and contains one formated line folowing LF character:

```text
<Month> <day of month> hh:mm
```

Example would be file `cg_lab1_deadline` with text in it:

```text
February 27 23:59
```

But there's an exception: if deadline for lab/hw wasn't provided, then the
deadline file will be empty.

## Notes

Books are archived (in parts) because their names contain cyrillic
characters and these files are poorly displayed in git. Also big files
(i.e. books archived by whole semester instead of parts) are harder to maintain.
You can find same unarchived books in <a href="#links">Links</a> section.

Every .doc(x)/.pp(t|s)x file has a .pdf copy (both files are located
in the same directory).\
.pdf files are generated using libreoffice:

```shell
libreoffice --convert-to pdf file.doc
```

## Links

Yandex.Disk link to [this repository](https://github.com/Andrew15-5/IMK4)'s folder
for your convenience: <https://yadi.sk/d/-cBfNyfBSh_lOA>

Yandex.Disk links to books (unarchived):

* [Semester 1](https://yadi.sk/d/8GMdxPS0u2FZkA)
* [Semester 2](https://yadi.sk/d/eyVk60MeJabWvQ)
* [Semester 3](https://yadi.sk/d/np_Smxo_xZjSyg)
* [Semester 4](https://yadi.sk/d/8ExS3demIAFEIQ)
