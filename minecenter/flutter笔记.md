# flutter笔记

## 框架总览

### 介绍

- Flutter Widget采用现代响应式框架构建，这是从 [React](http://facebook.github.io/react/) 中获得的灵感，中心思想是用widget构建你的UI
- 当widget的状态发生变化时，widget会重新构建UI，Flutter会对比前后变化的不同， 以确定底层渲染树从一个状态转换到下一个状态所需的最小更改（译者语：类似于React/Vue中虚拟DOM的diff算法）

### 基础 Widget

- [`Text`](https://docs.flutter.io/flutter/widgets/Text-class.html)：该 widget 可让创建一个带格式的文本。
- [`Row`](https://docs.flutter.io/flutter/widgets/Row-class.html)、 [`Column`](https://docs.flutter.io/flutter/widgets/Column-class.html)： 这些具有弹性空间的布局类Widget可让您在水平（Row）和垂直（Column）方向上创建灵活的布局。其设计是基于web开发中的Flexbox布局模型。
- [`Stack`](https://docs.flutter.io/flutter/widgets/Stack-class.html)： 取代线性布局 (译者语：和Android中的LinearLayout相似)，[`Stack`](https://docs.flutter.io/flutter/widgets/Stack-class.html)允许子 widget 堆叠， 你可以使用 [`Positioned`](https://docs.flutter.io/flutter/widgets/Positioned-class.html) 来定位他们相对于`Stack`的上下左右四条边的位置。Stacks是基于Web开发中的绝度定位（absolute positioning )布局模型设计的。
- [`Container`](https://docs.flutter.io/flutter/widgets/Container-class.html)： [`Container`](https://docs.flutter.io/flutter/widgets/Container-class.html) 可让您创建矩形视觉元素。container 可以装饰为一个[`BoxDecoration`](https://docs.flutter.io/flutter/painting/BoxDecoration-class.html), 如 background、一个边框、或者一个阴影。 [`Container`](https://docs.flutter.io/flutter/widgets/Container-class.html) 也可以具有边距（margins）、填充(padding)和应用于其大小的约束(constraints)。另外， [`Container`](https://docs.flutter.io/flutter/widgets/Container-class.html)可以使用矩阵在三维空间中对其进行变换

### 使用 Material 组件

- Material应用程序以[`MaterialApp`](https://docs.flutter.io/flutter/material/MaterialApp-class.html) widget开始， 该widget在应用程序的根部创建了一些有用的widget，其中包括一个[`Navigator`](https://docs.flutter.io/flutter/widgets/Navigator-class.html)， 它管理由字符串标识的Widget栈（即页面路由栈）

### 处理手势

- 许多widget都会使用一个[`GestureDetector`](https://docs.flutter.io/flutter/widgets/GestureDetector-class.html)为其他widget提供可选的回调。 例如，[`IconButton`](https://docs.flutter.io/flutter/material/IconButton-class.html)、 [`RaisedButton`](https://docs.flutter.io/flutter/material/RaisedButton-class.html)、 和[`FloatingActionButton`](https://docs.flutter.io/flutter/material/FloatingActionButton-class.html) ，它们都有一个[`onPressed`](https://docs.flutter.io/flutter/material/RaisedButton-class.html#onPressed)回调，它会在用户点击该widget时被触发。

### 根据用户输入改变widget

- StatefulWidgets是特殊的widget，它知道如何生成State对象，然后用它来保持状态。 
- 为什么StatefulWidget和State是单独的对象。在Flutter中，这两种类型的对象具有不同的生命周期： Widget是临时对象，用于构建当前状态下的应用程序，而State对象在多次调用[`build()`](https://docs.flutter.io/flutter/widgets/State/build.html)之间保持不变，允许它们记住信息(状态)。
- 事件流是“向上”传递的，而状态流是“向下”传递的

### 响应widget生命周期事件

- 在StatefulWidget调用`createState`之后，框架将新的状态对象插入树中，然后调用状态对象的[`initState`](https://docs.flutter.io/flutter/widgets/State-class.html#initState)。 子类化State可以重写[`initState`](https://docs.flutter.io/flutter/widgets/State-class.html#initState)，以完成仅需要执行一次的工作。 例如，您可以重写`initState`以配置动画或订阅platform services。`initState`的实现中需要调用`super.initState`。

  当一个状态对象不再需要时，框架调用状态对象的[`dispose`](https://docs.flutter.io/flutter/widgets/State-class.html#dispose)。 您可以覆盖该[`dispose`](https://docs.flutter.io/flutter/widgets/State-class.html#dispose)方法来执行清理工作。例如，您可以覆盖[`dispose`](https://docs.flutter.io/flutter/widgets/State-class.html#dispose)取消定时器或取消订阅platform services。 `dispose`典型的实现是直接调用[`super.dispose`](https://docs.flutter.io/flutter/widgets/State-class.html#dispose)。

## 目录

### 基础 Widgets

