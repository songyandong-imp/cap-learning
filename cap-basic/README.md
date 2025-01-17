# Getting Started

Welcome to your new project.

It contains these folders and files, following our recommended project layout:

File or Folder | Purpose
---------|----------
`app/` | content for UI frontends goes here
`db/` | your domain models and data go here
`srv/` | your service models and code go here
`package.json` | project metadata and configuration
`readme.md` | this getting started guide


## Next Steps

- Open a new terminal and run `cds watch`
- (in VS Code simply choose _**Terminal** > Run Task > cds watch_)
- Start adding content, for example, a [db/schema.cds](db/schema.cds).


## Learn More

Learn more at https://cap.cloud.sap/docs/get-started/.

## SAP CAP：使用测试数据轻松生成 .csv 文件
生成域模型 （CDS） 的 .csn 文件，CDS 模型符合核心架构表示法 （CSN），该表示法将 CDS 模型表示为 JavaScript 对象，
首先，使用终端从 CDS 模型生成 .csn 文件。然后，使用 VS-Code 扩展名 “CAP CDS CSV Generator” ，该扩展名采用此 .csn 文件生成包含测试数据的 .csv 文件。或者，您也可以使用命令 mta build 或 cds build 创建 csn 文件。


The following command is executed in the project root folder
cds compile db/schema.cds --to csn --dest db/schema.csn

## 生成csv-files 具有 VS Code 扩展名
接下来，执行以下步骤，根据 schema.cds 定义的域模型生成包含测试数据的 .csv 文件。
调用 VS Code 的命令面板（Ctrl + Shift + P 或 F1）并键入“生成 csv 文件”。
输入 schema.cds 的命名空间（例如：com.sap.learning.db），然后选择 .csn 文件（例如 db/schema.csn）。
选择一个文件夹来保存带有测试数据的 .csv 文件（例如 db/data/）。


