# TemplateChooser
A script to allow Freeplane users to define nodes as templates and then choose a template when creating a new node

## Minimum Freeplane version
v1.5.18

## Version
0.1 Initial version 20th Jan 2017

## Installation
1. Open Freeplane
2. In Tools Menu, Open User Directory
3. Copy the script "createnodefromtemplate.groovy" to the scripts folder in User Directory
4. Restart Freeplane

## Usage
Any node can be a 'Template' node
  Must have node text starting with "Template:"

Create one or more template nodes

Select any non-template node you wish to add a new node (based on a template)

From Tools/Scripts menu choose 'createnodefromtemplate' script

A dialog box appears and lists any templates you have created

Once you have chosen a template a complete copy of the template node is created and two attributes are added 
1. 'type' attribute has template name (with the "Template:" prefix removed) 
2. 'created' attribute with date node was created from the template
    Note this is a copy not a clone of the template node
    
All elements of the template node are created in the new node including
- node core,details and note text
- styles
- sub nodes
- scripts in template node or children
- attributes (+ 'type' and 'created' attributes mention above
    
