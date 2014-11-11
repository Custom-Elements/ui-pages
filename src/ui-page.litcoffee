#ui-page
This is a single page in a set of `ui-pages`. It doesn't really have
any behavior of its own, you just set it active in a set.


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
        anim = @animate [
          {opacity: 1, transform: 'translateX(0)', offset: 0}
          {opacity: 0, transform: 'translateX(2%)', offset: 1}
        ], duration: 300
        anim.onfinish = =>
          @removeAttribute 'active'
          callback?()

      show: (callback) ->
        @setAttribute 'active', ''
        anim = @animate [
          {opacity: 0, transform: 'translateX(2%)', offset: 0}
          {opacity: 1, transform: 'translateX(0)', offset: 1}
        ], duration: 300
        anim.onfinish = =>
          callback?()

##Event Handlers

##Polymer Lifecycle

      created: ->

      ready: ->

      attached: ->
        @addEventListener 'transitionend', =>
          if not @active
            @fire "showing"

      domReady: ->

      detached: ->

      publish:
        value:
          reflect: true
