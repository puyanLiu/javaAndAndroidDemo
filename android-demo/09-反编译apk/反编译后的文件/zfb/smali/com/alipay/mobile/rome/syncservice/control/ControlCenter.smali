.class public abstract Lcom/alipay/mobile/rome/syncservice/control/ControlCenter;
.super Ljava/lang/Object;
.source "ControlCenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract doLogin()V
.end method

.method public abstract doResume()Z
.end method

.method public doStartLink()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public doStartLinkOnResume()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public doStopLink()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public doUplinkData(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public abstract doUserLeaveHint()V
.end method

.method public abstract finish()V
.end method

.method public abstract init()V
.end method

.method public setUserInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-static {p1}, Lcom/alipay/mobile/rome/syncservice/a/b;->a(Ljava/lang/String;)V

    .line 30
    invoke-static {p2}, Lcom/alipay/mobile/rome/syncservice/a/b;->b(Ljava/lang/String;)V

    .line 31
    return-void
.end method
