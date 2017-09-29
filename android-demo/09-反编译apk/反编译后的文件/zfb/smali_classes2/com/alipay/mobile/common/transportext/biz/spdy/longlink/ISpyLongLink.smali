.class public interface abstract Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/ISpyLongLink;
.super Ljava/lang/Object;
.source "ISpyLongLink.java"


# virtual methods
.method public abstract asynConnect()V
.end method

.method public abstract connect()Z
.end method

.method public abstract disconnect()V
.end method

.method public abstract isConnected()Z
.end method

.method public abstract notifyNetworkConnectivity(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public abstract notifyPingResponse()V
.end method

.method public abstract register(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/ISpdyCallBack;)Z
.end method

.method public abstract unregister()Z
.end method

.method public abstract writeData([B)I
.end method
