# iOSModularExample
简单地使用了BeeHive 和 CTMediator 做iOS组件化示例。

对于BeeHive 使用感受：

     - 每个模块都配一个Module类，负责整个App生命周期的感知、处理系统事件和一些配置信息。
     因此每个Module都是在类方法 load中进行模块注册，要赶在App启动前做好准备。
     这样一来Module的数量太多必然对App启动时间有影响。
     
     因此我觉得BeeHive是针对大模块设计的，毕竟需要对App生命周期感知的模块是不多的吧。
     至于大多数很小的组件，例如自定义按钮、自定义视图、小工具是不太适合BeeHive了。
     
     - BeeHive集合和URL、Protocol、Target-Action，使用方式很灵活。
     看了一下评论区，据说Target-Action 几乎没什么人用，大部分使用的是 Protocol。
     大模块下服务必然不少，Protocol就有很多接口，如果要遵守接口隔离原则需要区分成各个小Protocol。
     这样一来取协议名又是个难题（我觉得编程很难的一部分就是取类名）。
     实现Protocol也要找到职责对应的类，一些服务是需要组合完成的话就会比较蛋疼。
     
     所以我想最后基于这么多麻烦事，最终反映到代码中应该就是一个全能的Protocol，里面各种类型的服务。
     然后在同一个类，一般是ViewController中实现所有的接口。
     

对CTMediator 使用感受：
     
     - CTMediator 采用Target-Action的方式做组件化。
     在服务提供方工程中用Target_Class 组合服务。然后用CTMediator的 Category封装Target_Class 的使用。
     最终调用方只需要依赖CTMediator的分类就可以使用服务。
     为了完全解耦和管理代码，需要编写Target_Class 和CTMediator分类。
     Target_Class 做的事，类比到BeeHive 上就是实现Protocol 接口。
     CTMediator Category 做的事主要是屏蔽调用Target_Class 的复杂度，其次就是屏蔽对具体组件的感知，只管使用服务就好。
     
     我想这里需要权衡的就是工作量和降低维护成本的取舍了。
     
     - 还有一点就是 CTMediator太轻量级了，所以BeeHive的那些系统事件感知完全没有，需要自己处理。
