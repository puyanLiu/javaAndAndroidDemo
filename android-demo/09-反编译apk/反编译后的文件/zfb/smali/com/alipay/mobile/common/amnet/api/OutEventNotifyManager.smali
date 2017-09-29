.class public interface abstract Lcom/alipay/mobile/common/amnet/api/OutEventNotifyManager;
.super Ljava/lang/Object;
.source "OutEventNotifyManager.java"


# static fields
.field public static final DNS_TYPE_ALL:B = 0x3t

.field public static final DNS_TYPE_LONG:B = 0x1t

.field public static final DNS_TYPE_SHORT:B = 0x2t

.field public static final STATE_CLOSE_DELAY_HANDSHAKE:I = 0x2

.field public static final STATE_CLOSE_ORTT:I = 0x2

.field public static final STATE_CLOSE_SMART_HEARTBEAT:I = 0x2

.field public static final STATE_LOGIN:I = 0x1

.field public static final STATE_LOGOUT:I = 0x2

.field public static final STATE_MAIN_PROC_EXIST:I = 0x1

.field public static final STATE_MAIN_PROC_NO_EXIST:I = 0x2

.field public static final STATE_OPEN_DELAY_HANDSHAKE:I = 0x1

.field public static final STATE_OPEN_ORTT:I = 0x1

.field public static final STATE_OPEN_SMART_HEARTBEAT:I = 0x1


# virtual methods
.method public abstract notifyAppLeaveEvent()V
.end method

.method public abstract notifyAppResumeEvent()V
.end method

.method public abstract notifyLoginOrLogoutEvent(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract notifyMainProcExistStateChanged(I)V
.end method

.method public abstract notifySeceenOffEvent()V
.end method

.method public abstract notifySeceenOnEvent()V
.end method

.method public abstract notifySwitchDelayHandshake(I)V
.end method

.method public abstract notifySwitchOrtt(I)V
.end method

.method public abstract notifySwitchSmartHeartBeat(I)V
.end method

.method public abstract notifyUpdateDnsInfo(BLjava/lang/String;)V
.end method
