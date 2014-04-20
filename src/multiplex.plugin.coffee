# Export Plugin
module.exports = (BasePlugin) ->
    # Define Plugin
    class MultiplexPlugin extends BasePlugin
        # Plugin name
        name: 'Multiplex'
        #populateCollectionsBefore: ()->
        populateCollections: (opts,next) ->
            console.log("length ===== ")
            console.log(@getCollection("documents").length)
            # db = @docpad.getDatabase()
            # db.forEach(document) ->
            #     newDoc = docpad.cloneModel(document)
            #     newDoc
            #     db.add(newDoc)
            #     opts.collection?.add(newDoc)

        #conextualizeBefore: ()->


# JSON.parse(JSON.stringify(obj)) to




# docpad.createDocument(documentAttributes)