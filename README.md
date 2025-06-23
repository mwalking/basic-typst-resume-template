# 📄  Resume Template
A modular and customizable resume template built with [Typst](https://typst.app), enabling you to efficiently manage and generate tailored resumes for various job applications such as [Your Target Role 1], [Your Target Role 2], and more.

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
```bash
git clone https://github.com/[YOUR-USERNAME]/basic-typst-resume-template.git
cd basic-typst-resume-template
```

2. **Compile a resume**
Choose the resume version you want to compile:
```bash
typst compile main-data-scientist.typ -o output/data-scientist-resume.pdf
```
Replace `main-data-scientist.typ` with the desired main file for other roles.

## 🎯 My Resume Versions
- **[Role 1]**: [Description of when you use this version]
- **[Role 2]**: [Description of when you use this version]
- **[Role 3]**: [Description of when you use this version]
- **[Role 4]**: [Description of when you use this version]

## 🛠️ Customization
### Creating a New Resume Version
1. **Create a New Configuration File**
Add a new `.typ` file in the `config/` directory, e.g., `config/config-product-manager.typ`, containing role-specific details:
```typst
#let author = "Your Actual Name"
#let email = "your.actual.email@example.com"
#let phone = "your-actual-phone"
#let location = "Your City, State"
#let accent-color = "#1f77b4"
```

2. **Create a New Work Section**
Add a new work experience file in the `sections/` directory, e.g., `sections/work-product-manager.typ`, highlighting relevant experiences.

3. **Create a New Main File**
Add a new main Typst file at the root, e.g., `main-product-manager.typ`, and include the appropriate sections:
```typst
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
```bash
typst compile main-product-manager.typ -o output/product-manager-resume.pdf
```

## 🔨 Quick Build Commands
```bash
# Build all resumes
just build-all

# Build specific versions
just build-[role-name]

# Clean output directory
just clean
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
│   ├── work-[role1].typ
│   ├── work-[role2].typ
│   ├── publications.typ           
│   ├── presentations.typ         
│   └── skills.typ
├── config/
│   ├── config-[role1].typ
│   ├── config-[role2].typ
│   ├── config-[role3].typ
│   └── config-[role4].typ
├── main-[role1].typ
├── main-[role2].typ
├── main-[role3].typ
├── main-[role4].typ
└── output/
```

## 🤝 Contributing
This is a personal resume template forked and customized from [mwalking/basic-typst-resume-template](https://github.com/mwalking/basic-typst-resume-template).

