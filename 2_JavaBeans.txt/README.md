一、什么是javabean

  1、Javabeans就是符合某种特定规范Java类。使用Javabeans的好处是【解决代码的重复编写】，减少代码冗余，功能区分明确，提高代码的维护性。
  
  2、设计原则四点：公有类，属性私有，包含无参的共有构造方法，getter和setter方法封装属性

二、javabean - JSP动作元素

（1）JSP动作元素为请求处理阶段提供信息。

（2）动作元素遵循XML元素的语法。有一个包含元素名的开始标签，可以有属性、可选内容，以及结束标签。

 JSP动作分为以下几类：
    （1）与存取JavaBean有关的6个元素。 如：
    <jsp:useBean> <jsp:setProperty> <jsp:getProperty>
    
    （2）6个动作元素。 如：
    <jsp:include> <jsp:forward> <jsp:param> <jsp:plugin> <jsp:params> <jsp:fallback>
    
    （3）与Document有关的6个元素：
    <jsp:root> <jsp:declaration> <jsp:scriptlet> <jsp:expression> <jsp:text> <jsp:output>
    
    （4）用来动态生成XML元素标签的3个动作：
    <jsp:attribute> <jsp:body> <jsp:element>
    
    （5）用在Tag File中的2个元素：
    <jsp:invoke> <jsp:dobody>
    
    
三、javabean的作用域范围

通过<jsp:useBean>标签的scope属性进行设置

JavaBean的生命周期存在于4种范围之中，分别为page、request、session、application，它们通过<jsp:useBean>标签的scope属性进行设置。这4种范围虽然存在很大的区别，但它们与JSP页面中的page、request、session、application范围相对应。

    1、page范围：与当前页面相对应，JavaBean的生命周期存在于一个页面之中，当页面关闭时JavaBean被销毁。可以通过pageContext.getAttribute("标识符(类
    似于Java中的变量名)" )方法取得JavaBean对象


    2、request范围：与JSP的request生命周期相对应，JavaBean的生命周期存在于request对象之中，当request对象销毁时JavaBean也被销毁。可以通过
    HttpRequest.getAttribute("标识符(类似于Java中的变量名)" )方法取得JavaBean对象


    3、session范围：与JSP的session生命周期相对应，JavaBean的生命周期存在于session会话之中，当session超时或会话结束时JavaBean被销毁。可以通过HttpSession.getAtrribute("标识符(类似于Java中的变量名)" )方法取得JavaBean对象

    4、application范围：与JSP的application生命周期相对应，在各个用户与服务器之间共享，只有当服务器关闭时JavaBean才被销毁。可以通过
    application.getAtrribute("标识符(类似于Java中的变量名)" )方法来取得JavaBean对象



这4种作用范围与JavaBean的生命周期是息息相关的，当JavaBean被创建后，通过<jsp:setProperty>标签与<jsp:getProperty>标签调用时，将会按照page、
request、session和application的顺序来查找这个JavaBean实例，直至找到一个实例对象为止，如果在这4个范围内都找不到JavaBean实例，则抛出异常。


注：
当数据只需要在下一个forward（转发）有用时，用request就够了；
若数据不只是在下一个forward（转发）有用时，例如重定向，就用session。
上下文，环境信息之类的，用application。
