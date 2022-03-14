latex-homework-template
=======================

<br/>

A LaTeX template for homework, which is developed based on [GitHub - jdavis/latex-homework-template](https://github.com/jdavis/latex-homework-template).

支持中文输入，可切换中文模板。

<br/>

## 1 Features

Here are just a few features of this homework template.

1. Cover page (includes English version and Chinese version).
2. Problem markers.
3. Configurable problem numbers (see the last 3 problems for an example).
4. Some examples of commonly used commands about basic writing, figures, mathematics, algorithms and codes.
5. Citation and References.

<br/>

## 2 Files

- homework.cls: Latex class file of specific basic settings, including language setting.
- example.tex: An example demo for showing how the template works.
- references.bib: source data of citations and references.
- example.pdf: An example demo for showing how the template works.
- figures: figures which will be used in example.tex
- ReadMe.md and ReadMeImages: this file

**Notice:** 

If you need references, please compile `references.bib` file first before compiling `example.tex` file. Otherwise, remember to comment the codes at the end of `example.tex`.

<br/>

## 3 Configurations

### 3.1 Language

默认为英文模板，如需中文模板，请在 `homework.cls` 文件中取消第6行注释，如下方所示：

```tex
%
% Choose template language
% preserve line 5 or 6 and comment the other
%
% \def\hmwkLanguage{E}  	% English template, but also supports Chinese in document body
\def\hmwkLanguage{C}  		% Chinese template, 取消本行注释，以使用中文模板（首页、页眉等）
```

### 3.2 Page Headers

Use page headers in each page by default. If want to cancel them, please uncomment line 13 in `homework.cls`. For example:

```tex
%
% Use Page Header or not
%
% \def\hmwkPageHeader{1}	% use page header
\def\hmwkPageHeader{0}  	% not use page header
```

### 3.3 Cover Page

Use cover page by default. If you do not want a cover page, please uncomment line 20 in `homework.cls`. For example:

```tex
%
% Use Cover Page or not
%
% \def\hmwkCoverPage{1}   	% use cover page
\def\hmwkCoverPage{0}     	% not use cover page
```

<br/>

## 4 Screenshots

### 4.1 The Cover Page

#### 4.1.1 English Version (by default)

Includes course name, due dates and authors, allowing single or multiple authors.

![Cover page](/ReadMeImages/1.1.jpg)

#### 4.1.2 Chinese Version

默认为英文模板，如需切换为如下所示的中文模板，参见3.1节。

![Chinese Cover page](/ReadMeImages/1.2.jpg)

### 4.2 Without Cover Page

If you do not need a cover page, please follow the configuration presented in Section 3.3.

#### 4.2.1 English Version (by default)

![Without Cover Page](/ReadMeImages/2.1.jpg)

#### 4.2.2 Chinese Version 

默认为英文模板，如需切换为如下所示的中文模板，参见3.1节。

![Without Cover Page (Chinese Version)](/ReadMeImages/2.2.jpg)

### 4.3 Homework Problems

Support automatically increasing problem counter and different types of problems. For example, solution, proof and multiple sub-problems.

![Example problems 1](/ReadMeImages/3.jpg)

### 4.4 Basic Writing

It also allows to set specific problem id. Provided examples for citations, figures, item listing and tables.

![Example problems 2](/ReadMeImages/4.jpg)

### 4.5 Mathematics Problems

Provided examples for writing equations and formulas.

![Example problems 3](/ReadMeImages/5.jpg)

### 4.6 Algorithm Related Problems

Provided examples for algorithms, graph drawing and codes.

![Example problems 4](/ReadMeImages/6.jpg)



## 5 Installing

1. First you will need LaTeX. Instructions on obtaining it can be found here: http://latex-project.org/ftp.html
2. Compiling from the command line will look like the following (Run `xelatex example.tex` for 3 times to ensure bibliography is correct):

   ```bash
   xelatex example.tex
   bibtex example
   xelatex example.tex
   xelatex example.tex
   ```
3. Or you can use [TeXShop][texshop] or a similar native client to typeset the LaTeX file.

<br/>

## 6 License

This code is distributed under the MIT license. For more info, read the [LICENSE](/LICENSE) file distributed with the source code.

[texshop]: http://pages.uoregon.edu/koch/texshop/
[credit]: http://www.latextemplates.com/template/programming-coding-assignment
