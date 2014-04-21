_ = require('underscore')
# Export Plugin
module.exports = (BasePlugin) ->
    # Define Plugin
    class MultiplexPlugin extends BasePlugin
        # Plugin name
        name: 'multiplex'
        #populateCollectionsBefore: (opts, next)->
        populateCollections: (opts,next) ->
            c = @docpad.getCollection("documents")
            db = @docpad.getDatabase()
            extra = []

            c.forEach (document) ->
                extensions = document.get('relativePath').replace(/^.*[\\\/]/, '').split('.').slice(1)

                if _.isEqual(extensions,["md"])
                    newDoc = docpad.cloneModel(document)
                    extra.push(newDoc)
                    newDoc.setMeta(
                        outExtension: 'html'
                        extensions: ['html', 'md']
                    )

            db.add(extra)
            next()