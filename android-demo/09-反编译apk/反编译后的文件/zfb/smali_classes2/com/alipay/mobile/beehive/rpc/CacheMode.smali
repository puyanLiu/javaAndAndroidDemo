.class public final enum Lcom/alipay/mobile/beehive/rpc/CacheMode;
.super Ljava/lang/Enum;
.source "CacheMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/beehive/rpc/CacheMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CACHE_AND_RPC:Lcom/alipay/mobile/beehive/rpc/CacheMode;

.field private static final synthetic ENUM$VALUES:[Lcom/alipay/mobile/beehive/rpc/CacheMode;

.field public static final enum NONE:Lcom/alipay/mobile/beehive/rpc/CacheMode;

.field public static final enum RPC_OR_CACHE:Lcom/alipay/mobile/beehive/rpc/CacheMode;


# instance fields
.field private text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    new-instance v0, Lcom/alipay/mobile/beehive/rpc/CacheMode;

    const-string/jumbo v1, "NONE"

    const-string/jumbo v2, "none"

    invoke-direct {v0, v1, v3, v2}, Lcom/alipay/mobile/beehive/rpc/CacheMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/beehive/rpc/CacheMode;->NONE:Lcom/alipay/mobile/beehive/rpc/CacheMode;

    .line 12
    new-instance v0, Lcom/alipay/mobile/beehive/rpc/CacheMode;

    const-string/jumbo v1, "CACHE_AND_RPC"

    const-string/jumbo v2, "cacheAndRpc"

    invoke-direct {v0, v1, v4, v2}, Lcom/alipay/mobile/beehive/rpc/CacheMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/beehive/rpc/CacheMode;->CACHE_AND_RPC:Lcom/alipay/mobile/beehive/rpc/CacheMode;

    .line 14
    new-instance v0, Lcom/alipay/mobile/beehive/rpc/CacheMode;

    const-string/jumbo v1, "RPC_OR_CACHE"

    const-string/jumbo v2, "rpcOrCache"

    invoke-direct {v0, v1, v5, v2}, Lcom/alipay/mobile/beehive/rpc/CacheMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/beehive/rpc/CacheMode;->RPC_OR_CACHE:Lcom/alipay/mobile/beehive/rpc/CacheMode;

    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alipay/mobile/beehive/rpc/CacheMode;

    sget-object v1, Lcom/alipay/mobile/beehive/rpc/CacheMode;->NONE:Lcom/alipay/mobile/beehive/rpc/CacheMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/beehive/rpc/CacheMode;->CACHE_AND_RPC:Lcom/alipay/mobile/beehive/rpc/CacheMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobile/beehive/rpc/CacheMode;->RPC_OR_CACHE:Lcom/alipay/mobile/beehive/rpc/CacheMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alipay/mobile/beehive/rpc/CacheMode;->ENUM$VALUES:[Lcom/alipay/mobile/beehive/rpc/CacheMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput-object p3, p0, Lcom/alipay/mobile/beehive/rpc/CacheMode;->text:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/alipay/mobile/beehive/rpc/CacheMode;
    .locals 5

    .prologue
    .line 24
    if-eqz p0, :cond_0

    .line 25
    invoke-static {}, Lcom/alipay/mobile/beehive/rpc/CacheMode;->values()[Lcom/alipay/mobile/beehive/rpc/CacheMode;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_1

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "No constant with text "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_1
    aget-object v3, v1, v0

    .line 26
    iget-object v4, v3, Lcom/alipay/mobile/beehive/rpc/CacheMode;->text:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 27
    return-object v3

    .line 25
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/beehive/rpc/CacheMode;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/alipay/mobile/beehive/rpc/CacheMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/rpc/CacheMode;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/beehive/rpc/CacheMode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alipay/mobile/beehive/rpc/CacheMode;->ENUM$VALUES:[Lcom/alipay/mobile/beehive/rpc/CacheMode;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/mobile/beehive/rpc/CacheMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
