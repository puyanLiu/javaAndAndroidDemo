.class public final enum Lcom/alipay/mobile/beehive/rpc/LoadingMode;
.super Ljava/lang/Enum;
.source "LoadingMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/beehive/rpc/LoadingMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BLOCK_LOADING:Lcom/alipay/mobile/beehive/rpc/LoadingMode;

.field public static final enum CANCELABLE_EXIT_LOADING:Lcom/alipay/mobile/beehive/rpc/LoadingMode;

.field public static final enum CANCELABLE_LOADING:Lcom/alipay/mobile/beehive/rpc/LoadingMode;

.field private static final synthetic ENUM$VALUES:[Lcom/alipay/mobile/beehive/rpc/LoadingMode;

.field public static final enum SILENT:Lcom/alipay/mobile/beehive/rpc/LoadingMode;

.field public static final enum TITLEBAR_LOADING:Lcom/alipay/mobile/beehive/rpc/LoadingMode;


# instance fields
.field private text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, Lcom/alipay/mobile/beehive/rpc/LoadingMode;

    const-string/jumbo v1, "SILENT"

    const-string/jumbo v2, "silent"

    invoke-direct {v0, v1, v3, v2}, Lcom/alipay/mobile/beehive/rpc/LoadingMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/beehive/rpc/LoadingMode;->SILENT:Lcom/alipay/mobile/beehive/rpc/LoadingMode;

    .line 11
    new-instance v0, Lcom/alipay/mobile/beehive/rpc/LoadingMode;

    const-string/jumbo v1, "TITLEBAR_LOADING"

    const-string/jumbo v2, "titleBarLoading"

    invoke-direct {v0, v1, v4, v2}, Lcom/alipay/mobile/beehive/rpc/LoadingMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/beehive/rpc/LoadingMode;->TITLEBAR_LOADING:Lcom/alipay/mobile/beehive/rpc/LoadingMode;

    .line 13
    new-instance v0, Lcom/alipay/mobile/beehive/rpc/LoadingMode;

    const-string/jumbo v1, "CANCELABLE_LOADING"

    const-string/jumbo v2, "cancelableLoading"

    invoke-direct {v0, v1, v5, v2}, Lcom/alipay/mobile/beehive/rpc/LoadingMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/beehive/rpc/LoadingMode;->CANCELABLE_LOADING:Lcom/alipay/mobile/beehive/rpc/LoadingMode;

    .line 15
    new-instance v0, Lcom/alipay/mobile/beehive/rpc/LoadingMode;

    const-string/jumbo v1, "CANCELABLE_EXIT_LOADING"

    const-string/jumbo v2, "cancelableExitLoading"

    invoke-direct {v0, v1, v6, v2}, Lcom/alipay/mobile/beehive/rpc/LoadingMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/beehive/rpc/LoadingMode;->CANCELABLE_EXIT_LOADING:Lcom/alipay/mobile/beehive/rpc/LoadingMode;

    .line 17
    new-instance v0, Lcom/alipay/mobile/beehive/rpc/LoadingMode;

    const-string/jumbo v1, "BLOCK_LOADING"

    const-string/jumbo v2, "blockLoading"

    invoke-direct {v0, v1, v7, v2}, Lcom/alipay/mobile/beehive/rpc/LoadingMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/beehive/rpc/LoadingMode;->BLOCK_LOADING:Lcom/alipay/mobile/beehive/rpc/LoadingMode;

    .line 7
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alipay/mobile/beehive/rpc/LoadingMode;

    sget-object v1, Lcom/alipay/mobile/beehive/rpc/LoadingMode;->SILENT:Lcom/alipay/mobile/beehive/rpc/LoadingMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/beehive/rpc/LoadingMode;->TITLEBAR_LOADING:Lcom/alipay/mobile/beehive/rpc/LoadingMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobile/beehive/rpc/LoadingMode;->CANCELABLE_LOADING:Lcom/alipay/mobile/beehive/rpc/LoadingMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/mobile/beehive/rpc/LoadingMode;->CANCELABLE_EXIT_LOADING:Lcom/alipay/mobile/beehive/rpc/LoadingMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/mobile/beehive/rpc/LoadingMode;->BLOCK_LOADING:Lcom/alipay/mobile/beehive/rpc/LoadingMode;

    aput-object v1, v0, v7

    sput-object v0, Lcom/alipay/mobile/beehive/rpc/LoadingMode;->ENUM$VALUES:[Lcom/alipay/mobile/beehive/rpc/LoadingMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput-object p3, p0, Lcom/alipay/mobile/beehive/rpc/LoadingMode;->text:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/alipay/mobile/beehive/rpc/LoadingMode;
    .locals 5

    .prologue
    .line 26
    if-eqz p0, :cond_0

    .line 27
    invoke-static {}, Lcom/alipay/mobile/beehive/rpc/LoadingMode;->values()[Lcom/alipay/mobile/beehive/rpc/LoadingMode;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_1

    .line 33
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

    .line 27
    :cond_1
    aget-object v3, v1, v0

    .line 28
    iget-object v4, v3, Lcom/alipay/mobile/beehive/rpc/LoadingMode;->text:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 29
    return-object v3

    .line 27
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/beehive/rpc/LoadingMode;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/alipay/mobile/beehive/rpc/LoadingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/rpc/LoadingMode;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/beehive/rpc/LoadingMode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alipay/mobile/beehive/rpc/LoadingMode;->ENUM$VALUES:[Lcom/alipay/mobile/beehive/rpc/LoadingMode;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/mobile/beehive/rpc/LoadingMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
