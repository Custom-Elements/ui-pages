#ui-page
This is a single page in a set of `ui-pages`. It doesn't really have
any behavior of its own, you just set it active in a set.

    require 'ui-styles/animations'
    Polymer 'ui-page',

##Events
###showing
Fired when the animation has hidden, indicating it is time to actually show the
active page.

##Attributes and Change Handlers
###value
This is a tag value for the page, when the containing `ui-pages` has this
tag set as its `value`, this page will be the active one in the set.
###active
When present, this is a real visible page.

##Methods

      hide: (callback) ->
        if not @hasAttribute 'active'
          callback?()
          return
        @fadeOut =>
          @removeAttribute 'active'
          callback?()

      show: (callback) ->
        if @hasAttribute 'active'
          callback?()
          return
        @setAttribute 'active', ''
        @fadeIn =>
          callback?()

##Event Handlers

##Polymer Lifecycle

      created: ->

      ready: ->

      attached: ->

      domReady: ->

      detached: ->

      publish:
        value:
          reflect: true
