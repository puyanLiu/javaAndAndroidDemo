.class public Lcom/alipay/mobile/common/amnet/api/model/ChannelType;
.super Ljava/lang/Object;
.source "ChannelType.java"


# static fields
.field public static final CHANNLE_COMMON:B = 0x0t

.field public static final CHANNLE_PUSH:B = 0x4t

.field public static final CHANNLE_RPC:B = 0x1t

.field public static final CHANNLE_SYNC:B = 0x2t

.field public static final CHANNLE_SYNC_DIRECT:B = 0x3t


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isPush(B)Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRpc(B)Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 25
    if-ne p0, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSync(B)Z
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
