<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks® Personal Use Edition, 7.10 of July 10, 2013 on February 12, 2014 at 3:02:36 PM</time-stamp>


<component-created>
<name>CS474</name> <type>package</type>
</component-created><!-- Package CS474* -->


<component-property>
<name>CS474</name> <type>package</type>
<property>notice</property> <value>'None.'</value>
</component-property>

<component-property>
<name>CS474</name> <type>package</type>
<property>comment</property> <value>'Package for CS 474 Homework
'</value>
</component-property>

<class>
<name>BSTNode</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>left right value </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>CS474</package>
</attributes>
</class>

<class>
<name>BST</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>root </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>CS474</package>
</attributes>
</class>

<comment>
<class-id>BST</class-id>
<body>Encapsulates a binary search tree.
</comment>

<class>
<name>UserInterface</name>
<environment>Smalltalk</environment>
<super>UI.ApplicationModel</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>s1 s2 input </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>CS474</package>
</attributes>
</class>

<methods>
<class-id>BSTNode class</class-id> <category>instance creation</category>

<body package="CS474" selector="new">new
</methods>


<methods>
<class-id>BSTNode</class-id> <category>comparing</category>

<body package="CS474" selector="=">= t1 

<body package="CS474" selector="~=">~= t1 

<body package="CS474" selector="&lt;">&lt; t1 

<body package="CS474" selector="&lt;=">&lt;= t1 

<body package="CS474" selector="&gt;=">&gt;= t1 

<body package="CS474" selector="&gt;">&gt; t1 
</methods>

<methods>
<class-id>BSTNode</class-id> <category>accessing</category>

<body package="CS474" selector="max">max

<body package="CS474" selector="contains:">contains: t1 

<body package="CS474" selector="right:">right: t1 

<body package="CS474" selector="min">min

<body package="CS474" selector="left:">left: t1 

<body package="CS474" selector="hasChildren">hasChildren

<body package="CS474" selector="right">right

<body package="CS474" selector="value">value

<body package="CS474" selector="value:">value: t1 

<body package="CS474" selector="left">left
</methods>

<methods>
<class-id>BSTNode</class-id> <category>copying</category>

<body package="CS474" selector="copy">copy
</methods>

<methods>
<class-id>BSTNode</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize
</methods>

<methods>
<class-id>BSTNode</class-id> <category>updating</category>

<body package="CS474" selector="remove:">remove: t1 

<body package="CS474" selector="do:">do: aBlock

<body package="CS474" selector="add:">add: t1 
</methods>

<methods>
<class-id>BSTNode</class-id> <category>printing</category>

<body package="CS474" selector="printString">printString
</methods>


<methods>
<class-id>BST class</class-id> <category>instance creation</category>

<body package="CS474" selector="new">new
</methods>


<methods>
<class-id>BST</class-id> <category>updating</category>

<body package="CS474" selector="copy:">copy: anotherBST

<body package="CS474" selector="remove:">remove: anObject

<body package="CS474" selector="add:">add: anObject

<body package="CS474" selector="swap:">swap: anotherBST

<body package="CS474" selector="clear">clear
</methods>

<methods>
<class-id>BST</class-id> <category>set-operations</category>

<body package="CS474" selector="intersection:">intersection: anotherBST

<body package="CS474" selector="map:">map: aBlock

<body package="CS474" selector="union:">union: anotherBST
</methods>

<methods>
<class-id>BST</class-id> <category>printing</category>

<body package="CS474" selector="printString">printString
</methods>

<methods>
<class-id>BST</class-id> <category>accessing</category>

<body package="CS474" selector="root">root

<body package="CS474" selector="root:">root: anObject
</methods>

<methods>
<class-id>BST</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize
</methods>


<methods>
<class-id>UserInterface class</class-id> <category>interface specs</category>

<body package="CS474" selector="windowSpec">windowSpec
</methods>


<methods>
<class-id>UserInterface</class-id> <category>actions</category>

<body package="CS474" selector="union">union

<body package="CS474" selector="intersection">intersection

<body package="CS474" selector="add">add

<body package="CS474" selector="remove">remove

<body package="CS474" selector="clear">clear

<body package="CS474" selector="transform">transform

<body package="CS474" selector="display">display

<body package="CS474" selector="save">save

<body package="CS474" selector="switch">switch
</methods>

<methods>
<class-id>UserInterface</class-id> <category>aspects</category>

<body package="CS474" selector="s1">s1

<body package="CS474" selector="input">input

<body package="CS474" selector="s2">s2
</methods>



</st-source>