.class public abstract Lcom/alipay/mobile/framework/service/notify/NotifyBellService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;
.source "NotifyBellService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract isBusinessNotifyOpen()Z
.end method

.method public abstract isOpenSound()Z
.end method

.method public abstract isOpenVibration()Z
.end method

.method public abstract isSocialNotifyOpen()Z
.end method

.method public abstract playSoundFile(Ljava/lang/String;)V
.end method

.method public abstract playSystemAlert()V
.end method

.method public abstract playSystemVibrate()V
.end method

.method public abstract playSystemVibrate(J)V
.end method

.method public abstract setBusinessNotifyOpen(Z)V
.end method

.method public abstract setSocialNotifyOpen(Z)V
.end method

.method public abstract setSoundOpen(Z)V
.end method

.method public abstract setVibrationOpen(Z)V
.end method
