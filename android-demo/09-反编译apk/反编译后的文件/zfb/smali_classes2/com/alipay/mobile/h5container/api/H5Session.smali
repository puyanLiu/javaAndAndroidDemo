.class public interface abstract Lcom/alipay/mobile/h5container/api/H5Session;
.super Ljava/lang/Object;
.source "H5Session.java"

# interfaces
.implements Lcom/alipay/mobile/h5container/api/H5CoreNode;


# virtual methods
.method public abstract addListener(Lcom/alipay/mobile/h5container/api/H5Listener;)V
.end method

.method public abstract addPage(Lcom/alipay/mobile/h5container/api/H5Page;)Z
.end method

.method public abstract exitSession()Z
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getPages()Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack",
            "<",
            "Lcom/alipay/mobile/h5container/api/H5Page;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getParams()Landroid/os/Bundle;
.end method

.method public abstract getScenario()Lcom/alipay/mobile/h5container/api/H5Scenario;
.end method

.method public abstract getTopPage()Lcom/alipay/mobile/h5container/api/H5Page;
.end method

.method public abstract removeListener(Lcom/alipay/mobile/h5container/api/H5Listener;)V
.end method

.method public abstract removePage(Lcom/alipay/mobile/h5container/api/H5Page;)Z
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setScenario(Lcom/alipay/mobile/h5container/api/H5Scenario;)V
.end method
