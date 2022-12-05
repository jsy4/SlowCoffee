

### Slow Coffee :coffee:
---
**OS :** Windows  
**Language :** Java, Javascript, CSS, HTML, etc.  
**Framework :** Spring, Mybatis  
**Server :** Apache Tomcat 9.0 with JSP  
**Database :** Oracle   
**(API) :** kakao 주소 & pay, toss pay  

**Citations:** https://github.com/technext/fruitkha original html template

**Benchmarked Sites:** *apple.com*, *colorhunt* for color palette, *Momo's Coffee* for product image and description

Full description of project is in the pdf file(power point)

---
### :arrow_down_small: :: Downloads :: 다운로드 할 것 (30 min) 
#### 1. spring tool 3.9.14
full distribution on Eclipse 4.17, *Windows* version :: link: https://github.com/spring-attic/toolsuite-distribution/wiki/Spring-Tool-Suite-3#spring-tool-suite-3914-new-and-noteworthy

#### 2. oracle database express edition
Oracle Database 11gR2 Express Edition for Windows x64 :: link: https://www.oracle.com/database/technologies/xe-prior-release-downloads.html

#### 3. SQL developer 
Windows 64-bit with JDK 11 included :: link: https://www.oracle.com/database/sqldeveloper/technologies/download/

#### 4. Apache Tomcat
32-bit/64-bit Windows Service Installer :: link: https://tomcat.apache.org/download-90.cgi
    
#### 5. Github
< 3joe.sql>, < sj > :: link: https://github.com/jsy4/SlowCoffee
    
---
### :arrow_forward: :: After Downloads :: 다운로드 후에 할 것 (15 min)

#### 1. SQL

&nbsp;&nbsp;&nbsp;&nbsp;**1.1** command prompt 

    At the command prompt: sqlplus
	Enter user-name: <system> / Enter password: <admin>
	CREATE USER sam IDENTIFIED BY tiger; 
	GRANT connect, resource TO sam;
    
&nbsp;&nbsp;&nbsp;&nbsp;**1.2** Open sql Developer: click folder sqldeveloper > *sqldeveloper.exe* 

&nbsp;&nbsp;&nbsp;&nbsp;**1.3** Make a connection using sam, tiger (green + button on top left)

&nbsp;&nbsp;&nbsp;&nbsp;**1.4** Run the file < 3joe.sql >(github) (individual run is ctrl + enter)


#### 2.Spring

&nbsp;&nbsp;&nbsp;&nbsp;**2.1** Open sts-bundle: click foler sts-3.9.14 > *STS.exe*

&nbsp;&nbsp;&nbsp;&nbsp;**2.1.1** Window > Preferences > type (**enc**) > change all settings to **UTF-8** to see comments in Korean

&nbsp;&nbsp;&nbsp;&nbsp;**2.2** move (sj) folder to workspace folder > new project named sj > automatical import *(sj)*

&nbsp;&nbsp;&nbsp;&nbsp;**2.3** build path: right click (sj) > Build Path > Configure Build Path > Library > add External jars > 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;add sj/src/main/webapp/WEB-INF/lib/**activation.jar**;

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;add sj/src/main/webapp/WEB-INF/lib/**mail.jar**; 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;add sj/src/main/webapp/WEB-INF/lib/**ojdbc6.jar**; 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;add sj/lombok/**lombok.jar**

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;If *lombok does not work(getterSette error)*: create getters and setters for sj/src/main/java/com.javassem.domain VOs  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: right click > Source > Generate Getters and Setters for all VO

&nbsp;&nbsp;&nbsp;&nbsp;**2.4** create Server: click Window > Show View > Other > Servers > right click > New Server >    
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Apache > Tomcat v8.0 > select where Tomcat is installed > Finish

&nbsp;&nbsp;&nbsp;&nbsp;**2.5** open with chrome: Window > browser > Chrome

---
### :o: :: Changes in files :: 파일 안에서 바꿀 것 (5 min)

**1. sj > src > main > webapp > WEB-INF > spring > root-context.xml**
change ip address @192.168.0.77:1521:xe to @(your local ip address):1521/xe

**2. sj > src/main/java > com.javassem.controller > UserController.java**

&nbsp;&nbsp;&nbsp;&nbsp;line 72:: deleteProduct: change PATH to where the images are stored

&nbsp;&nbsp;&nbsp;&nbsp;line 305:: logCustomer: change PATH where fileLog.txt will be created and written

&nbsp;&nbsp;&nbsp;&nbsp;line 311:: logCustomer: change PATH where fileLog.txt will be created and written

&nbsp;&nbsp;&nbsp;&nbsp;line 656:: mail: change sending MAIL address (gmail doesn't work with normal settings)

&nbsp;&nbsp;&nbsp;&nbsp;line 657:: mail: change MAIL password

---

### :curly_loop: :: Insert Records into DB :: 디비에 값 넣기 (1h)
**spring (src) > main > webapp > start.jsp > ( ctrl + alt + F11 ) > run tomcat server >> click '관리자 모드' (manager mode) > goto Goods || Beans > add product**

*Product image at: (src) > main > webapp > resources > assets > img*

*Error could occur saying step <=0 --> in that case, in views/index.jsp, change (step to step +1) or add the products before running index*


---

### :running: :: How to run :: 실행하기
> **spring (src) > main > webapp > start.jsp > ( ctrl + alt + F11 )**
 
 **'관리자 모드'** (manager mode) : add product, modify product, delete product, see total revenue, respond to contact questions, see customer orders and delete according to the contact query, search products
 
 **'방문자용 메인화면'** (customer mode): see products, add products to bag, saved bag contents during logout, change bag contents during checkout, checkout api available in different modes(card, kakao pay, toss), contact with questions, individual mypage to see orders and contact questions, search products
 
---
###  :x: :: Errors :: 에러 발생시
check ::아래 것들 확인하기     
**1. FileName:** Downloaded file will be **SlowCoffee-main.zip** --> unzip to folder named **sj**  
**2. Maven:** right click project (sj) >Maven > Update Project  
**3. Server:** Window > Show view > Other > Servers > Tomcat v9.0 > right click > *Clean*  
**5. Spring:** right click project (sj) > Spring > *Remove Spring Project Nature*;  right click project (sj) > Spring > *add Spring Project Nature*  
**6. DB:** Error could occur saying step <=0 --> in that case, in views/index.jsp, change *(step to step +1)* or add the products before running index  
**7.DB:** Check root-context.xml ip address to be your local ip address  
**8.VO:** if lombok @Data doesn't work create getters and setters for each VO  

---
## Customer View
**방문자용 메인화면**

Index :: 메인 페이지

![customer main page](https://user-images.githubusercontent.com/65105285/205537248-86c14647-f3c4-4e93-b45b-d3c2fe8bced9.png)

Contact page :: 문의 페이지

![customer contact page](https://user-images.githubusercontent.com/65105285/205537266-09daa24c-a2cd-4f1e-bf68-cc5a51480e9b.png)

Buying Products :: 상품 구매

![customer buying products](https://user-images.githubusercontent.com/65105285/205537244-cd674356-fb2d-4dd3-bd26-098e182640ee.png)

Paying page :: 결제 페이지

![customer paying methods](https://user-images.githubusercontent.com/65105285/205537260-025f70ad-1496-4da8-b4d8-96a1858faffe.png)

## Manager View
**관리자 모드**

Manager Index :: 메니저 메인 페이지

![manager main page looking at orders](https://user-images.githubusercontent.com/65105285/205537259-b61e5f2a-9ec1-4c04-949b-f7e58b88be59.png)

Looking At Sales :: 총 매출 보기

![manager looking total sales](https://user-images.githubusercontent.com/65105285/205537243-6fc3b62e-6601-4693-8ee8-bd9ab8a152bc.png)

Looking At products / Adding products :: 상품 재고 보기 / 상품 추가

![looking at product stock and adding products](https://user-images.githubusercontent.com/65105285/205537264-69d0a0ef-6587-4ea4-914d-b57d71492894.png)

Adding products :: 상품 더하기 

![manager adding products](https://user-images.githubusercontent.com/65105285/205537238-96b4ab80-79ac-4379-abf7-04236cc437ca.png)

