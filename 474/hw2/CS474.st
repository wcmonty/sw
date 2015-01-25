<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks® Personal Use Edition, 7.10 of July 10, 2013 on March 19, 2014 at 7:56:43 PM</time-stamp>


<component-created>
<name>CS474</name> <type>package</type>
</component-created><!-- Package CS474* -->


<component-property>
<name>CS474</name> <type>package</type>
<property>comment</property> <value>'Package for CS 474 Smalltalk Project 2.
'</value>
</component-property>

<class>
<name>EROSMenuItem</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>name calories price </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>CS474</package>
</attributes>
</class>

<comment>
<class-id>EROSMenuItem</class-id>
<body>EROSMenuItem a default EROS menu item.Instance Variables	calories	&lt;SmallInteger&gt;	description of calories	name	&lt;String&gt;	description of name	price	&lt;Float&gt;	description of price</body>
</comment>

<class>
<name>EROSAppetizerItem</name>
<environment>Smalltalk</environment>
<super>EROSMenuItem</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>ingredients </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>CS474</package>
</attributes>
</class>

<comment>
<class-id>EROSAppetizerItem</class-id>
<body>EROSAppetizerItem representing an appetizer.Instance Variables	ingredients	&lt;OrderedCollection&gt;	a list of ingredients</body>
</comment>

<class>
<name>EROSMainItem</name>
<environment>Smalltalk</environment>
<super>EROSMenuItem</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>ingredients side </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>CS474</package>
</attributes>
</class>

<comment>
<class-id>EROSMainItem</class-id>
<body>EROSMainItem an EROS main course. Instance Variables	ingredients	&lt;OrderedCollection&gt;	a list of ingredients	side	&lt;String&gt;	a side dish</body>
</comment>

<class>
<name>EROSDessertItem</name>
<environment>Smalltalk</environment>
<super>EROSMenuItem</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>description </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>CS474</package>
</attributes>
</class>

<comment>
<class-id>EROSDessertItem</class-id>
<body>EROSDessertItem represents a dessert item.Instance Variables	description	&lt;String&gt;	the description</body>
</comment>

<class>
<name>EROS</name>
<environment>Smalltalk</environment>
<super>UI.ApplicationModel</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>menu ingredients price calories name side description ingredientInput mealPrice mealCalories meal </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>CS474</package>
</attributes>
</class>

<comment>
<class-id>EROS</class-id>
<body>The class for the GUI for the EROS Menu SystemInstance Variables	calories	&lt;ValueHolder&gt;	value holder for calories	description	&lt;ValueHolder&gt;	value holder for description	ingredientInput	&lt;ValueModel&gt;	value holder for the ingredients input	ingredients	&lt;SelectionInList&gt;	list view for ingredients	meal	&lt;SelectionInList&gt;	list view for meal	mealCalories	&lt;ValueModel&gt; value holder for the input for calories	mealPrice	&lt;ValueModel&gt;	value holder for the input of price	menu	&lt;IndentedTreeSelectionInList&gt;	a hierarchical list that shows the menu	name	&lt;ValueHolder&gt;	a value holder for the name	price	&lt;ValueHolder&gt;	a value holder for the price	side	&lt;ValueHolder&gt;	a value holder for the side</body>
</comment>

<class>
<name>EROSLongDrinkItem</name>
<environment>Smalltalk</environment>
<super>EROSMenuItem</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>ingredients </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>CS474</package>
</attributes>
</class>

<comment>
<class-id>EROSLongDrinkItem</class-id>
<body>EROSLongDrinkItem represents a Long Drink item.Instance Variables	ingredients	&lt;OrderedCollection&gt;	the ingredients of the long drink</body>
</comment>

<methods>
<class-id>EROSMenuItem class</class-id> <category>instance creation</category>

<body package="CS474" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>EROSMenuItem</class-id> <category>accessing</category>

<body package="CS474" selector="calories:">calories: anObject	"Sets calories"	calories := anObject</body>

<body package="CS474" selector="name:">name: anObject	"Sets the name"	name := anObject</body>

<body package="CS474" selector="price:">price: anObject	"Sets the price"		price := anObject asNumber</body>

<body package="CS474" selector="calories">calories	"Responds with calories"	^calories</body>

<body package="CS474" selector="price">price	"Responds with the price"	^price</body>

<body package="CS474" selector="name">name	"Responds with the name"	^name</body>
</methods>

<methods>
<class-id>EROSMenuItem</class-id> <category>printing</category>

<body package="CS474" selector="printString">printString	"Converts the item to a string"	| string formattedPrice |	"Format and print the string"	formattedPrice := PrintConverter print: price formattedBy: '###,###.##'.	formattedPrice := formattedPrice				copyFrom: (formattedPrice findFirst: [:ch | ch isSeparator not])				to: (formattedPrice findLast: [:ch | ch isSeparator not]).	string := '$' , formattedPrice , ' ' , name , ' (' , calories printString				, ' calories)'.	^string</body>
</methods>

<methods>
<class-id>EROSMenuItem</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	name := 'New Item'.	calories := 10000.	price := 1000.00.	^self</body>
</methods>


<methods>
<class-id>EROSAppetizerItem</class-id> <category>accessing</category>

<body package="CS474" selector="ingredients">ingredients	"Responds with the ingredients"	^ingredients</body>

<body package="CS474" selector="ingredients:">ingredients: anObject	"Sets the ingredients"	ingredients := anObject</body>
</methods>

<methods>
<class-id>EROSAppetizerItem</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	ingredients := OrderedCollection new.	^self</body>
</methods>


<methods>
<class-id>EROSMainItem</class-id> <category>accessing</category>

<body package="CS474" selector="ingredients">ingredients	"Responds with ingredients"	^ingredients</body>

<body package="CS474" selector="ingredients:">ingredients: anObject	"Sets ingredients"	ingredients := anObject</body>

<body package="CS474" selector="side:">side: anObject	"Sets the side"	side := anObject</body>

<body package="CS474" selector="side">side	"Responds with side"	^side</body>
</methods>

<methods>
<class-id>EROSMainItem</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	ingredients := OrderedCollection new.	side := ''.	^self</body>
</methods>


<methods>
<class-id>EROSDessertItem</class-id> <category>accessing</category>

<body package="CS474" selector="description">description	"Responds with the description"	^description</body>

<body package="CS474" selector="description:">description: anObject	"Sets the description"	description := anObject</body>
</methods>

<methods>
<class-id>EROSDessertItem</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	description := ''.	^self</body>
</methods>


<methods>
<class-id>EROSLongDrinkItem</class-id> <category>accessing</category>

<body package="CS474" selector="ingredients:">ingredients: anObject	ingredients := anObject</body>

<body package="CS474" selector="ingredients">ingredients	^ingredients</body>
</methods>

<methods>
<class-id>EROSLongDrinkItem</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Edit the following to properly initialize instance variables ***"	ingredients := OrderedCollection new.	" *** And replace this comment with additional initialization code *** "	^self</body>
</methods>


<methods>
<class-id>EROS class</class-id> <category>interface specs</category>

<body package="CS474" selector="windowSpec">windowSpec	"Tools.UIPainter new openOnClass: self andSelector: #windowSpec"	&lt;resource: #canvas&gt;	^#(#{UI.FullSpec} 		#window: 		#(#{UI.WindowSpec} 			#label: 'EROS Menu System' 			#min: #(#{Core.Point} 20 20 ) 			#max: #(#{Core.Point} 0 0 ) 			#bounds: #(#{Graphics.Rectangle} 1054 261 1754 820 ) 			#colors: 			#(#{UI.LookPreferences} 				#setForegroundColor: #(#{Graphics.ColorValue} #black ) 				#setBackgroundColor: #(#{Graphics.ColorValue} 6553 6553 6553 ) 				#setSelectionForegroundColor: #(#{Graphics.ColorValue} #black ) 				#setSelectionBackgroundColor: #(#{Graphics.ColorValue} 6553 6553 6553 ) 				#setBorderColor: #(#{Graphics.ColorValue} #black ) ) ) 		#component: 		#(#{UI.SpecCollection} 			#collection: #(				#(#{UI.HierarchicalViewSpec} 					#layout: #(#{Graphics.Rectangle} 19 40 359 277 ) 					#name: #menuList 					#isOpaque: true 					#colors: 					#(#{UI.LookPreferences} 						#setForegroundColor: #(#{Graphics.ColorValue} #black ) 						#setBackgroundColor: #(#{Graphics.ColorValue} #white ) 						#setSelectionForegroundColor: #(#{Graphics.ColorValue} #black ) 						#setSelectionBackgroundColor: #(#{Graphics.ColorValue} 8191 8191 5119 ) ) 					#model: #menu 					#tabable: false 					#useModifierKeys: true 					#selectionType: #highlight ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 33 312 125 345 ) 					#name: #ActionButton1 					#model: #createNewList 					#tabable: false 					#label: 'New list' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 54 284 169 312 ) 					#name: #ActionButton2 					#model: #addMenuItem 					#tabable: false 					#label: 'Add Menu Item' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 198 284 313 312 ) 					#name: #ActionButton3 					#model: #deleteItem 					#tabable: false 					#label: 'Delete Menu Item' 					#defaultable: true ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 162 8 ) 					#name: #Label1 					#label: 'Menu' 					#style: #large ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 138 312 230 345 ) 					#name: #ActionButton4 					#model: #saveList 					#tabable: false 					#label: 'Save List' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 243 312 335 345 ) 					#name: #ActionButton5 					#model: #loadList 					#tabable: false 					#label: 'Load List' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 37 506 171 536 ) 					#name: #ActionButton6 					#model: #suggestFull 					#tabable: false 					#label: 'Suggest Full Meal' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 193 506 327 536 ) 					#name: #ActionButton7 					#model: #suggestLight 					#tabable: false 					#label: 'Suggest Light Meal' 					#defaultable: true ) 				#(#{UI.GroupBoxSpec} 					#layout: #(#{Graphics.Rectangle} 9 31 369 346 ) 					#name: #GroupBox1 					#isOpaque: true 					#colors: 					#(#{UI.LookPreferences} 						#setBackgroundColor: #(#{Graphics.ColorValue} 7044 7044 7044 ) ) ) 				#(#{UI.GroupBoxSpec} 					#layout: #(#{Graphics.Rectangle} 9 353 366 548 ) 					#name: #GroupBox3 					#isOpaque: true 					#colors: 					#(#{UI.LookPreferences} 						#setForegroundColor: #(#{Graphics.ColorValue} 7700 7700 7700 ) 						#setBackgroundColor: #(#{Graphics.ColorValue} 7044 7044 7044 ) ) ) 				#(#{UI.LabelSpec} 					#properties: #(#{UI.PropertyListDictionary} #labelFromApplication false ) 					#layout: #(#{Core.Point} 473 4 ) 					#name: #itemDescriptionLabel 					#label: 'Item Description' 					#style: #large ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 415 45 ) 					#name: #nameLabel 					#flags: 16 					#label: 'Name' ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 420 73 ) 					#name: #priceLabel 					#flags: 16 					#label: 'Price' ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 404 103 ) 					#name: #caloriesLabel 					#flags: 16 					#label: 'Calories' ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 399 133 ) 					#name: #sideLabel 					#flags: 16 					#label: 'Side Dish' ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 383 237 ) 					#name: #ingredientsLabel 					#flags: 16 					#label: 'Ingredients' ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 388 167 ) 					#name: #descriptionLabel 					#flags: 16 					#label: 'Description' ) 				#(#{UI.GroupBoxSpec} 					#layout: #(#{Graphics.Rectangle} 375 31 688 448 ) 					#name: #GroupBox5 ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 31 472 176 498 ) 					#name: #mealCaloriesField 					#isOpaque: true 					#colors: 					#(#{UI.LookPreferences} 						#setForegroundColor: #(#{Graphics.ColorValue} #black ) 						#setBackgroundColor: #(#{Graphics.ColorValue} #white ) 						#setSelectionForegroundColor: #(#{Graphics.ColorValue} #black ) 						#setSelectionBackgroundColor: #(#{Graphics.ColorValue} 7044 7044 7044 ) ) 					#model: #mealCalories 					#tabable: false 					#alignment: #right 					#type: #number ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 187 472 332 498 ) 					#name: #mealPriceField 					#isOpaque: true 					#colors: 					#(#{UI.LookPreferences} 						#setForegroundColor: #(#{Graphics.ColorValue} #black ) 						#setBackgroundColor: #(#{Graphics.ColorValue} #white ) 						#setSelectionForegroundColor: #(#{Graphics.ColorValue} #black ) 						#setSelectionBackgroundColor: #(#{Graphics.ColorValue} 7044 7044 7044 ) ) 					#model: #mealPrice 					#tabable: false 					#alignment: #right 					#type: #number 					#formatString: '#,##0' ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 32 451 ) 					#name: #Label2 					#label: 'Calories' ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 192 451 ) 					#name: #Label3 					#label: 'Price' ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 452 36 679 63 ) 					#name: #nameField 					#flags: 24 					#isOpaque: true 					#colors: 					#(#{UI.LookPreferences} 						#setForegroundColor: #(#{Graphics.ColorValue} #black ) 						#setBackgroundColor: #(#{Graphics.ColorValue} #white ) 						#setSelectionForegroundColor: #(#{Graphics.ColorValue} #black ) 						#setSelectionBackgroundColor: #(#{Graphics.ColorValue} 7044 7044 7044 ) ) 					#model: #name 					#callbacksSpec: 					#(#{UI.UIEventCallbackSubSpec} 						#valueChangeSelector: #updateItem ) 					#tabable: false 					#type: #string ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 452 67 679 94 ) 					#name: #priceField 					#flags: 24 					#isOpaque: true 					#colors: 					#(#{UI.LookPreferences} 						#setForegroundColor: #(#{Graphics.ColorValue} #black ) 						#setBackgroundColor: #(#{Graphics.ColorValue} #white ) 						#setSelectionForegroundColor: #(#{Graphics.ColorValue} #black ) 						#setSelectionBackgroundColor: #(#{Graphics.ColorValue} 7044 7044 7044 ) ) 					#model: #price 					#callbacksSpec: 					#(#{UI.UIEventCallbackSubSpec} 						#valueChangeSelector: #updateItem ) 					#tabable: false 					#type: #number 					#formatString: '0.00' ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 452 98 679 125 ) 					#name: #caloriesField 					#flags: 24 					#isOpaque: true 					#colors: 					#(#{UI.LookPreferences} 						#setForegroundColor: #(#{Graphics.ColorValue} #black ) 						#setBackgroundColor: #(#{Graphics.ColorValue} #white ) 						#setSelectionForegroundColor: #(#{Graphics.ColorValue} #black ) 						#setSelectionBackgroundColor: #(#{Graphics.ColorValue} 7044 7044 7044 ) ) 					#model: #calories 					#callbacksSpec: 					#(#{UI.UIEventCallbackSubSpec} 						#valueChangeSelector: #updateItem ) 					#tabable: false 					#type: #number 					#formatString: '0' ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 452 129 679 156 ) 					#name: #sideField 					#flags: 24 					#isOpaque: true 					#colors: 					#(#{UI.LookPreferences} 						#setForegroundColor: #(#{Graphics.ColorValue} #black ) 						#setBackgroundColor: #(#{Graphics.ColorValue} #white ) 						#setSelectionForegroundColor: #(#{Graphics.ColorValue} #black ) 						#setSelectionBackgroundColor: #(#{Graphics.ColorValue} 7044 7044 7044 ) ) 					#model: #side 					#callbacksSpec: 					#(#{UI.UIEventCallbackSubSpec} 						#valueChangeSelector: #updateItem ) 					#tabable: false ) 				#(#{UI.TextEditorSpec} 					#layout: #(#{Graphics.Rectangle} 452 166 679 228 ) 					#name: #descriptionField 					#flags: 29 					#isOpaque: true 					#colors: 					#(#{UI.LookPreferences} 						#setForegroundColor: #(#{Graphics.ColorValue} #black ) 						#setBackgroundColor: #(#{Graphics.ColorValue} #white ) 						#setSelectionForegroundColor: #(#{Graphics.ColorValue} #black ) 						#setSelectionBackgroundColor: #(#{Graphics.ColorValue} 7044 7044 7044 ) ) 					#model: #description 					#callbacksSpec: 					#(#{UI.UIEventCallbackSubSpec} 						#valueChangeSelector: #updateItem ) 					#tabable: false 					#tabRequiresControl: true ) 				#(#{UI.SequenceViewSpec} 					#layout: #(#{Graphics.Rectangle} 452 236 679 362 ) 					#name: #ingredientsField 					#flags: 29 					#isOpaque: true 					#colors: 					#(#{UI.LookPreferences} 						#setForegroundColor: #(#{Graphics.ColorValue} #black ) 						#setBackgroundColor: #(#{Graphics.ColorValue} #white ) 						#setSelectionForegroundColor: #(#{Graphics.ColorValue} #black ) 						#setSelectionBackgroundColor: #(#{Graphics.ColorValue} 7044 7044 7044 ) ) 					#model: #ingredients 					#tabable: false 					#useModifierKeys: true 					#selectionType: #highlight ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 413 392 685 412 ) 					#name: #ingredientInputField 					#flags: 24 					#colors: 					#(#{UI.LookPreferences} 						#setForegroundColor: #(#{Graphics.ColorValue} #black ) 						#setBackgroundColor: #(#{Graphics.ColorValue} #white ) 						#setSelectionForegroundColor: #(#{Graphics.ColorValue} 7044 7044 7044 ) 						#setSelectionBackgroundColor: #(#{Graphics.ColorValue} #white ) ) 					#model: #ingredientInput 					#tabable: false ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 435 415 529 445 ) 					#name: #addIngredient 					#flags: 24 					#model: #addIngredient 					#tabable: false 					#label: 'Add Ingredient' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 553 413 671 444 ) 					#name: #removeIngredient 					#flags: 24 					#model: #removeIngredient 					#tabable: false 					#label: 'Remove Ingredient' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 474 489 612 507 ) 					#name: #ActionButton8 					#colors: 					#(#{UI.LookPreferences} 						#setBackgroundColor: #(#{Graphics.ColorValue} 5119 8191 8191 ) 						#setSelectionBackgroundColor: #(#{Graphics.ColorValue} 5119 8191 8191 ) ) 					#model: #quit 					#tabable: false 					#label: 'Quit' 					#defaultable: true ) 				#(#{UI.SequenceViewSpec} 					#layout: #(#{Graphics.Rectangle} 19 365 359 447 ) 					#name: #mealList 					#flags: 45 					#isOpaque: true 					#colors: 					#(#{UI.LookPreferences} 						#setForegroundColor: #(#{Graphics.ColorValue} #black ) 						#setBackgroundColor: #(#{Graphics.ColorValue} #white ) 						#setSelectionForegroundColor: #(#{Graphics.ColorValue} #black ) 						#setSelectionBackgroundColor: #(#{Graphics.ColorValue} #white ) ) 					#model: #meal 					#tabable: false 					#useModifierKeys: true 					#selectionType: #highlight ) ) ) )</body>
</methods>


<methods>
<class-id>EROS</class-id> <category>aspects</category>

<body package="CS474" selector="ingredientInput">ingredientInput	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^ingredientInput isNil		ifTrue:			[ingredientInput := String new asValue]		ifFalse:			[ingredientInput]</body>

<body package="CS474" selector="name">name	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^name isNil		ifTrue:			[name := String new asValue]		ifFalse:			[name]</body>

<body package="CS474" selector="menu">menu	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^menu isNil		ifTrue:			[menu := IndentedTreeSelectionInList newEmptyInstance]		ifFalse:			[menu]</body>

<body package="CS474" selector="mealCalories">mealCalories	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^mealCalories isNil		ifTrue:			[mealCalories := 0 asValue]		ifFalse:			[mealCalories]</body>

<body package="CS474" selector="meal">meal	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^meal isNil		ifTrue:			[meal := SelectionInList new]		ifFalse:			[meal]</body>

<body package="CS474" selector="side">side	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^side isNil		ifTrue:			[side := String new asValue]		ifFalse:			[side]</body>

<body package="CS474" selector="ingredients">ingredients	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^ingredients isNil		ifTrue:			[ingredients := SelectionInList new]		ifFalse:			[ingredients]</body>

<body package="CS474" selector="description">description	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^description isNil		ifTrue:			[description := String new asValue]		ifFalse:			[description]</body>

<body package="CS474" selector="mealPrice">mealPrice	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^mealPrice isNil		ifTrue:			[mealPrice := 0 asValue]		ifFalse:			[mealPrice]</body>

<body package="CS474" selector="calories">calories	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^calories isNil		ifTrue:			[calories := 0 asValue]		ifFalse:			[calories]</body>

<body package="CS474" selector="price">price	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^price isNil		ifTrue:			[price := 0 asValue]		ifFalse:			[price]</body>
</methods>

<methods>
<class-id>EROS</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize	"Initializes the object"	super initialize.	self createNewList.	self menu selectionIndexHolder onChangeSend: #showDescription to: self.	^self</body>
</methods>

<methods>
<class-id>EROS</class-id> <category>actions</category>

<body package="CS474" selector="createNewList">createNewList	"Creates and initializes a new hierarchical list"	| tree child |	tree := AssociationTreeWithParent new key: 'Root' value: nil.	"Add Food Items"	child := (AssociationTreeWithParent new parent: self) key: #Food value: nil.	child		addChild: ((AssociationTreeWithParent new parent: self) key: #Appetizers				value: EROSAppetizerItem).	child addChild: ((AssociationTreeWithParent new parent: self)				key: #'Main Courses'				value: EROSMainItem).	child		addChild: ((AssociationTreeWithParent new parent: self) key: #Desserts				value: EROSDessertItem).	child expanded: true.	"Add Beverage Items"	tree addChild: child.	child := (AssociationTreeWithParent new parent: self) key: #Beverages				value: nil.	child		addChild: ((AssociationTreeWithParent new parent: self) key: #'Long Drinks'				value: EROSLongDrinkItem).	child addChild: ((AssociationTreeWithParent new parent: self) key: #Soda				value: EROSMenuItem).	tree addChild: child.	self menu tree: (tree expanded: true).	self redrawMenu.	^self</body>

<body package="CS474" selector="updateItem">updateItem	"Updates a menu item."	| selection this |	this := self.	selection := menu selection.	(selection notNil and: [selection value isKindOf: EROSMenuItem])		ifTrue: 			[#(#name #calories #price #side #description) do: 					[:x |					(selection value respondsTo: (x , ':') asSymbol)						ifTrue: 							[selection value perform: (x , ':') asSymbol with: (this perform: x) value]].			selection key: selection value name asSymbol].	self redrawMenu.	menu selection: selection value.	^self</body>

<body package="CS474" selector="quit">quit	"Closes the window"	self closeRequest.	^self</body>

<body package="CS474" selector="suggestLight">suggestLight	"Suggests a light meal. This method is messy and inefficient."	| mealList |	(mealCalories value notNil and: [mealPrice value notNil])		ifTrue: 			[(menu tree find: #Appetizers) childrenDo: 					[:appetizer |					(menu tree find: #Desserts) childrenDo: 							[:dessert |							(menu tree find: #Soda) childrenDo: 									[:soda |									(mealCalories value										&gt; (appetizer value calories + dessert value calories + soda value calories)											and: 												[mealPrice value													&gt; (appetizer value price + dessert value price + soda value price)])											ifTrue: 												[mealList := List new.												mealList add: appetizer value.												mealList add: dessert value.												mealList add: soda value.												^meal list: mealList]]]]].	self showErrorDialog.	^self</body>

<body package="CS474" selector="removeIngredient">removeIngredient	"Removes an ingredient from a selected menu item"	ingredients selection notNil		ifTrue: 			[ingredients list remove: ingredients selection.			self redrawIngredients].	^self</body>

<body package="CS474" selector="saveList">saveList	"Saves a list as a BOS to disk"	| outBOS dialog filename |	dialog := SaveFileDialog new.	dialog		windowTitle: 'Save Menu';		acceptButtonLabel: 'Save';		defaultFilename: 'menu.st';		addFileFilter: 'SmallTalk file (*.st' pattern: '*.st';		addFilterForAllFiles.	filename := dialog select.	filename notNil		ifTrue: 			[outBOS := BinaryObjectStorage						onNew: (Filename named: filename asString) writeStream.			outBOS nextPut: menu tree.			outBOS close].	^self</body>

<body package="CS474" selector="loadList">loadList	"Loads a list from a saved BOS"	| inBOS dialog filename tree |	dialog := OpenFileDialog new.	dialog		windowTitle: 'Open Menu';		acceptButtonLabel: 'Open';		defaultFilename: 'menu.st';		addFileFilter: 'SmallTalk file (*.st' pattern: '*.st';		addFilterForAllFiles.	filename := dialog select.	filename notNil		ifTrue: 			[inBOS := BinaryObjectStorage						onOld: (Filename named: filename asString) readStream.			tree := inBOS next.			(tree isKindOf: AssociationTree) ifTrue: [menu tree: tree]].	^self</body>

<body package="CS474" selector="suggestFull">suggestFull	"Suggests a full meal.  This is messy and inefficient."	| mealList |	(mealCalories value notNil and: [mealPrice value notNil])		ifTrue: 			[(menu tree find: #'Main Courses') childrenDo: 					[:main |					(menu tree find: #Soda) childrenDo: 							[:soda |							(menu tree find: #'Long Drinks') childrenDo: 									[:long |									(menu tree find: #Desserts) childrenDo: 											[:dessert |											(mealCalories value												&gt; (main value calories + dessert value calories + soda value calories														+ long value calories)													and: 														[mealPrice value															&gt; (main value price + dessert value price + soda value price																	+ long value price)])													ifTrue: 														[mealList := List new.														mealList add: main value.														mealList add: dessert value.														mealList add: soda value.														mealList add: long value.														^meal list: mealList]].									(menu tree find: #Appetizers) childrenDo: 											[:appetizer |											(mealCalories value												&gt; (main value calories + appetizer value calories + soda value calories														+ long value calories)													and: 														[mealPrice value															&gt; (main value price + appetizer value price + soda value price																	+ long value price)])													ifTrue: 														[mealList := List new.														mealList add: appetizer value.														mealList add: main value.														mealList add: soda value.														mealList add: long value.														^meal list: mealList]]]]]].	self showErrorDialog.	^self</body>

<body package="CS474" selector="addIngredient">addIngredient	"Adds an ingredient to a selected item"	ingredientInput value notEmpty		ifTrue: [ingredients list add: ingredientInput value].	self redrawIngredients.	^self</body>

<body package="CS474" selector="showErrorDialog">showErrorDialog	"Shows an error dialog"	Dialog warn: 'No meals found!'</body>

<body package="CS474" selector="deleteItem">deleteItem	"Deletes an item from a menu"	| parent |	(menu selection notNil and: [menu selection value isKindOf: EROSMenuItem])		ifTrue: 			[parent := menu selection parent.			parent removeChild: menu selection.			self redrawMenu.			menu selection: parent value].	^self</body>

<body package="CS474" selector="addMenuItem">addMenuItem	"Adds a new menu item to a menu."	| parent child |	(menu selection notNil and: [menu selection value notNil])		ifTrue: 			[(menu selection value isKindOf: Class)				ifTrue: 					[parent := menu selection.					child := menu selection value new]				ifFalse: 					[parent := menu selection parent.					child := parent value new].			parent addChild: ((AssociationTreeWithParent new parent: parent)						key: child name asSymbol						value: child)].	self redrawMenu.	menu selection: child.	^self</body>

<body package="CS474" selector="showDescription">showDescription	"Shows a description from a selected menu item"	menu selection value notNil		ifTrue: 			[(menu selection value isKindOf: EROSMenuItem)				ifTrue: 					[self set: #name.					self set: #calories.					self set: #price.					self set: #side.					self set: #description.					self set: #ingredients]				ifFalse: [self disableFields]]		ifFalse: [self disableFields].	^self</body>
</methods>

<methods>
<class-id>EROS</class-id> <category>private</category>

<body package="CS474" selector="set:">set: field	"Sets an input field to the correct value or hides it"	| wrapper label menuSelectionValue value |	menuSelectionValue := menu selection value.	"Make the label visible"	label := self wrapperAt: (field, #Label) asSymbol.	"Make the widget visible"	wrapper := self wrapperAt: (field , #Field) asSymbol.	(menuSelectionValue respondsTo: field)		ifTrue: 			[label notNil ifTrue: [label beVisible].			wrapper notNil ifTrue: [wrapper beVisible].			value := menuSelectionValue perform: field.			"Ingredients is a list"			field = #ingredients				ifTrue: 					[(self wrapperAt: #ingredientInputField) beVisible.					(self wrapperAt: #addIngredient) beVisible.					(self wrapperAt: #removeIngredient) beVisible.					ingredients list: menuSelectionValue ingredients]				ifFalse: 					[(self perform: field) value: value.					self hideIngredientsInput]]		ifFalse: 			[label notNil ifTrue: [label beInvisible].			wrapper notNil ifTrue: [wrapper beInvisible]]</body>

<body package="CS474" selector="disableFields">disableFields	"Makes unused fields invisible"	| wrapper |	#(#name #price #calories #side #description #ingredients) do: 			[:method |			wrapper := self wrapperAt: (method , #Field) asSymbol.			wrapper notNil ifTrue: [wrapper beInvisible].			wrapper := self wrapperAt: (method , #Label) asSymbol.			wrapper notNil ifTrue: [wrapper beInvisible]].	self hideIngredientsInput.	^self</body>

<body package="CS474" selector="hideIngredientsInput">hideIngredientsInput	"Hides the ingredients inputs."	(self wrapperAt: #ingredientInputField) beInvisible.	(self wrapperAt: #addIngredient) beInvisible.	(self wrapperAt: #removeIngredient) beInvisible</body>

<body package="CS474" selector="redrawIngredients">redrawIngredients	"Redraws the ingredients widget"	(self builder componentAt: #ingredientsField) widget invalidate</body>

<body package="CS474" selector="redrawMenu">redrawMenu	"Redraws the Hierarchical list.  Calls the rebuildIndentedList, which is private, but I could not find any other way to refresh it.  'menu invalidate' does not work."	menu rebuildIndentedList</body>
</methods>



</st-source>
