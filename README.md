# Zensical Template

[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://choosealicense.com/licenses/mit)
[![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/bybatkhuu/docs-zensical-template/4.publish-docs.yml?logo=GitHub)](https://github.com/bybatkhuu/docs-zensical-template/actions/workflows/4.publish-docs.yml)
[![GitHub release (latest SemVer)](https://img.shields.io/github/v/release/bybatkhuu/docs-zensical-template?logo=GitHub&color=blue)](https://github.com/bybatkhuu/docs-zensical-template/releases)

This is a template repository for documentation, wiki and knowledge base using **Zensical**.

## ✨ Features

- Zensical
- Wiki/Knowledge base
- Technical blog
- Documentation
- Markdown support
- Static site generator

---

## 🛠 Installation

### 1. 🚧 Prerequisites

- Install **Python (>= v3.10)** and **pip (>= 23)**:
    - **[RECOMMENDED] [Miniconda (v3)](https://www.anaconda.com/docs/getting-started/miniconda/install)**
    - *[arm64/aarch64] [Miniforge (v3)](https://github.com/conda-forge/miniforge)*
    - *[Python virtual environment] [venv](https://docs.python.org/3/library/venv.html)*

[OPTIONAL] For **DEVELOPMENT** environment:

- Install [**git**](https://git-scm.com/downloads)
- Setup an [**SSH key**](https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh)

### 2. 📥 Download or clone the repository

**2.1.** Prepare projects directory (if not exists):

```sh
# Create projects directory:
mkdir -pv ~/workspaces/projects

# Enter into projects directory:
cd ~/workspaces/projects
```

**2.2.** Follow one of the below options **[A]**, **[B]** or **[C]**:

**OPTION A.** Clone the repository:

```sh
git clone https://github.com/bybatkhuu/docs-zensical-template.git && \
    cd docs-zensical-template
```

**OPTION B.** Clone the repository (for **DEVELOPMENT**: git + ssh key):

```sh
git clone git@github.com:bybatkhuu/docs-zensical-template.git && \
    cd docs-zensical-template
```

**OPTION C.** Download source code:

1. Download archived **zip** file from [**releases**](https://github.com/bybatkhuu/docs-zensical-template/releases).
2. Extract it into the projects directory.

### 3. 📦 Install dependencies

```sh
# Install dependencies:
pip install -r ./requirements.txt

# Or for DEVELOPMENT (with extra dependencies):
pip install -r ./requirements/requirements.dev.txt
# Install pre-commit hooks:
pre-commit install
```

### 4. 🏁 Run the documentation server locally (for DEVELOPMENT)

```sh
zensical serve -a 0.0.0.0:8000
# Or:
./scripts/docs.sh
```

### 5. 🌐 Check the documentation in web browser

- <http://localhost:8000>

### 6. 🏗️ Generate the HTML documentation files (static site)

```sh
zensical build
# Or:
./scripts/build.sh

# Check the generated HTML files (it should be in the `site` directory):
ls -al ./site
```

### 7. 🚀 Deploy the documentation

```sh
# Copy the generated HTML files to the web server:
cp -r ./site/* /var/www/docs.example.com/public
# Or use rsync:
rsync -av --delete ./site/ /var/www/docs.example.com/public/
```

👍

---

## 📑 References

- <https://zensical.org>
- <https://zensical.org/docs/get-started>
- <https://github.com/zensical/zensical>
- <https://pypi.org/project/zensical>
