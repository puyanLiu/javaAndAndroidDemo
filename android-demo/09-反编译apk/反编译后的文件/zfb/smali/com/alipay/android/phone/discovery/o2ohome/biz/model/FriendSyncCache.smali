.class public Lcom/alipay/android/phone/discovery/o2ohome/biz/model/FriendSyncCache;
.super Ljava/lang/Object;
.source "FriendSyncCache.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field private bHasRedHot:Z

.field private friendImage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/FriendSyncCache;->bHasRedHot:Z

    .line 10
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 40
    const/4 v1, 0x0

    .line 42
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/FriendSyncCache;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    return-object v0

    .line 43
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public getFriendImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/FriendSyncCache;->friendImage:Ljava/lang/String;

    return-object v0
.end method

.method public isbHasRedHot()Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/FriendSyncCache;->bHasRedHot:Z

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/FriendSyncCache;->bHasRedHot:Z

    .line 36
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/FriendSyncCache;->friendImage:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setFriendImage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/FriendSyncCache;->friendImage:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setbHasRedHot(Z)V
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/FriendSyncCache;->bHasRedHot:Z

    .line 24
    return-void
.end method
