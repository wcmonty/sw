<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks® Personal Use Edition, 7.10 of July 10, 2013 on February 23, 2014 at 2:25:14 PM</time-stamp>


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

<comment>
<class-id>BSTNode</class-id>
<body>A BSTNode encapsulates a node of a binary search tree.Instance Variables	left	&lt;BSTNode&gt;	the left node	right	&lt;BSTNode&gt;	the right node	value	&lt;BSTNode | CharacterArray | CharacterBlock | Magnitude | SpDate&gt;	the stored value</body>
</comment>

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
<body>Encapsulates a binary search tree.Instance Variables	root	&lt;MessageForwarder | Object | ProtoObject | ProtoObject&gt;	The binary search tree data structure</body>
</comment>

<class>
<name>UserInterface</name>
<environment>Smalltalk</environment>
<super>UI.ApplicationModel</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>leftView rightView input s1 s2 </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>CS474</package>
</attributes>
</class>

<comment>
<class-id>UserInterface</class-id>
<body>The UserInterface is the interface that the user interacts with.Instance Variables	input	&lt;ValueModel&gt;	an input field	leftView	&lt;ValueModel&gt;	a display for set 1	rightView	&lt;ValueModel&gt;	a  display for set 2	s1	&lt;BST&gt;	the first set	s2	&lt;BST&gt;	the second set</body>
</comment>

<methods>
<class-id>BSTNode class</class-id> <category>instance creation</category>

<body package="CS474" selector="new">new	"Instantiator"	^super new initialize</body>

<body package="CS474" selector="new:">new: anObject	"Instantiator with value"	^super new initialize value: anObject</body>
</methods>


<methods>
<class-id>BSTNode</class-id> <category>comparing</category>

<body package="CS474" selector="=">= anotherBSTNode	"returns true if the value of this node equal to the value of another node"	^anotherBSTNode class = self class		ifTrue: [self value = anotherBSTNode value]		ifFalse: [false]</body>

<body package="CS474" selector="~=">~= anotherBSTNode	"returns true if the value of this node is not equal to the value of another node"	^anotherBSTNode class = self class		ifTrue: [self value ~= anotherBSTNode value]		ifFalse: [false]</body>

<body package="CS474" selector="&lt;">&lt; anotherBSTNode	"returns true if the value of this node is less than the value of another node"	^anotherBSTNode class = self class		ifTrue: [self value &lt; anotherBSTNode value]		ifFalse: [false]</body>

<body package="CS474" selector="&lt;=">&lt;= anotherBSTNode	"returns true if the value of this node is less than or equal to the value of another node"	^anotherBSTNode class = self class		ifTrue: [self value &lt;= anotherBSTNode value]		ifFalse: [false]</body>

<body package="CS474" selector="&gt;=">&gt;= anotherBSTNode	"returns true if the value of this node is greater than or equal to the value of another node"	^anotherBSTNode class = self class		ifTrue: [self value &gt;= anotherBSTNode value]		ifFalse: [false]</body>

<body package="CS474" selector="&gt;">&gt; anotherBSTNode	"returns true if the value of this node is greater than the value of another node"	^anotherBSTNode class = self class		ifTrue: [self value &gt; anotherBSTNode value]		ifFalse: [false]</body>
</methods>

<methods>
<class-id>BSTNode</class-id> <category>accessing</category>

<body package="CS474" selector="max">max	"returns the maximum value in the tree"	^right isNil ifTrue: [value] ifFalse: [right max]</body>

<body package="CS474" selector="contains:">contains: anObject	"returns true if the node or any children nodes contain an object"	| contains |	contains := false.	value = anObject		ifTrue: [contains := true]		ifFalse: 			[(value &lt; anObject and: [left notNil])				ifTrue: [contains := left contains: anObject].			(value &gt; anObject and: [right notNil])				ifTrue: [contains := right contains: anObject]].	^contains</body>

<body package="CS474" selector="right:">right: anObject	"setter for the right"	right := anObject.	^self</body>

<body package="CS474" selector="min">min	"returns the minimum value in the tree"	^left isNil ifTrue: [value] ifFalse: [left min]</body>

<body package="CS474" selector="left:">left: anObject	"setter for left"	left := anObject.	^self</body>

<body package="CS474" selector="hasChildren">hasChildren	"returns true if the node has children"	^left notNil or: [right notNil]</body>

<body package="CS474" selector="right">right	"getter for the right"	^right</body>

<body package="CS474" selector="value">value	"getter for value"	^value</body>

<body package="CS474" selector="value:">value: anObject	"setter for value"	value := anObject.	^self</body>

<body package="CS474" selector="left">left	"getter for the left"	^left</body>
</methods>

<methods>
<class-id>BSTNode</class-id> <category>copying</category>

<body package="CS474" selector="postCopy">postCopy	"overrides postCopy to implement a deep copy"	left notNil ifTrue: [left := left copy].	right notNil ifTrue: [right := right copy].	^self</body>
</methods>

<methods>
<class-id>BSTNode</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize	"initializes the object"	super initialize.	left := nil.	right := nil.	value := nil.	^self</body>
</methods>

<methods>
<class-id>BSTNode</class-id> <category>updating</category>

<body package="CS474" selector="remove:">remove: anObject	"removes an object from a tree, if it exists"	| temp |	temp := self.	value = anObject		ifTrue: 			[left isNil				ifTrue: [temp := right]				ifFalse: 					[value := left max.					left := left remove: value]]		ifFalse: 			[anObject &lt; value				ifTrue: [left notNil ifTrue: [left := left remove: anObject]]				ifFalse: [right notNil ifTrue: [right := right remove: anObject]]].	^temp</body>

<body package="CS474" selector="do:">do: aBlock	"performs an in order traversal and maps the block across values"	left notNil ifTrue: [left do: aBlock].	aBlock value: self value.	right notNil ifTrue: [right do: aBlock].	^self</body>

<body package="CS474" selector="add:">add: anObject	"recursively adds an object to the tree"	| temp |	temp := nil.	anObject = value		ifFalse: 			[anObject &lt; value				ifTrue: 					[left isNil						ifTrue: 							[temp := BSTNode new: anObject.							left := temp]						ifFalse: [left add: anObject]]				ifFalse: 					[right isNil						ifTrue: 							[temp := BSTNode new: anObject.							right := temp]						ifFalse: [right add: anObject]]].	^temp</body>
</methods>

<methods>
<class-id>BSTNode</class-id> <category>converting</category>

<body package="CS474" selector="asString">asString	"returns a string representation of a tree"	| aString |	aString := value printString.	left notNil ifTrue: [aString := left asString , ' ' , aString].	right notNil ifTrue: [aString := aString , ' ' , right asString].	^aString</body>
</methods>


<methods>
<class-id>BST class</class-id> <category>instance creation</category>

<body package="CS474" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>BST</class-id> <category>accessing</category>

<body package="CS474" selector="root">root	"getter for the root"	^root</body>

<body package="CS474" selector="root:">root: anObject	"setter for the root"	root := anObject</body>
</methods>

<methods>
<class-id>BST</class-id> <category>copying</category>

<body package="CS474" selector="postCopy">postCopy	"overrides postCopy to provide for a deep copy"	root notNil ifTrue: [root := root copy].	^self</body>
</methods>

<methods>
<class-id>BST</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	root := nil.	^self</body>
</methods>

<methods>
<class-id>BST</class-id> <category>set-operations</category>

<body package="CS474" selector="map:">map: aBlock	"maps a block onto a new BST and returns the new BST"	| newBST |	root isNil		ifFalse: 			[newBST := BST new.			root do: [:x | newBST add: (aBlock value: x)].			root := newBST].	^self</body>

<body package="CS474" selector="intersection:">intersection: anotherBST	"performs the intersection with another BST"	| temp |	temp := self copy.	anotherBST do: [:value | temp remove: value].	temp do: [:value | self remove: value].	^self</body>

<body package="CS474" selector="union:">union: anotherBST	"performs a union with another BST"	anotherBST notNil		ifTrue: 			[anotherBST root isNil				ifFalse: [anotherBST root do: [:value | self add: value]]].	^self</body>
</methods>

<methods>
<class-id>BST</class-id> <category>updating</category>

<body package="CS474" selector="add:">add: anObject	"adds an object to a BST"	root isNil		ifTrue: [root := BSTNode new: anObject]		ifFalse: [root add: anObject].	^self</body>

<body package="CS474" selector="clear">clear	"clears a BST"	root := nil.	^self</body>

<body package="CS474" selector="remove:">remove: anObject	"removes an object from a BST"	root notNil ifTrue: [root := root remove: anObject].	^self</body>

<body package="CS474" selector="copy">copy	"performs a copy and returns a new BST, assuming the BSTNode performs a deep copy"	^BST new root: root copy</body>

<body package="CS474" selector="swap:">swap: anotherBST	"swaps two BST's with each other"	| temp |	temp := root.	root := anotherBST root.	anotherBST root: temp.	^self</body>

<body package="CS474" selector="do:">do: aBlock	"executes a block on each element of the BST"	root notNil ifTrue: [root do: aBlock].	^self</body>
</methods>

<methods>
<class-id>BST</class-id> <category>converting</category>

<body package="CS474" selector="asString">asString	"converts the BST to a string"	^root notNil ifTrue: ['{' , root asString , '}'] ifFalse: ['']</body>
</methods>


<methods>
<class-id>UserInterface class</class-id> <category>interface specs</category>

<body package="CS474" selector="windowSpec">windowSpec	"Tools.UIPainter new openOnClass: self andSelector: #windowSpec"	&lt;resource: #canvas&gt;	^#(#{UI.FullSpec} 		#window: 		#(#{UI.WindowSpec} 			#label: 'Smalltalk Set Operations' 			#min: #(#{Core.Point} 685 400 ) 			#max: #(#{Core.Point} 685 400 ) 			#bounds: #(#{Graphics.Rectangle} 694 343 1379 743 ) 			#colors: 			#(#{UI.LookPreferences} 				#setForegroundColor: #(#{Graphics.ColorValue} #black ) 				#setBackgroundColor: #(#{Graphics.ColorValue} 5119 6655 8191 ) 				#setSelectionForegroundColor: #(#{Graphics.ColorValue} #black ) 				#setSelectionBackgroundColor: #(#{Graphics.ColorValue} #lightGray ) 				#setBorderColor: #(#{Graphics.ColorValue} #lightGray ) ) ) 		#component: 		#(#{UI.SpecCollection} 			#collection: #(				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 17 6 ) 					#name: #Label1 					#flags: 8 					#label: 'Set 1' ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 413 6 ) 					#name: #Label2 					#flags: 8 					#label: 'Set 2' ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 287 74 385 93 ) 					#name: #ActionButton1 					#model: #save 					#label: 'Save -&gt;' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 102 351 182 371 ) 					#name: #ActionButton3 					#model: #remove 					#label: 'Remove' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 12 351 92 370 ) 					#name: #ActionButton4 					#model: #add 					#label: 'Add' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 110 266.5 167 286.5 ) 					#name: #ActionButton5 					#model: #clear 					#label: 'Clear' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 287 100.0 385 122.5 ) 					#name: #ActionButton6 					#model: #switch 					#label: '&lt;- Switch -&gt;' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 191 351 271 370 ) 					#name: #ActionButton7 					#model: #transform 					#label: 'Transform' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 287 160.5 385 180.5 ) 					#name: #ActionButton8 					#model: #union 					#label: '&lt;- Union' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 287 129.5 385 153.5 ) 					#name: #ActionButton9 					#model: #intersection 					#label: '&lt;- Intersection' 					#defaultable: true ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 9 318 274 344 ) 					#name: #InputField1 					#colors: 					#(#{UI.LookPreferences} 						#setForegroundColor: #(#{Graphics.ColorValue} #black ) 						#setBackgroundColor: #(#{Graphics.ColorValue} #white ) ) 					#model: #input 					#type: #string ) 				#(#{UI.DocumentViewSpec} 					#layout: #(#{Graphics.Rectangle} 9 28 274 257 ) 					#name: #DocumentView1 					#isOpaque: true 					#colors: 					#(#{UI.LookPreferences} 						#setForegroundColor: #(#{Graphics.ColorValue} #white ) 						#setBackgroundColor: #(#{Graphics.ColorValue} #white ) ) 					#model: #leftView 					#isWrapped: true 					#isReadOnly: true 					#showHiddenCharacters: false 					#showLineStriping: false 					#autoAccept: false 					#showInputCursor: false 					#showSelection: true ) 				#(#{UI.DocumentViewSpec} 					#layout: #(#{Graphics.Rectangle} 411 28 676 263 ) 					#name: #DocumentView2 					#isOpaque: true 					#colors: 					#(#{UI.LookPreferences} 						#setForegroundColor: #(#{Graphics.ColorValue} #white ) 						#setBackgroundColor: #(#{Graphics.ColorValue} #white ) ) 					#model: #rightView 					#isWrapped: true 					#isReadOnly: true 					#showHiddenCharacters: false 					#showLineStriping: false 					#autoAccept: false 					#showInputCursor: false 					#showSelection: true ) ) ) )</body>
</methods>


<methods>
<class-id>UserInterface</class-id> <category>aspects</category>

<body package="CS474" selector="rightView">rightView	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^rightView isNil		ifTrue:			[rightView := ((Text2.Document new: 0)) asValue]		ifFalse:			[rightView]</body>

<body package="CS474" selector="input">input	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^input isNil		ifTrue:			[input := String new asValue]		ifFalse:			[input]</body>

<body package="CS474" selector="leftView">leftView	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^leftView isNil		ifTrue:			[leftView := ((Text2.Document new: 0)) asValue]		ifFalse:			[leftView]</body>
</methods>

<methods>
<class-id>UserInterface</class-id> <category>actions</category>

<body package="CS474" selector="union">union	"Adds all elements of set 2 to set 1, performing a union on the sets."	s1 notNil ifTrue: [s1 := s1 union: s2].	self display.	^self</body>

<body package="CS474" selector="intersection">intersection	"Performs an intersection of set 1 and set 2 and puts the result in set 1"	s1 notNil ifTrue: [s1 := s1 intersection: s2].	self display.	^self</body>

<body package="CS474" selector="add">add	"Adds a number to set 1"	s1 isNil ifTrue: [s1 := BST new].	s1 add: input value asNumber.	self display.	^self</body>

<body package="CS474" selector="remove">remove	"Removes a number from set 1"	s1 notNil ifTrue: [s1 remove: input value asNumber].	self display.	^self</body>

<body package="CS474" selector="clear">clear	"Clears set 1"	s1 clear.	self display.	^self</body>

<body package="CS474" selector="switch">switch	"Switches the trees of set 1 and set 2"	| temp |	temp := s1.	s1 := s2.	s2 := temp.	self display.	^self</body>

<body package="CS474" selector="display">display	"Refreshes the display to reflect the current state of set 1 and set 2"	s1 notNil		ifTrue: [leftView value: s1 asString]		ifFalse: [leftView value: '{}'].	s2 notNil		ifTrue: [rightView value: s2 asString]		ifFalse: [rightView value: '{}'].	^self</body>

<body package="CS474" selector="transform">transform	"Performs the block specified in the input on each element of set 1 and creates a new set out of the results.  Set 1 is then assigned to the new set."	s1 notNil		ifTrue: [s1 := s1 map: (BlockClosure readFromString: input value)].	self display.	^self</body>

<body package="CS474" selector="save">save	"Makes a copy of set 1 and sets set 2 to that copy"	s2 := s1 copy.	self display.	^self</body>
</methods>

<methods>
<class-id>UserInterface</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize	"initializes the instance variables"	s1 := BST new.	s2 := BST new.	^self</body>
</methods>



</st-source>
