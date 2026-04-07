# gxu-undergraduate-thesis-latex-template

（都2026年了，gxu竟然没有一个本科生毕业论文的latex模板！
哎，这下轮到我要毕业了，索性自己写一个吧，顺便分享出来给后续的学弟学妹们用。）

一个面向广西大学本科毕业设计（论文）写作的 LaTeX 模板，按照2026年计科专业老师发的word模板和官网2024年[《本科生毕业设计（论文）基本规范要求》](https://jwc.gxu.edu.cn/info/1418/3006.htm)整理

## 特点

- 基于 XeLaTeX，适配中文论文写作
- 按规范设置 A4 页面、页边距、正文字号和 20 磅行距
- 内置封面、中文摘要、英文摘要、目录、正文、参考文献、附录、致谢
- 图、表、公式按章编号
- 使用 `biblatex + biber + gb7714-2015` 管理参考文献
- 自带 Windows 与 Overleaf 友好的字体回退方案
- 默认提供一份完整可编译示例，便于二次修改

## 快速开始

### 本地编译

推荐命令：

```bash
latexmk main.tex
```

如果你希望手动编译：

```bash
xelatex main.tex
biber main
xelatex main.tex
xelatex main.tex
```

Windows 下也可以直接运行：

```bat
build.bat
```

### Overleaf 编译

1. 将整个仓库上传到 Overleaf 项目根目录。
2. 在 Overleaf 菜单中将编译器设置为 `XeLaTeX`。
3. 保持主文件为 `main.tex`。
4. Overleaf 会自动调用 `latexmk` 与 `biber`。

## 项目结构

```text
gxu-undergraduate-thesis-latex-template/
├── main.tex
├── gxuthesis.sty
├── .latexmkrc
├── build.bat
├── README.md
├── chapters/
│   ├── abstract_cn.tex
│   ├── abstract_en.tex
│   ├── chapter1.tex
│   ├── chapter2.tex
│   ├── chapter3.tex
│   ├── chapter4.tex
│   ├── chapter5.tex
│   ├── appendix.tex
│   └── acknowledgement.tex
├── references/
│   └── references.bib
├── word-templates/
│   ├── cover-page-template.docx
│   ├── ending-page-template.docx
│   └── README.md
└── figures/
    ├── ending_page.jpg
    └── gxu_logo_hd.png
```

## 需要修改的地方

打开 `main.tex`，首先修改以下元信息：

```latex
\thesisTitle{你的论文题目}
\thesisTitleEn{Your Thesis Title}
\authorName{你的姓名}
\studentId{你的学号}
\collegeName{你的学院}
\majorName{你的专业}
\className{你的班级}
\supervisorName{导师姓名}
\defenseDate{二○二六 年 四 月 七 日}
\thesisType{毕业设计（论文）}
\logoPath{figures/gxu_logo_hd.png}
\lastPageImage{figures/ending_page.jpg}
```

然后按需编辑这些文件：

- 中文摘要：`chapters/abstract_cn.tex`
- 英文摘要：`chapters/abstract_en.tex`
- 正文各章：`chapters/chapter1.tex` 到 `chapters/chapter5.tex`
- 参考文献：`references/references.bib`
- 附录：`chapters/appendix.tex`
- 致谢：`chapters/acknowledgement.tex`

## 参考文献写法

正文中推荐使用上标引用：

```latex
深度学习模型已经在图像识别任务中取得显著进展。\supercite{krizhevsky2012imagenet}
```

在 `references/references.bib` 中添加条目即可，例如：

```bibtex
@article{example,
  author  = {作者},
  title   = {题目},
  journal = {期刊名},
  year    = {2026},
  volume  = {1},
  number  = {1},
  pages   = {1--10}
}
```

## 与学校规范的对应关系

- 封面：使用学校统一格式，支持替换校徽图片
- 中文摘要：模板中已预留摘要与关键词位置
- 英文摘要：模板中已预留英文题目、`ABSTRACT` 与 `Keywords`
- 目录：默认列到二级标题，前置页码为罗马数字
- 正文：默认采用“第一章 + 1.1 + 1.1.1”这一常见结构
- 图表公式：按章编号，标题位置符合常规规范
- 参考文献：按引用顺序生成
- 附录与致谢：已内置

## 空白页说明

本模板默认采用双面排版，并使用 `openright` 规则让主要部分尽量从奇数页开始。因此在某些位置会自动补出空白页，这通常是正常现象，不是模板错误。

常见情况包括：

- 第 2 页空白：封面后为了让摘要从右页开始而自动补页
- 参考文献后或附录前出现空白页，例如第 12 页空白：为了让附录、致谢等部分从右页开始而自动补页

如果你最终提交版本不希望出现这些空白页，可以自行将 `main.tex` 中的 `openright` 改为 `openany`，或将相关的 `\cleardoublepage` 调整为 `\clearpage`。

## 封面与校徽

当前仓库默认使用：

- 封面校徽：`figures/gxu_logo_hd.png`
- 结尾页图片：`figures/ending_page.jpg`
- Word 版页面模板：`word-templates/`


如果你对 LaTeX 版封面或结尾页排版仍不满意，可以参考 `word-templates/` 中的 Word 页面模板，自行填写后导出为 PDF，再与论文正文 PDF 拼接。


## License

本项目采用 `CC BY-NC 4.0` 许可。

- 允许在非商业场景下使用、修改和再分发
- 基于本模板修改、再发布或分发时，必须明确说明来源，并标明是否做过修改
- 不允许将本模板或其衍生版本用于商业用途

详见 `LICENSE` 或：
https://creativecommons.org/licenses/by-nc/4.0/

