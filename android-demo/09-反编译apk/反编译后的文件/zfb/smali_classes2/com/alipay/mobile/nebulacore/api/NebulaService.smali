.class public interface abstract Lcom/alipay/mobile/nebulacore/api/NebulaService;
.super Ljava/lang/Object;
.source "NebulaService.java"

# interfaces
.implements Lcom/alipay/mobile/h5container/api/H5CoreNode;


# virtual methods
.method public abstract addSession(Lcom/alipay/mobile/h5container/api/H5Session;)Z
.end method

.method public abstract createPage(Lcom/alipay/mobile/h5container/api/H5Context;Lcom/alipay/mobile/h5container/api/H5Bundle;)Lcom/alipay/mobile/h5container/api/H5Page;
.end method

.method public abstract exitService()Z
.end method

.method public abstract getSession(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Session;
.end method

.method public abstract getSessions()Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack",
            "<",
            "Lcom/alipay/mobile/h5container/api/H5Session;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTopSession()Lcom/alipay/mobile/h5container/api/H5Session;
.end method

.method public abstract removeSession(Ljava/lang/String;)Z
.end method

.method public abstract startPage(Lcom/alipay/mobile/h5container/api/H5Context;Lcom/alipay/mobile/h5container/api/H5Bundle;)Z
.end method
