<map version="freeplane 1.5.9">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="Template Demo&#xa;v0.1" FOLDED="false" ID="ID_1723255651" CREATED="1283093380553" MODIFIED="1484950978679" BACKGROUND_COLOR="#ffcc99"><hook NAME="MapStyle">
    <properties show_icon_for_attributes="true" fit_to_viewport="false;"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24.0 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" MAX_WIDTH="600.0 px" COLOR="#000000" STYLE="as_parent">
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes">
<font SIZE="9"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important">
<icon BUILTIN="yes"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#111111">
<font SIZE="10"/>
</stylenode>
</stylenode>
</stylenode>
</map_styles>
</hook>
<hook NAME="AutomaticEdgeColor" COUNTER="5" RULE="ON_BRANCH_CREATION"/>
<node TEXT="Installation" POSITION="right" ID="ID_1969269557" CREATED="1484944627654" MODIFIED="1484944633835">
<edge COLOR="#808080"/>
<node TEXT="Copy the script in this nodes detail into a text editor and save as &quot;createnodefromtemplate.groovy&quot;" ID="ID_585198762" CREATED="1484944635247" MODIFIED="1484948702368"><richcontent TYPE="DETAILS" HIDDEN="true">

<html>
  <head>
    
  </head>
  <body>
    <p>
      /* Template Chooser Script
    </p>
    <p>
      A modification of the original script by Quinbus Flestrin, December 12, 2011
    </p>
    <p>
      Modified by Allan at ADXSoft 20th Jan 2017
    </p>
    <p>
      
    </p>
    <p>
      Purpose is to locate and copy pre-defined Templates as new branches to the selected node
    </p>
    <p>
      The script uses a GUI swingbuilder combo box to capture user input as to which template
    </p>
    <p>
      and then searches the map for any nodes with node text that commences with the string &quot;Template:&quot;&quot;
    </p>
    <p>
      (these templates can be anywhere in the map).
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      */
    </p>
    <p>
      import groovy.swing.SwingBuilder
    </p>
    <p>
      import java.awt.FlowLayout as FL
    </p>
    <p>
      import javax.swing.BoxLayout as BXL
    </p>
    <p>
      import javax.swing.JFrame
    </p>
    <p>
      import javax.swing.JOptionPane
    </p>
    <p>
      
    </p>
    <p>
      template_prefix=&quot;Template:&quot;
    </p>
    <p>
      
    </p>
    <p>
      // scan map for Templates
    </p>
    <p>
      templateList=[]
    </p>
    <p>
      node.map.root.find({it.text.startsWith(template_prefix)}).each{
    </p>
    <p>
      &#160;&#160;&#160;&#160;templateList+=it.text
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      def s = new SwingBuilder()
    </p>
    <p>
      s.setVariable('myDialog-properties',[:])
    </p>
    <p>
      def vars = s.variables
    </p>
    <p>
      def dial = s.dialog(title:'Template Picker', id:'myDialog', minimumSize: [300,50], modal:true, locationRelativeTo:ui.frame, owner:ui.frame, defaultCloseOperation:JFrame.DISPOSE_ON_CLOSE, pack:true, show:true) {
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;panel() {
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;boxLayout(axis:BXL.Y_AXIS)
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;panel(alignmentX:0f) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;flowLayout(alignment:FL.LEFT)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;label('Choose Template')
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;comboBox(id:'type', items:templateList)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;panel(alignmentX:0f) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;flowLayout(alignment:FL.RIGHT)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;button(action: action(name: 'OK', defaultButton: true, mnemonic: 'O',
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;closure: {vars.ok = true; dispose()}))
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;button(action: action(name: 'Cancel', mnemonic: 'C', closure: {dispose()}))
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      }
    </p>
    <p>
      if (vars.ok){
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;c.find{
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;it.text == vars.type.selectedItem
    </p>
    <p>
      &#160;&#160;&#160;&#160;}.each {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;def Copy = node.appendBranch(it)
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// create attributes in the new node (comment these lines out if not required)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;type=vars.type.selectedItem
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;plen=template_prefix.length()
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;type=type[plen+1..plen+type.length()-plen-1]
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Copy.text=type
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Copy.attributes.set(&quot;type&quot;, type)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;def today = new Date()
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;def formattedDate = today.format('dd-MM-yy')
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Copy.attributes.set(&quot;created&quot;, formattedDate)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// end of attributes creation
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      }
    </p>
    <p>
      //JOptionPane.showMessageDialog(ui.frame, 'REMINDER: Dates can be quickly inserted in each node with the Insert Date feature in property panel', &quot;Template Picker&quot; , JOptionPane.INFORMATION_MESSAGE);
    </p>
    <p>
      
    </p>
  </body>
</html>

</richcontent>
</node>
<node TEXT="In Tools Menu, Open User Directory" ID="ID_1148081275" CREATED="1484944663217" MODIFIED="1484944684697"/>
<node TEXT="Copy the file &quot;createnodefromtemplate.groovy&quot; to the User Directory" ID="ID_1506268800" CREATED="1484946304981" MODIFIED="1484946342223"/>
</node>
<node TEXT="templates" FOLDED="true" POSITION="left" ID="ID_96126612" CREATED="1484944710026" MODIFIED="1484945271564">
<edge COLOR="#808080"/>
<node TEXT="Template: todo" FOLDED="true" ID="ID_1285857830" CREATED="1484862395913" MODIFIED="1484950547065" HGAP_QUANTITY="30.0 px" VSHIFT_QUANTITY="-40.0 px" BACKGROUND_COLOR="#ffcccc">
<attribute_layout NAME_WIDTH="57.5999972534181 pt" VALUE_WIDTH="62.099997038841394 pt"/>
<attribute NAME="start" VALUE="01-03-17" OBJECT="org.freeplane.features.format.FormattedDate|2017-03-01T00:00+1100|dd-MM-yy"/>
<attribute NAME="status" VALUE="open" OBJECT="org.freeplane.features.format.FormattedObject|open|number:decimal:#0.####"/>
<attribute NAME="EffortLeft" VALUE="14" OBJECT="org.freeplane.features.format.FormattedNumber|14"/>
<attribute NAME="EstComplete" VALUE="=node[&apos;start&apos;].to.date+node[&apos;EffortLeft&apos;].to.num.intValue()" OBJECT="org.freeplane.features.format.FormattedFormula|=node[&apos;start&apos;].to.date+node[&apos;EffortLeft&apos;].to.num.intValue()|dd-MM-yy"/>
<richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Task description goes here
    </p>
  </body>
</html>
</richcontent>
<cloud COLOR="#ffcccc" SHAPE="ARC"/>
<node TEXT="=&quot;Expected by ${(parent[&apos;start&apos;].to.date+parent[&apos;EffortLeft&apos;].to.num.intValue()).format(&apos;dd-MM-yy&apos;)}&quot;" ID="ID_833256455" CREATED="1484863179503" MODIFIED="1484872389409" FORMAT=" dd-MM-yy"/>
</node>
<node TEXT="Template: meeting" LOCALIZED_STYLE_REF="defaultstyle.details" FOLDED="true" ID="ID_45782366" CREATED="1484862395913" MODIFIED="1484950595215" HGAP_QUANTITY="30.0 px" VSHIFT_QUANTITY="-40.0 px" BACKGROUND_COLOR="#ffff66">
<attribute NAME="meetingType" VALUE="committee"/>
<attribute NAME="date" VALUE="01-01-17" OBJECT="org.freeplane.features.format.FormattedObject|01-01-17|date:date:dd-MM-yy"/>
<attribute NAME="MinutesDone" VALUE="no" OBJECT="org.freeplane.features.format.FormattedObject|no|number:decimal:#0.####"/>
<cloud COLOR="#ffff99" SHAPE="ARC"/>
<node TEXT="Attendees" FOLDED="true" ID="ID_1628621423" CREATED="1484905967207" MODIFIED="1484905976417">
<node TEXT="John Smith" ID="ID_1618064780" CREATED="1484905977384" MODIFIED="1484905992910"/>
<node TEXT="Mary Jones" ID="ID_214425488" CREATED="1484905993893" MODIFIED="1484905997961"/>
</node>
<node TEXT="Topics" FOLDED="true" ID="ID_1200141474" CREATED="1484906002634" MODIFIED="1484906005701">
<node TEXT="Topic 1" ID="ID_633148348" CREATED="1484906007786" MODIFIED="1484906013667"/>
<node TEXT="Topic 2" ID="ID_412310039" CREATED="1484906009433" MODIFIED="1484906022519"/>
<node TEXT="Topic 3" ID="ID_798960072" CREATED="1484906015106" MODIFIED="1484906027486"/>
</node>
<node TEXT="Actions" FOLDED="true" ID="ID_619509773" CREATED="1484906048423" MODIFIED="1484906051151">
<node TEXT="perform action 1" ID="ID_1246755539" CREATED="1484906052754" MODIFIED="1484908209249">
<attribute NAME="Who" VALUE="JS"/>
<attribute NAME="Due" VALUE="01-01-17" OBJECT="org.freeplane.features.format.FormattedDate|2017-01-01T00:00+1100|dd-MM-yy"/>
<attribute NAME="Complete" VALUE="no"/>
</node>
<node TEXT="perform action 2" ID="ID_175017245" CREATED="1484906052754" MODIFIED="1484908402647">
<attribute NAME="Who" VALUE="JS"/>
<attribute NAME="Due" VALUE="01-01-17" OBJECT="org.freeplane.features.format.FormattedDate|2017-01-01T00:00+1100|dd-MM-yy"/>
<attribute NAME="Complete" VALUE="yes"/>
</node>
<node TEXT="perform action 3" ID="ID_654786697" CREATED="1484906052754" MODIFIED="1484908266075">
<attribute NAME="Who" VALUE="MJ"/>
<attribute NAME="Due" VALUE="01-01-17" OBJECT="org.freeplane.features.format.FormattedDate|2017-01-01T00:00+1100|dd-MM-yy"/>
<attribute NAME="Complete" VALUE="no"/>
</node>
<node TEXT="Outstanding Actions Report" FOLDED="true" ID="ID_1175505787" CREATED="1484906315766" MODIFIED="1484909221741">
<attribute NAME="script1" VALUE="node.children.each{&#xa;    it.delete()&#xa;}&#xa;report=&apos;&apos;&#xa;parent.children.each{&#xa;    if (!it.text.endsWith(&apos;Report&apos;)) {&#xa;        if (it[&apos;Complete&apos;]!=&apos;yes&apos;) {&#xa;            reportLine=it[&apos;Who&apos;].to.text+&apos; - Due &apos;+it[&apos;Due&apos;].to.date.format(&apos;dd-MM-yy&apos;)+&apos; &apos;+it.text&#xa;            newnode=node.createChild(reportLine)&#xa;            report+=reportLine+&apos;\n&apos;&#xa;        }&#xa;    }&#xa;}&#xa;node.detailsText=&apos;Outstanding Actions Report\n&apos;+report"/>
<node TEXT="JS - Due 01-01-17 perform action 1" ID="ID_1522986698" CREATED="1484909161517" MODIFIED="1484909161517"/>
<node TEXT="MJ - Due 01-01-17 perform action 3" ID="ID_610904538" CREATED="1484909161518" MODIFIED="1484909161518"/>
</node>
<node TEXT="Completed Actions Report" FOLDED="true" ID="ID_43183033" CREATED="1484906315766" MODIFIED="1484909254472">
<attribute NAME="script1" VALUE="node.children.each{&#xa;    it.delete()&#xa;}&#xa;report=&apos;&apos;&#xa;parent.children.each{&#xa;    if (!it.text.endsWith(&apos;Report&apos;)) {&#xa;        if (it[&apos;Complete&apos;]==&apos;yes&apos;) {&#xa;            reportLine=it[&apos;Who&apos;].to.text+&apos; - Due &apos;+it[&apos;Due&apos;].to.date.format(&apos;dd-MM-yy&apos;)+&apos; Done(&apos;+it[&apos;Complete&apos;]+&apos;) &apos;+it.text&#xa;            newnode=node.createChild(reportLine)&#xa;            report+=reportLine+&apos;\n&apos;&#xa;        }&#xa;    }&#xa;}&#xa;node.detailsText=&apos;Completed Actions Report\n&apos;+report"/>
<node TEXT="JS - Due 01-01-17 Done(yes) perform action 2" ID="ID_224175364" CREATED="1484909078802" MODIFIED="1484909078803"/>
</node>
</node>
</node>
<node TEXT="Template: Outstanding ToDos Report" FOLDED="true" ID="ID_1533924786" CREATED="1484906315766" MODIFIED="1484950634161" BACKGROUND_COLOR="#99ff99">
<attribute NAME="script1" VALUE="node.children.each{&#xa;    it.delete()&#xa;}&#xa;report=&apos;&apos;&#xa;parent.children.each{&#xa;    if (!it.text.endsWith(&apos;Report&apos;)) {&#xa;        if (it[&apos;status&apos;]==&apos;open&apos;) {&#xa;            reportLine=&apos;Due &apos;+it[&apos;EstComplete&apos;].to.date.format(&apos;dd-MM-yy&apos;)+&apos; &apos;+it.text&#xa;            newnode=node.createChild(reportLine)&#xa;            report+=reportLine+&apos;\n&apos;&#xa;        }&#xa;    }&#xa;}&#xa;node.detailsText=&apos;Outstanding ToDos Report\n&apos;+report"/>
<richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      To Run
    </p>
    <p>
      Choose <b>Tools/Scripts/</b>
    </p>
    <p>
      Choose <b><i>Execute selected nodes script</i></b>
    </p>
  </body>
</html>

</richcontent>
<cloud COLOR="#99ff99" SHAPE="ARC"/>
<node TEXT="Due 15-03-17 Template: todo" ID="ID_1235137354" CREATED="1484911084387" MODIFIED="1484911084388"/>
</node>
<node TEXT="Template: Outstanding Actions Report" ID="ID_1915146044" CREATED="1484906315766" MODIFIED="1484950799561" BACKGROUND_COLOR="#99ff99">
<attribute NAME="script1" VALUE="node.children.each{&#xa;    it.delete()&#xa;}&#xa;report=&apos;&apos;&#xa;parent.children.each{&#xa;    if (!it.text.endsWith(&apos;Report&apos;)) {&#xa;        if (it[&apos;Complete&apos;]!=&apos;yes&apos;) {&#xa;            reportLine=it[&apos;Who&apos;].to.text+&apos; - Due &apos;+it[&apos;Due&apos;].to.date.format(&apos;dd-MM-yy&apos;)+&apos; &apos;+it.text&#xa;            newnode=node.createChild(reportLine)&#xa;            report+=reportLine+&apos;\n&apos;&#xa;        }&#xa;    }&#xa;}&#xa;node.detailsText=&apos;Outstanding Actions Report\n&apos;+report"/>
<richcontent TYPE="DETAILS" HIDDEN="true">

<html>
  <head>
    
  </head>
  <body>
    <p>
      To Run
    </p>
    <p>
      Choose <b>Tools/Scripts/</b>
    </p>
    <p>
      Choose <b><i>Execute selected nodes script</i></b>
    </p>
  </body>
</html>

</richcontent>
<cloud COLOR="#99ff99" SHAPE="ARC"/>
</node>
<node TEXT="Template: Completed Actions Report" ID="ID_1992642347" CREATED="1484906315766" MODIFIED="1484950803384" BACKGROUND_COLOR="#99ff99">
<attribute NAME="script1" VALUE="node.children.each{&#xa;    it.delete()&#xa;}&#xa;report=&apos;&apos;&#xa;parent.children.each{&#xa;    if (!it.text.endsWith(&apos;Report&apos;)) {&#xa;        if (it[&apos;Complete&apos;]==&apos;yes&apos;) {&#xa;            reportLine=it[&apos;Who&apos;].to.text+&apos; - Due &apos;+it[&apos;Due&apos;].to.date.format(&apos;dd-MM-yy&apos;)+&apos; Done(&apos;+it[&apos;Complete&apos;]+&apos;) &apos;+it.text&#xa;            newnode=node.createChild(reportLine)&#xa;            report+=reportLine+&apos;\n&apos;&#xa;        }&#xa;    }&#xa;}&#xa;node.detailsText=&apos;Completed Actions Report\n&apos;+report"/>
<richcontent TYPE="DETAILS" HIDDEN="true">

<html>
  <head>
    
  </head>
  <body>
    <p>
      To Run
    </p>
    <p>
      Choose <b>Tools/Scripts/</b>
    </p>
    <p>
      Choose <b><i>Execute selected nodes script</i></b>
    </p>
  </body>
</html>

</richcontent>
<cloud COLOR="#99ff99" SHAPE="ARC"/>
</node>
<node TEXT="Template: Pink Node" ID="ID_1513303334" CREATED="1484947723647" MODIFIED="1484950714961" BACKGROUND_COLOR="#ffcccc"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      I have a pinkish color
    </p>
  </body>
</html>
</richcontent>
<cloud COLOR="#ffcccc" SHAPE="ARC"/>
</node>
</node>
<node TEXT="Usage" POSITION="right" ID="ID_1834378993" CREATED="1484944711759" MODIFIED="1484950886849" MIN_WIDTH="1.7 cm" HGAP_QUANTITY="14.899999957084658 pt" VSHIFT_QUANTITY="24.299998841285763 pt">
<edge COLOR="#808080"/>
<node TEXT="Any node can be a &apos;Template&apos; node" ID="ID_136878334" CREATED="1484944723233" MODIFIED="1484944749551">
<node TEXT="Must have node text starting with &quot;Template:&quot;" ID="ID_398463709" CREATED="1484944768109" MODIFIED="1484944958329"/>
</node>
<node TEXT="Create one or more template nodes" ID="ID_288557351" CREATED="1484944810358" MODIFIED="1484944986040"/>
<node TEXT="Select any non-template node you wish to add a new node (based on a template)" ID="ID_933580154" CREATED="1484944996792" MODIFIED="1484945070064"/>
<node TEXT="From Tools/Scripts menu choose &apos;createnodefromtemplate&apos; script" ID="ID_1416778113" CREATED="1484945073200" MODIFIED="1484945114435"/>
<node TEXT="A dialog box appears and lists any templates you have created" ID="ID_1986146690" CREATED="1484945115163" MODIFIED="1484945156884"/>
<node TEXT="Once you have chosen a template a complete copy of the template node is created&#xa;and two attributes are added&#xa;1. &apos;type&apos; attribute has template name (with the &quot;Template:&quot; prefix removed)&#xa;2. &apos;created&apos; attribute with date node was created from the template" ID="ID_1238395351" CREATED="1484945179142" MODIFIED="1484947715588">
<node TEXT="Note this is a copy not a clone" ID="ID_657688996" CREATED="1484945238711" MODIFIED="1484945249494"/>
</node>
</node>
<node TEXT="tests" POSITION="left" ID="ID_554842639" CREATED="1484945472173" MODIFIED="1484945475812">
<edge COLOR="#808080"/>
<node TEXT="My todos" FOLDED="true" ID="ID_1873183287" CREATED="1484946480346" MODIFIED="1484946490556">
<node TEXT="Template: todo" ID="ID_96378588" CREATED="1484862395913" MODIFIED="1484950743041" HGAP_QUANTITY="30.0 px" VSHIFT_QUANTITY="-40.0 px">
<attribute_layout NAME_WIDTH="57.5999972534181 pt" VALUE_WIDTH="62.099997038841394 pt"/>
<attribute NAME="start" VALUE="01-03-17" OBJECT="org.freeplane.features.format.FormattedDate|2017-03-01T00:00+1100|dd-MM-yy"/>
<attribute NAME="status" VALUE="closed" OBJECT="org.freeplane.features.format.FormattedObject|closed|number:decimal:#0.####"/>
<attribute NAME="EffortLeft" VALUE="14" OBJECT="org.freeplane.features.format.FormattedNumber|14"/>
<attribute NAME="EstComplete" VALUE="=node[&apos;start&apos;].to.date+node[&apos;EffortLeft&apos;].to.num.intValue()" OBJECT="org.freeplane.features.format.FormattedFormula|=node[&apos;start&apos;].to.date+node[&apos;EffortLeft&apos;].to.num.intValue()|dd-MM-yy"/>
<attribute NAME="type" VALUE="todo"/>
<attribute NAME="created" VALUE="21-01-17"/>
<richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Task description goes here
    </p>
  </body>
</html>
</richcontent>
<cloud COLOR="#ffcccc" SHAPE="ARC"/>
<node TEXT="=&quot;Expected by ${(parent[&apos;start&apos;].to.date+parent[&apos;EffortLeft&apos;].to.num.intValue()).format(&apos;dd-MM-yy&apos;)}&quot;" ID="ID_687756150" CREATED="1484863179503" MODIFIED="1484872389409" FORMAT=" dd-MM-yy"/>
</node>
</node>
<node TEXT="My Meetings" FOLDED="true" ID="ID_854619108" CREATED="1484948119795" MODIFIED="1484948124298">
<node TEXT="meeting jan 2017" FOLDED="true" ID="ID_319501584" CREATED="1484862395913" MODIFIED="1484950765205" HGAP_QUANTITY="30.0 px" VSHIFT_QUANTITY="-40.0 px">
<attribute NAME="meetingType" VALUE="committee"/>
<attribute NAME="date" VALUE="01-01-17" OBJECT="org.freeplane.features.format.FormattedObject|01-01-17|date:date:dd-MM-yy"/>
<attribute NAME="MinutesDone" VALUE="no" OBJECT="org.freeplane.features.format.FormattedObject|no|number:decimal:#0.####"/>
<attribute NAME="type" VALUE="meeting"/>
<attribute NAME="created" VALUE="21-01-17"/>
<cloud COLOR="#ffff99" SHAPE="ARC"/>
<node TEXT="Attendees" ID="ID_1080200540" CREATED="1484905967207" MODIFIED="1484905976417">
<node TEXT="John Smith" ID="ID_1564590680" CREATED="1484905977384" MODIFIED="1484905992910"/>
<node TEXT="Mary Jones" ID="ID_1516723344" CREATED="1484905993893" MODIFIED="1484905997961"/>
<node TEXT="Glen Miller" ID="ID_1863332100" CREATED="1484948365666" MODIFIED="1484948374132"/>
</node>
<node TEXT="Topics" ID="ID_1577711891" CREATED="1484906002634" MODIFIED="1484906005701">
<node TEXT="Annual Budget" ID="ID_2037971" CREATED="1484906007786" MODIFIED="1484948384864"/>
<node TEXT="New Branch Opening" ID="ID_336080240" CREATED="1484906009433" MODIFIED="1484948396801"/>
<node TEXT="Personnel" ID="ID_43314913" CREATED="1484906015106" MODIFIED="1484948454805"/>
</node>
<node TEXT="Actions" FOLDED="true" ID="ID_506721411" CREATED="1484906048423" MODIFIED="1484906051151">
<node TEXT="Update Finances to end of year balances" ID="ID_1673555152" CREATED="1484906052754" MODIFIED="1484948551211">
<attribute NAME="Who" VALUE="JS"/>
<attribute NAME="Due" VALUE="01-01-17" OBJECT="org.freeplane.features.format.FormattedDate|2017-01-01T00:00+1100|dd-MM-yy"/>
<attribute NAME="Complete" VALUE="yes"/>
</node>
<node TEXT="Prepare relocation plan for new branch" ID="ID_1397900202" CREATED="1484906052754" MODIFIED="1484948520909">
<attribute NAME="Who" VALUE="GM"/>
<attribute NAME="Due" VALUE="01-01-17" OBJECT="org.freeplane.features.format.FormattedDate|2017-01-01T00:00+1100|dd-MM-yy"/>
<attribute NAME="Complete" VALUE="yes"/>
</node>
<node TEXT="Hire new branch manager" ID="ID_821182337" CREATED="1484906052754" MODIFIED="1484948544255">
<attribute NAME="Who" VALUE="MJ"/>
<attribute NAME="Due" VALUE="01-01-17" OBJECT="org.freeplane.features.format.FormattedDate|2017-01-01T00:00+1100|dd-MM-yy"/>
<attribute NAME="Complete" VALUE="no"/>
</node>
<node TEXT="Outstanding Actions Report" FOLDED="true" ID="ID_1883506620" CREATED="1484906315766" MODIFIED="1484948564191">
<attribute NAME="script1" VALUE="node.children.each{&#xa;    it.delete()&#xa;}&#xa;report=&apos;&apos;&#xa;parent.children.each{&#xa;    if (!it.text.endsWith(&apos;Report&apos;)) {&#xa;        if (it[&apos;Complete&apos;]!=&apos;yes&apos;) {&#xa;            reportLine=it[&apos;Who&apos;].to.text+&apos; - Due &apos;+it[&apos;Due&apos;].to.date.format(&apos;dd-MM-yy&apos;)+&apos; &apos;+it.text&#xa;            newnode=node.createChild(reportLine)&#xa;            report+=reportLine+&apos;\n&apos;&#xa;        }&#xa;    }&#xa;}&#xa;node.detailsText=&apos;Outstanding Actions Report\n&apos;+report"/>
<node TEXT="MJ - Due 01-01-17 Hire new branch manager" ID="ID_308635931" CREATED="1484948564171" MODIFIED="1484948564173"/>
</node>
<node TEXT="Completed Actions Report" FOLDED="true" ID="ID_15334519" CREATED="1484906315766" MODIFIED="1484948580400">
<attribute NAME="script1" VALUE="node.children.each{&#xa;    it.delete()&#xa;}&#xa;report=&apos;&apos;&#xa;parent.children.each{&#xa;    if (!it.text.endsWith(&apos;Report&apos;)) {&#xa;        if (it[&apos;Complete&apos;]==&apos;yes&apos;) {&#xa;            reportLine=it[&apos;Who&apos;].to.text+&apos; - Due &apos;+it[&apos;Due&apos;].to.date.format(&apos;dd-MM-yy&apos;)+&apos; Done(&apos;+it[&apos;Complete&apos;]+&apos;) &apos;+it.text&#xa;            newnode=node.createChild(reportLine)&#xa;            report+=reportLine+&apos;\n&apos;&#xa;        }&#xa;    }&#xa;}&#xa;node.detailsText=&apos;Completed Actions Report\n&apos;+report"/>
<node TEXT="JS - Due 01-01-17 Done(yes) Update Finances to end of year balances" ID="ID_585951391" CREATED="1484948580389" MODIFIED="1484948580397"/>
<node TEXT="GM - Due 01-01-17 Done(yes) Prepare relocation plan for new branch" ID="ID_872606231" CREATED="1484948580398" MODIFIED="1484948580400"/>
</node>
</node>
</node>
</node>
<node TEXT="miscellaneous" FOLDED="true" ID="ID_1831617561" CREATED="1484947805435" MODIFIED="1484947814843">
<node TEXT="Colored Nodes" ID="ID_638259255" CREATED="1484947996821" MODIFIED="1484948024452">
<node TEXT="Template: Pink Node" ID="ID_1533220123" CREATED="1484947723647" MODIFIED="1484950784591" BACKGROUND_COLOR="#ffcccc"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      I have a pinkish color
    </p>
  </body>
</html>
</richcontent>
<attribute NAME="type" VALUE="Pink Node"/>
<attribute NAME="created" VALUE="21-01-17"/>
<cloud COLOR="#ffcccc" SHAPE="ARC"/>
</node>
</node>
</node>
</node>
</node>
</map>
