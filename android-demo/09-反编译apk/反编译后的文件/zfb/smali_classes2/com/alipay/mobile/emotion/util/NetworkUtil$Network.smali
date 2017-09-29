.class public final enum Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;
.super Ljava/lang/Enum;
.source "NetworkUtil.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;

.field public static final enum NETWORK_MOBILE_FAST:Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;

.field public static final enum NETWORK_MOBILE_MIDDLE:Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;

.field public static final enum NETWORK_MOBILE_SLOW:Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;

.field public static final enum NETWORK_NONE:Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;

.field public static final enum NETWORK_WIFI:Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;

    const-string/jumbo v1, "NETWORK_WIFI"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;-><init>(Ljava/lang/String;I)V

    .line 41
    sput-object v0, Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;->NETWORK_WIFI:Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;

    .line 43
    new-instance v0, Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;

    const-string/jumbo v1, "NETWORK_MOBILE_FAST"

    invoke-direct {v0, v1, v3}, Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;-><init>(Ljava/lang/String;I)V

    .line 46
    sput-object v0, Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;->NETWORK_MOBILE_FAST:Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;

    .line 48
    new-instance v0, Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;

    const-string/jumbo v1, "NETWORK_MOBILE_MIDDLE"

    invoke-direct {v0, v1, v4}, Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;-><init>(Ljava/lang/String;I)V

    .line 51
    sput-object v0, Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;->NETWORK_MOBILE_MIDDLE:Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;

    .line 53
    new-instance v0, Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;

    const-string/jumbo v1, "NETWORK_MOBILE_SLOW"

    invoke-direct {v0, v1, v5}, Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;-><init>(Ljava/lang/String;I)V

    .line 56
    sput-object v0, Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;->NETWORK_MOBILE_SLOW:Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;

    .line 58
    new-instance v0, Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;

    const-string/jumbo v1, "NETWORK_NONE"

    invoke-direct {v0, v1, v6}, Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;-><init>(Ljava/lang/String;I)V

    .line 61
    sput-object v0, Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;->NETWORK_NONE:Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;

    .line 37
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;

    sget-object v1, Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;->NETWORK_WIFI:Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;->NETWORK_MOBILE_FAST:Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;->NETWORK_MOBILE_MIDDLE:Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;->NETWORK_MOBILE_SLOW:Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;->NETWORK_NONE:Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;->ENUM$VALUES:[Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;->ENUM$VALUES:[Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
