.class public interface abstract Lcom/alipay/mobile/common/amnet/ipcapi/pushproc/OutEventNotifyService;
.super Ljava/lang/Object;
.source "OutEventNotifyService.java"


# virtual methods
.method public abstract notifyAppLeaveEvent()V
.end method

.method public abstract notifyAppResumeEvent()V
.end method

.method public abstract notifyLoginOrLogoutEvent(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract notifySeceenOffEvent()V
.end method

.method public abstract notifySeceenOnEvent()V
.end method

.method public abstract notifyUpdateDnsInfo(BLjava/lang/String;)V
.end method

.method public abstract onSyncInitChanged(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
