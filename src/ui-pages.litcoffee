#ui-pages
*TODO* tell me all about your element.


    Polymer 'ui-pages',

##Events

##Attributes and Change Handlers
###value
This reflects the current value of the current active page.
This is a great place to data bind to swap pages.

On a value change, the inactive tabs are hidden, and we wait
for an animation event to show the active tab.

      valueChanged: ->
        anythingActive = false
        for tab in @querySelectorAll('ui-page')
          anythingActive ||= tab.hasAttribute 'active'
          if tab.value isnt @value
            tab.removeAttribute 'active'
        @showActive() unless anythingActive

##Methods

##Event Handlers

      showActive: ->
        for tab in @querySelectorAll('ui-page')
          if tab.value is @value
            tab.setAttribute 'active', ''

##Polymer Lifecycle

      created: ->

      ready: ->

      attached: ->

      domReady: ->

      detached: ->
