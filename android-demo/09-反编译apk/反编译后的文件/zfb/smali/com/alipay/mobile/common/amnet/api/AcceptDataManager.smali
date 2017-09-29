.class public interface abstract Lcom/alipay/mobile/common/amnet/api/AcceptDataManager;
.super Ljava/lang/Object;
.source "AcceptDataManager.java"


# virtual methods
.method public abstract addPushAcceptDataListener(Lcom/alipay/mobile/common/amnet/api/AcceptDataListener;)V
.end method

.method public abstract addRpcAcceptDataListener(Lcom/alipay/mobile/common/amnet/api/AcceptDataListener;)V
.end method

.method public abstract addSyncAcceptDataListener(Lcom/alipay/mobile/common/amnet/api/AcceptDataListener;)V
.end method

.method public abstract addSyncDirectAcceptDataListener(Lcom/alipay/mobile/common/amnet/api/AcceptDataListener;)V
.end method

.method public abstract notifyAcceptedData(Lcom/alipay/mobile/common/amnet/api/model/AcceptedData;)V
.end method

.method public abstract notifyRecycle(BLjava/util/Map;[B)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)V"
        }
    .end annotation
.end method

.method public abstract notifyReqPacketSize(BJII)V
.end method

.method public abstract removePushAcceptDataListener()V
.end method

.method public abstract removeRpcAcceptDataListener()V
.end method

.method public abstract removeSyncAcceptDataListener()V
.end method

.method public abstract removeSyncDirectAcceptDataListener()V
.end method
