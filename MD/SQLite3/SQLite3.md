---
tags: sql3

picture: https://docs.google.com/presentation/d/1nxGU_LttsJqo_g1HEFDTW8pcF7GnBjPUJOtyMpqwFio/edit#slide=id.gadd74da15c_0_123

ppt: https://drive.google.com/file/d/1K28qaBH_rWhNIH987Dhjq8VkJgNmr36O/view?usp=sharing
---

# SQLite3

![](https://i.imgur.com/cjNQnnE.png)

https://www.sqlitetutorial.net/what-is-sqlite/

SQLite具有以下值得注意的功能：

- 無伺服器(Serverless)


    - 通常，RDBMS（例如MySQL，PostgreSQL等）需要單獨的伺服器來處理。
    - 想要訪問資料庫伺服器的應用程序使用TCP / IP協議發送命令。
    - 這稱為客戶端/伺服器體系結構。
    - SQLite不以這種方式工作。
    - SQLite不需要伺服器即可運行。
    - SQLite資料庫與訪問資料庫的應用程序在一起。
    - 應用程序與SQLite資料庫直接從磁碟上的資料庫文件讀取和寫入。


- 獨立自成體系Self-Contained


    - SQLite是獨立的，這意味著它幾乎不需要操作系統或外部庫的支持。
    - 這使得SQLite可以在任何環境中使用，
    - 特別是在iPhone，Android手機，遊戲機，
    - 手持媒體播放器等嵌入式設備中。
    

- 零配置Zero-configuration


    - 由於無伺服器架構，因此在使用SQLite之前無需“安裝”伺服器 。
    - 沒有需要配置，啟動和停止伺服器的程序。
    - 另外，SQLite不需要使用任何配置文件。


- 交易性Transactional
    - SQLite中的所有事務都完全符合ACID。這意味著所有查詢和更改都是
    - 原子的(Atomic)，一致的(Consistent)，隔離的(Isolated)和持久的(Durable)。
    - 換句話說，即使發生電源故障或操作系統、應用程序崩潰之類的意外情況，
    - Transaction中的所有更改都完全發生或根本沒有發生。


- SQLite的獨特功能


    - 表格使用動態類型。這意味著您可以將任何值存儲在任何列中，而與資料類型無關。
    - 允許單個資料庫連接同時存取多個資料庫文件。
    - 例如在不同命令中聯接表格或在資料庫之間複製資料。
    - 提供了一個叫做sqlite3的獨立程式用來查詢和管理SQLite資料庫檔案。

- SQLite管理用戶端


    - Firefox，可以通過添加部分擴充獲得SQLite用戶端，
    - 包括SQLite Manager、SQLite Reader、SQLite Manager（另一個同名的WebExtensions擴充）。
    - SQLite Database Browser，一款連接SQLite資料庫的圖形用戶端。
    - SQLite Expert Personal，Windows上的一款連接SQLite資料庫的免費用戶端。



下圖說明了RDBMS客​​戶端/伺服器體系結構：


RDBMS客​​戶端伺服器體系結構


下圖說明了SQLite無伺服器架構：

>>>>

SQLite 是一個非常可靠的資料庫，它可以處理 TB 級的數據。
SQLite 號稱是部署和使用最廣泛的資料庫引擎。 
SQLite 沒有版權的限制;無論何時，只要開發者想使用 SQL
 在文件中存儲結構化的數據，SQLite 應是首選方案。
程式設計者還提供了一個叫做sqlite3的獨立程式用來查詢和管理SQLite資料庫檔案。
SQLite管理用戶端
Firefox，可以通過添加部分擴充獲得SQLite用戶端，
包括SQLite Manager、SQLite Reader、SQLite Manager
（另一個同名的WebExtensions擴充）。
SQLite Database Browser，一款連接SQLite資料庫的圖形用戶端。
SQLite Expert Personal，Windows上的一款連接SQLite資料庫的免費用戶端。

>>>>
原子性（Atomicity）、一致性（Consistency）、隔離性（Isolation，又稱獨立性）、持久性（Durability），所以應用程式可以在此規範下，對資料庫做正常的操作

>>>>>
https://kknews.cc/zh-tw/code/3al9qv3.html


https://zh.wikipedia.org/wiki/SQLite
SQLite不是一個用戶端/伺服器結構的資料庫引擎，而是被整合在用戶程式中。
它使用動態的、弱類型的SQL語法。
它作為嵌入式資料庫，是應用程式，如網頁瀏覽器，在本地/用戶端儲存資料的常見選擇。
它可能是最廣泛部署的資料庫引擎，因為它正在被一些流行的瀏覽器、作業系統、嵌入式系統所使用。
SQLite不進行型別檢查。你可以把字串插入到整數列中。
某些用戶發現這是使資料庫更加有用的創新，特別是與無類型的手稿語言一起使用的時候；
然而其他用戶認為這是主要的缺點。
它的ALTER TABLE功能有所限制，不能修改或刪除列，只能通過重新建立表的方式迂迴進行。
程式設計者還提供了一個叫做sqlite3的獨立程式用來查詢和管理SQLite資料庫檔案。
SQLite的使用者可以把這個程式當作如何寫SQLite應用程式的範例。
SQLite管理用戶端
Firefox，可以通過添加部分擴充獲得SQLite用戶端，
包括SQLite Manager、SQLite Reader、SQLite Manager
（另一個同名的WebExtensions擴充）。
SQLite Database Browser，一款連接SQLite資料庫的圖形用戶端。
SQLite Expert Personal，Windows上的一款連接SQLite資料庫的免費用戶端。






- 建列改存取清
    - 建立
    - 列表
    - 改資料, 改結構
    - 存取資料
    - 取出資料
    - 清除資料或結構




![](https://i.imgur.com/dKMQDf0.png)



![](https://i.imgur.com/HQQINuC.png)


https://www.sqlitetutorial.net/what-is-sqlite/
SQLite是一個RDBMS(relational database management system,
關聯式資料庫管理系統),
SQLite中的lite意味著在設置，資料庫管理和所需資源方面的輕量級
SQLite 是一個非常可靠的資料庫，它可以處理 TB 級的資料。
SQLite 號稱是部署和使用最廣泛的資料庫引擎。 


SQLite具有以下值得注意的功能：
>>無伺服器(Serverless)，
>>獨立自成體系Self-Contained，
>>零配置Zero-configuration，
>>交易性Transactional。


>>無伺服器(Serverless)
通常，RDBMS（例如MySQL，PostgreSQL等）需要單獨的伺服器來處理。
想要訪問資料庫伺服器的應用程序使用TCP / IP協議發送命令。
這稱為客戶端/伺服器體系結構。
SQLite不以這種方式工作。
SQLite不需要伺服器即可運行。
SQLite資料庫與訪問資料庫的應用程序在一起。
應用程序與SQLite資料庫直接從磁碟上的資料庫文件讀取和寫入。
>>獨立自成體系(Self-Contained)
SQLite是獨立的，這意味著它幾乎不需要操作系統或外部庫的支持。
這使得SQLite可以在任何環境中使用，
特別是在iPhone，Android手機，遊戲機，
手持媒體播放器等嵌入式設備中。
>>零配置(Zero-configuration)
由於無伺服器架構，因此在使用SQLite之前無需“安裝”伺服器 。
沒有需要配置，啟動和停止伺服器的程序。
另外，SQLite不需要使用任何配置文件。
>>交易性(Transactional)
SQLite中的所有事務都完全符合ACID。這意味著所有查詢和更改都是
原子的(Atomic)，一致的(Consistent)，隔離的(Isolated)和持久的(Durable)。
換句話說，即使發生電源故障或操作系統、應用程序崩潰之類的意外情況，
Transaction中的所有更改都完全發生或根本沒有發生。

SQLite的獨特功能
SQLite對表格使用動態類型。這意味著您可以將任何值存儲在任何列中，
而與資料類型無關。

SQLite允許單個資料庫連接同時存取多個資料庫文件。
這帶來了許多不錯的功能，例如在不同命令中聯接表格或在資料庫之間複製資料。

程式設計者還提供了一個叫做sqlite3的獨立程式用來查詢和管理SQLite資料庫檔案。

SQLite管理用戶端
Firefox，可以通過添加部分擴充獲得SQLite用戶端，
包括SQLite Manager、SQLite Reader、SQLite Manager
（另一個同名的WebExtensions擴充）。
SQLite Database Browser，一款連接SQLite資料庫的圖形用戶端。
SQLite Expert Personal，Windows上的一款連接SQLite資料庫的免費用戶端。



下圖說明了RDBMS客​​戶端/伺服器體系結構：


RDBMS客​​戶端/伺服器體系結構


下圖說明了SQLite無伺服器架構：

















| Column 1 | Column 2 | Column 3 |
| -------- | -------- | -------- |
| Text     | Text     | Text     |






> iconv -f big5 -t utf8 "來源檔案" -o "取名新的檔案"

























