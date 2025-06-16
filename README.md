# 📄 Typst Resume Template

A modular and customizable resume template built with [Typst](https://typst.app), enabling you to efficiently manage and generate tailored resumes for various job applications such as Data Scientist, UX Researcher, and more.

## 🧰 Features

- **Modular Sections**: Organize your resume into distinct sections like education, work experience, publications, and skills.
- **Multiple Resume Versions**: Easily create and manage different resume versions for specific job roles.
- **Custom Styling**: Utilize Typst's powerful styling capabilities to personalize the appearance of your resumes.
- **Automated Builds**: Streamline the compilation process using the provided `Justfile`.


## 🚀 Getting Started

### Prerequisites

Install [Typst](https://typst.app/) on your system.

### Installation

1. **Clone the Repository**

```
git clone https://github.com/yourusername/basic-typst-resume-template.git
cd basic-typst-resume-template
```

2. **Compile a resume**

Choose the resume version you want to compile:

```
typst compile main-data-scientist.typ -o output/data-scientist-resume.pdf
```

Replace `main-data-scientist.typ` with the desired main file for other roles.


## 🛠️ Customization

### Creating a New Resume Version

1. **Create a New Configuration File**

Add a new `.typ` file in the `config/` directory, e.g., `config/config-product-manager.typ`, containing role-specific details:

```
#let author = "Your Name"
#let email = "your.email@example.com"
#let phone = "(123) 456-7890"
#let location = "San Diego, CA"
#let accent-color = "#1f77b4"

```

2. **Create a New Work Section**

Add a new work experience file in the `sections/` directory, e.g., `sections/work-product-manager.typ`, highlighting relevant experiences.

3. **Create a New Main File**

Add a new main Typst file at the root, e.g., `main-product-manager.typ`, and include the appropriate sections:

```
#import "macros.typ"
#import "config/config-product-manager.typ"

#resume(
  author: author,
  email: email,
  phone: phone,
  location: location,
  accent-color: accent-color,
)[
  #include "sections/education.typ"
  #include "sections/work-product-manager.typ"
  #include "sections/skills.typ"
  #include "sections/publications.typ"
]

show page-footer: align(center)[set text(size: 9pt, fill: gray) #page-number]

```

4. **Compile the New Resume**

```
typst compile main-product-manager.typ -o output/product-manager-resume.pdf

```

## 📁 Project Structure

```

basic-typst-resume-template/
├── macros.typ
├── typst.toml
├── .typstignore
├── .gitignore
├── LICENSE
├── README.md
├── CHANGELOG.md
├── Justfile
├── example-resume.pdf
├── example-resume.png
├── thumbnail.png
├── sections/
│   ├── education.typ
│   ├── work-data-scientist.typ
│   ├── work-ux-researcher.typ
│   ├── publications.typ
│   ├── presentations.typ
│   └── skills.typ
├── config/
│   ├── config-academic.typ
│   ├── config-industry.typ
│   ├── config-data-scientist.typ
│   └── config-ux-researcher.typ
├── main-academic.typ
├── main-industry.typ
├── main-data-scientist.typ
├── main-ux-researcher.typ
└── output/

```
