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
<body>Encapsulates a binary search tree.Instance Variables	root	&lt;MessageForwarder | Object | ProtoObject | ProtoObject&gt;	The binary search tree data structure</body>
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

<body package="CS474" selector="new">new	"	***This is decompiled code.*** 	The source was unavailable because the source pointer appears to point to an 	incorrect position in the file. The file may have been modified after this method 	was updated."	^super new initialize</body>
</methods>


<methods>
<class-id>BSTNode</class-id> <category>comparing</category>

<body package="CS474" selector="=">= t1 	"	***This is decompiled code.*** 	The source was unavailable because the source pointer appears to point to an 	incorrect position in the file. The file may have been modified after this method 	was updated."	^self value = t1 value</body>

<body package="CS474" selector="~=">~= t1 	"	***This is decompiled code.*** 	The source was unavailable because the source pointer appears to point to an 	incorrect position in the file. The file may have been modified after this method 	was updated."	^self value ~= t1 value</body>

<body package="CS474" selector="&lt;">&lt; t1 	"	***This is decompiled code.*** 	The source was unavailable because the source pointer appears to point to an 	incorrect position in the file. The file may have been modified after this method 	was updated."	^self value &lt; t1 value</body>

<body package="CS474" selector="&lt;=">&lt;= t1 	"	***This is decompiled code.*** 	The source was unavailable because the source pointer appears to point to an 	incorrect position in the file. The file may have been modified after this method 	was updated."	^self value &lt;= t1 value</body>

<body package="CS474" selector="&gt;=">&gt;= t1 	"	***This is decompiled code.*** 	The source was unavailable because the source pointer appears to point to an 	incorrect position in the file. The file may have been modified after this method 	was updated."	^self value &gt;= t1 value</body>

<body package="CS474" selector="&gt;">&gt; t1 	"	***This is decompiled code.*** 	The source was unavailable because the source pointer appears to point to an 	incorrect position in the file. The file may have been modified after this method 	was updated."	^self value &gt; t1 value</body>
</methods>

<methods>
<class-id>BSTNode</class-id> <category>accessing</category>

<body package="CS474" selector="max">max	"	***This is decompiled code.*** 	The source was unavailable because the source pointer appears to point to an 	incorrect position in the file. The file may have been modified after this method 	was updated."	| t1 |	right isNil		ifTrue: [t1 := value]		ifFalse: [t1 := right max].	^t1</body>

<body package="CS474" selector="contains:">contains: t1 	"	***This is decompiled code.*** 	The source was unavailable because the source pointer appears to point to an 	incorrect position in the file. The file may have been modified after this method 	was updated."	| t2 |	t2 := false.	value = t1		ifTrue: [t2 := true]		ifFalse: 			[(value &lt; t1 and: [left isNil not])				ifTrue: [t2 := left contains: t1].			(value &gt; t1 and: [right isNil not])				ifTrue: [t2 := right contains: t1]].	^t2</body>

<body package="CS474" selector="right:">right: t1 	"	***This is decompiled code.*** 	The source was unavailable because the source pointer appears to point to an 	incorrect position in the file. The file may have been modified after this method 	was updated."	right := t1.	^self</body>

<body package="CS474" selector="min">min	"	***This is decompiled code.*** 	The source was unavailable because the source pointer appears to point to an 	incorrect position in the file. The file may have been modified after this method 	was updated."	| t1 |	left isNil		ifTrue: [t1 := value]		ifFalse: [t1 := left min].	^t1</body>

<body package="CS474" selector="left:">left: t1 	"	***This is decompiled code.*** 	The source was unavailable because the source pointer appears to point to an 	incorrect position in the file. The file may have been modified after this method 	was updated."	left := t1.	^self</body>

<body package="CS474" selector="hasChildren">hasChildren	"	***This is decompiled code.*** 	The source was unavailable because the source pointer appears to point to an 	incorrect position in the file. The file may have been modified after this method 	was updated."	left isNil not ifTrue: [^true].	^right isNil not</body>

<body package="CS474" selector="right">right	"	***This is decompiled code.*** 	The source was unavailable because the source pointer appears to point to an 	incorrect position in the file. The file may have been modified after this method 	was updated."	^right</body>

<body package="CS474" selector="value">value	"	***This is decompiled code.*** 	The source was unavailable because the source pointer appears to point to an 	incorrect position in the file. The file may have been modified after this method 	was updated."	^value</body>

<body package="CS474" selector="value:">value: t1 	"	***This is decompiled code.*** 	The source was unavailable because the source pointer appears to point to an 	incorrect position in the file. The file may have been modified after this method 	was updated."	value := t1.	^self</body>

<body package="CS474" selector="left">left	"	***This is decompiled code.*** 	The source was unavailable because the source pointer appears to point to an 	incorrect position in the file. The file may have been modified after this method 	was updated."	^left</body>
</methods>

<methods>
<class-id>BSTNode</class-id> <category>copying</category>

<body package="CS474" selector="copy">copy	| temp |	(temp := BSTNode new) value: self value.	self left = nil ifFalse: [temp left: left copy].	self right = nil ifFalse: [temp right: right copy].	^temp</body>
</methods>

<methods>
<class-id>BSTNode</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize	"	***This is decompiled code.*** 	The source was unavailable because the source pointer appears to point to an 	incorrect position in the file. The file may have been modified after this method 	was updated."	super initialize.	left := nil.	right := nil.	value := nil.	^self</body>
</methods>

<methods>
<class-id>BSTNode</class-id> <category>updating</category>

<body package="CS474" selector="remove:">remove: t1 	"	***This is decompiled code.*** 	The source was unavailable because the source pointer appears to point to an 	incorrect position in the file. The file may have been modified after this method 	was updated."	| t2 |	t2 := self.	value = t1		ifTrue: [self hasChildren				ifTrue: [left isNil						ifTrue: [t2 := right]						ifFalse: 							[value := left max.							left := left remove: value]]				ifFalse: [t2 := nil]]		ifFalse: [t1 &lt; value				ifTrue: [left isNil ifFalse: [left := left remove: t1]]				ifFalse: [right isNil ifFalse: [right := right remove: t1]]].	^t2</body>

<body package="CS474" selector="do:">do: aBlock	left isNil ifFalse: [left do: aBlock].	aBlock value: (self value).	right isNil ifFalse: [right do: aBlock].	^self</body>

<body package="CS474" selector="add:">add: t1 	"	***This is decompiled code.*** 	The source was unavailable because the source pointer appears to point to an 	incorrect position in the file. The file may have been modified after this method 	was updated."	| t2 |	t2 := nil.	t1 = value ifFalse: [t1 &lt; value			ifTrue: [left isNil					ifTrue: 						[(t2 := BSTNode new) value: t1.						left := t2]					ifFalse: [left add: t1]]			ifFalse: [right isNil					ifTrue: 						[(t2 := BSTNode new) value: t1.						right := t2]					ifFalse: [right add: t1]]].	^t2</body>
</methods>

<methods>
<class-id>BSTNode</class-id> <category>printing</category>

<body package="CS474" selector="printString">printString	"	***This is decompiled code.*** 	The source was unavailable because the source pointer appears to point to an 	incorrect position in the file. The file may have been modified after this method 	was updated."	| t1 |	t1 := String new.	left isNil not ifTrue: [t1 := left printString].	t1 := t1 , value printString , ' '.	right isNil not ifTrue: [t1 := t1 , right printString].	^t1</body>
</methods>


<methods>
<class-id>BST class</class-id> <category>instance creation</category>

<body package="CS474" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>BST</class-id> <category>updating</category>

<body package="CS474" selector="copy:">copy: anotherBST	root := anotherBST root copy.	^self</body>

<body package="CS474" selector="remove:">remove: anObject	root isNil ifFalse: [root := root remove: anObject].	^self</body>

<body package="CS474" selector="add:">add: anObject	root isNil		ifTrue: 			[root := BSTNode new.			root value: anObject]		ifFalse: [root add: anObject].	^self</body>

<body package="CS474" selector="swap:">swap: anotherBST	| temp |	temp := root.	root := anotherBST root.	anotherBST root: temp.	^self</body>

<body package="CS474" selector="clear">clear	root := nil.	^self</body>
</methods>

<methods>
<class-id>BST</class-id> <category>set-operations</category>

<body package="CS474" selector="intersection:">intersection: anotherBST	| temp |	anotherBST root isNil		ifTrue: [root := nil]		ifFalse: 			[temp := self copy.			anotherBST root do: [:value | temp remove: value].			temp root do: [:value | self remove: value]].	^self</body>

<body package="CS474" selector="map:">map: aBlock	| temp |	root isNil		ifFalse: 			[temp := BST new.			root do: [:x | temp add: (aBlock value: x)].			root := temp].	^self</body>

<body package="CS474" selector="union:">union: anotherBST	anotherBST root isNil		ifFalse: [anotherBST root do: [:value | self add: value]].	^self</body>
</methods>

<methods>
<class-id>BST</class-id> <category>printing</category>

<body package="CS474" selector="printString">printString	root isNil ifTrue: [^''].	^root printString</body>
</methods>

<methods>
<class-id>BST</class-id> <category>accessing</category>

<body package="CS474" selector="root">root	^root</body>

<body package="CS474" selector="root:">root: anObject	root := anObject</body>
</methods>

<methods>
<class-id>BST</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Edit the following to properly initialize instance variables ***"	root := nil.	" *** And replace this comment with additional initialization code *** "	^self</body>
</methods>


<methods>
<class-id>UserInterface class</class-id> <category>interface specs</category>

<body package="CS474" selector="windowSpec">windowSpec	"Tools.UIPainter new openOnClass: self andSelector: #windowSpec"	&lt;resource: #canvas&gt;	^#(#{UI.FullSpec} 		#window: 		#(#{UI.WindowSpec} 			#label: 'First Smalltalk Project' 			#bounds: #(#{Graphics.Rectangle} 672 318 1248 762 ) ) 		#component: 		#(#{UI.SpecCollection} 			#collection: #(				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 13 3 ) 					#name: #Label1 					#flags: 8 					#label: 'S1' ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 296 5 ) 					#name: #Label2 					#flags: 8 					#label: 'S2' ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 285 273 342 292 ) 					#name: #ActionButton1 					#model: #save 					#label: 'Save' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 356 272.5 413 292.5 ) 					#name: #ActionButton2 					#model: #display 					#label: 'Display' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 248 359 305 379 ) 					#name: #ActionButton3 					#model: #remove 					#label: 'Remove' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 150 359 207 379 ) 					#name: #ActionButton4 					#model: #add 					#label: 'Add' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 145 272.5 202 292.5 ) 					#name: #ActionButton5 					#model: #clear 					#label: 'Clear' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 216 272.5 273 292.5 ) 					#name: #ActionButton6 					#model: #switch 					#label: 'Switch' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 346 359 403 379 ) 					#name: #ActionButton7 					#model: #transform 					#label: 'Transform' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 209 393 266 413 ) 					#name: #ActionButton8 					#model: #union 					#label: 'Union' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 282 393 339 413 ) 					#name: #ActionButton9 					#model: #intersection 					#label: 'Intersection' 					#defaultable: true ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 163 324 393 352 ) 					#name: #InputField1 					#model: #input ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 10 22 275 259 ) 					#name: #InputField2 					#model: #s1 					#tabable: false 					#isReadOnly: true ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 284 22 549 259 ) 					#name: #InputField3 					#model: #s2 					#tabable: false 					#isReadOnly: true ) ) ) )</body>
</methods>


<methods>
<class-id>UserInterface</class-id> <category>actions</category>

<body package="CS474" selector="union">union	"This stub method was generated by UIDefiner"	^self</body>

<body package="CS474" selector="intersection">intersection	"This stub method was generated by UIDefiner"	^self</body>

<body package="CS474" selector="add">add	"This stub method was generated by UIDefiner"	s1 := input value.	^self</body>

<body package="CS474" selector="remove">remove	"This stub method was generated by UIDefiner"	^self</body>

<body package="CS474" selector="clear">clear	"This stub method was generated by UIDefiner"	^self</body>

<body package="CS474" selector="transform">transform	"This stub method was generated by UIDefiner"	^self</body>

<body package="CS474" selector="display">display	"This stub method was generated by UIDefiner"	^self</body>

<body package="CS474" selector="save">save	"This stub method was generated by UIDefiner"	^self</body>

<body package="CS474" selector="switch">switch	"This stub method was generated by UIDefiner"	^self</body>
</methods>

<methods>
<class-id>UserInterface</class-id> <category>aspects</category>

<body package="CS474" selector="s1">s1	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^s1 isNil		ifTrue:			[s1 := String new asValue]		ifFalse:			[s1]</body>

<body package="CS474" selector="input">input	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^input isNil		ifTrue:			[input := String new asValue]		ifFalse:			[input]</body>

<body package="CS474" selector="s2">s2	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^s2 isNil		ifTrue:			[s2 := String new asValue]		ifFalse:			[s2]</body>
</methods>



</st-source>
