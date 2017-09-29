.class public interface abstract Lcom/alipay/mobile/h5container/api/H5PluginManager;
.super Ljava/lang/Object;
.source "H5PluginManager.java"

# interfaces
.implements Lcom/alipay/mobile/h5container/api/H5Plugin;


# virtual methods
.method public abstract canHandle(Ljava/lang/String;)Z
.end method

.method public abstract register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z
.end method

.method public abstract register(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/h5container/api/H5Plugin;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract unregister(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z
.end method

.method public abstract unregister(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/h5container/api/H5Plugin;",
            ">;)Z"
        }
    .end annotation
.end method
