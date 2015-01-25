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
<body>EROSMenuItem a default EROS menu item.
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
<body>EROSAppetizerItem representing an appetizer.
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
<body>EROSMainItem an EROS main course. 
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
<body>EROSDessertItem represents a dessert item.
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
<body>The class for the GUI for the EROS Menu System
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
<body>EROSLongDrinkItem represents a Long Drink item.
</comment>

<methods>
<class-id>EROSMenuItem class</class-id> <category>instance creation</category>

<body package="CS474" selector="new">new
</methods>


<methods>
<class-id>EROSMenuItem</class-id> <category>accessing</category>

<body package="CS474" selector="calories:">calories: anObject

<body package="CS474" selector="name:">name: anObject

<body package="CS474" selector="price:">price: anObject

<body package="CS474" selector="calories">calories

<body package="CS474" selector="price">price

<body package="CS474" selector="name">name
</methods>

<methods>
<class-id>EROSMenuItem</class-id> <category>printing</category>

<body package="CS474" selector="printString">printString
</methods>

<methods>
<class-id>EROSMenuItem</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize
</methods>


<methods>
<class-id>EROSAppetizerItem</class-id> <category>accessing</category>

<body package="CS474" selector="ingredients">ingredients

<body package="CS474" selector="ingredients:">ingredients: anObject
</methods>

<methods>
<class-id>EROSAppetizerItem</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize
</methods>


<methods>
<class-id>EROSMainItem</class-id> <category>accessing</category>

<body package="CS474" selector="ingredients">ingredients

<body package="CS474" selector="ingredients:">ingredients: anObject

<body package="CS474" selector="side:">side: anObject

<body package="CS474" selector="side">side
</methods>

<methods>
<class-id>EROSMainItem</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize
</methods>


<methods>
<class-id>EROSDessertItem</class-id> <category>accessing</category>

<body package="CS474" selector="description">description

<body package="CS474" selector="description:">description: anObject
</methods>

<methods>
<class-id>EROSDessertItem</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize
</methods>


<methods>
<class-id>EROSLongDrinkItem</class-id> <category>accessing</category>

<body package="CS474" selector="ingredients:">ingredients: anObject

<body package="CS474" selector="ingredients">ingredients
</methods>

<methods>
<class-id>EROSLongDrinkItem</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize
</methods>


<methods>
<class-id>EROS class</class-id> <category>interface specs</category>

<body package="CS474" selector="windowSpec">windowSpec
</methods>


<methods>
<class-id>EROS</class-id> <category>aspects</category>

<body package="CS474" selector="ingredientInput">ingredientInput

<body package="CS474" selector="name">name

<body package="CS474" selector="menu">menu

<body package="CS474" selector="mealCalories">mealCalories

<body package="CS474" selector="meal">meal

<body package="CS474" selector="side">side

<body package="CS474" selector="ingredients">ingredients

<body package="CS474" selector="description">description

<body package="CS474" selector="mealPrice">mealPrice

<body package="CS474" selector="calories">calories

<body package="CS474" selector="price">price
</methods>

<methods>
<class-id>EROS</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize
</methods>

<methods>
<class-id>EROS</class-id> <category>actions</category>

<body package="CS474" selector="createNewList">createNewList

<body package="CS474" selector="updateItem">updateItem

<body package="CS474" selector="quit">quit

<body package="CS474" selector="suggestLight">suggestLight

<body package="CS474" selector="removeIngredient">removeIngredient

<body package="CS474" selector="saveList">saveList

<body package="CS474" selector="loadList">loadList

<body package="CS474" selector="suggestFull">suggestFull

<body package="CS474" selector="addIngredient">addIngredient

<body package="CS474" selector="showErrorDialog">showErrorDialog

<body package="CS474" selector="deleteItem">deleteItem

<body package="CS474" selector="addMenuItem">addMenuItem

<body package="CS474" selector="showDescription">showDescription
</methods>

<methods>
<class-id>EROS</class-id> <category>private</category>

<body package="CS474" selector="set:">set: field

<body package="CS474" selector="disableFields">disableFields

<body package="CS474" selector="hideIngredientsInput">hideIngredientsInput

<body package="CS474" selector="redrawIngredients">redrawIngredients

<body package="CS474" selector="redrawMenu">redrawMenu
</methods>



</st-source>