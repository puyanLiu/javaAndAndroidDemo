.class public final enum Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;
.super Ljava/lang/Enum;
.source "NetworkUtil.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum NETWORK_MOBILE_FAST:Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;

.field public static final enum NETWORK_MOBILE_MIDDLE:Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;

.field public static final enum NETWORK_MOBILE_SLOW:Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;

.field public static final enum NETWORK_NO_CONNECTION:Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;

.field public static final enum NETWORK_TYPE_UNKNOWN:Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;

.field public static final enum NETWORK_WIFI:Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;

.field private static final synthetic a:[Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    new-instance v0, Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;

    const-string/jumbo v1, "NETWORK_WIFI"

    invoke-direct {v0, v1, v3}, Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;-><init>(Ljava/lang/String;I)V

    .line 39
    sput-object v0, Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;->NETWORK_WIFI:Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;

    .line 41
    new-instance v0, Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;

    const-string/jumbo v1, "NETWORK_MOBILE_FAST"

    invoke-direct {v0, v1, v4}, Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;-><init>(Ljava/lang/String;I)V

    .line 44
    sput-object v0, Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;->NETWORK_MOBILE_FAST:Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;

    .line 46
    new-instance v0, Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;

    const-string/jumbo v1, "NETWORK_MOBILE_MIDDLE"

    invoke-direct {v0, v1, v5}, Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;-><init>(Ljava/lang/String;I)V

    .line 49
    sput-object v0, Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;->NETWORK_MOBILE_MIDDLE:Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;

    .line 51
    new-instance v0, Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;

    const-string/jumbo v1, "NETWORK_MOBILE_SLOW"

    invoke-direct {v0, v1, v6}, Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;-><init>(Ljava/lang/String;I)V

    .line 54
    sput-object v0, Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;->NETWORK_MOBILE_SLOW:Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;

    .line 56
    new-instance v0, Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;

    const-string/jumbo v1, "NETWORK_NO_CONNECTION"

    invoke-direct {v0, v1, v7}, Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;-><init>(Ljava/lang/String;I)V

    .line 59
    sput-object v0, Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;->NETWORK_NO_CONNECTION:Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;

    .line 61
    new-instance v0, Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;

    const-string/jumbo v1, "NETWORK_TYPE_UNKNOWN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;-><init>(Ljava/lang/String;I)V

    .line 64
    sput-object v0, Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;->NETWORK_TYPE_UNKNOWN:Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;

    .line 35
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;

    sget-object v1, Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;->NETWORK_WIFI:Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;->NETWORK_MOBILE_FAST:Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;->NETWORK_MOBILE_MIDDLE:Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;->NETWORK_MOBILE_SLOW:Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;->NETWORK_NO_CONNECTION:Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;->NETWORK_TYPE_UNKNOWN:Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;->a:[Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;->a:[Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
