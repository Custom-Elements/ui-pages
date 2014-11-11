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
        for page in @querySelectorAll('ui-page')
          anythingActive ||= page.hasAttribute 'active'
          if page.value isnt @value and page.hasAttribute 'active'
            page.hide @showActive.bind(@)
        @showActive() unless anythingActive

##Methods

##Event Handlers

      showActive: ->
        for page in @querySelectorAll('ui-page')
          if page.value is @value
            page.show()

##Polymer Lifecycle

      created: ->

      ready: ->

      attached: ->

      domReady: ->

      detached: ->

      publish:
        value:
          reflect: true
