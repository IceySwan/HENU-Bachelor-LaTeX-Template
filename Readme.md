# HENU bachelor LaTeX template
Henan University Bachelor degree paper latex Template

此为河南大学本科毕业论文 LaTeX 模板, 符合 2023 年数学院最新要求. 

## Download

通过 git 下载

```
git clone https://github.com/Icey-u/HENU-Bachelor-LaTeX-Template.git
```

通过 [GitHub release](https://github.com/Icey-u/HENU-Bachelor-LaTeX-Template/releases) 页面下载. 

## Usage

请使用 XeLaTeX 编译, 参考文献编译方式为 BibTeX. 建议使用分章编译的形式, 将章节放在 `includefile` 文件夹, 图片放在 `figure` 文件夹 . 如非熟练使用 LaTeX, 请勿对 `HENU-Bachelor.cls` 文件做任何改动. 

## Setting

不过数学系竟然让用 Word 写论文, 这种操作是我没想到的. 因为我懒, 为了省事, 所以自己造了个轮子. 本模板改编自 [HedabachelorTemplate]( https://github.com/davidgao666/HedaBachelorTemplate), 但是几乎重写了整个模板, 修改了陈年 BUG, 增加了亿点细节, 具体细节如下

1. 修改页边距, 增加页眉, 修改页码格式
2. 修改超链接选项, 增加 colorlink 模式
3. 去除英文封面, 修改个人信息模块
4. 修改字体, 使其符合 2023 年本科生毕业论文规范
5. 修改定理环境, 使其按章节编号
6. 修改摘要环境
7. 修改目录设置, 设定目录深度, 解决编号问题
8. 增加参考文献宏包, 默认设定为 GB/T 7714 – 2015, 直接使用 BibTeX 编译即可
9. 对 cls 做了大量注释, 降低二次更改难度
10. 去除不必要细节, 减少编译过程中的 Warning

关于具体格式要求, 请参考《本科生论文格式规范要求》

希望能减轻各位排版的压力, 如果喜欢, 请 Star. 

Icey in 2023.02.17
