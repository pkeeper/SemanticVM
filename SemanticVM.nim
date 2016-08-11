# Achivator main module
import config
import abstract_tree
import infoDB
#import interpretator
import view

when isMainModule:
    case mode:
        of XRayMode:
            let descrs = getTopMetaDescriptors() # FIXME: convert to seq of Nodes
            defaultView(descrs)
        else:
            raise newException(SystemError, "Wrong Mode")
