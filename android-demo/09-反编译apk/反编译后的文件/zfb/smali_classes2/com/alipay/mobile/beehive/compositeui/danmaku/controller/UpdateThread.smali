.class public Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/UpdateThread;
.super Ljava/lang/Thread;
.source "UpdateThread.java"


# instance fields
.field volatile mIsQuited:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 8
    return-void
.end method


# virtual methods
.method public isQuited()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/UpdateThread;->mIsQuited:Z

    return v0
.end method

.method public quit()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/UpdateThread;->mIsQuited:Z

    .line 14
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/UpdateThread;->mIsQuited:Z

    if-eqz v0, :cond_0

    .line 24
    :cond_0
    return-void
.end method
