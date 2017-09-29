.class final enum Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;
.super Ljava/lang/Enum;
.source "H5PagePlugin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ERROR:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;

.field public static final enum FINISHED:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;

.field public static final enum LOADING:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;

.field public static final enum NONE:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;

.field public static final enum READY:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;

.field private static final synthetic a:[Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    new-instance v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;->NONE:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;

    new-instance v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;

    const-string/jumbo v1, "LOADING"

    invoke-direct {v0, v1, v3}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;->LOADING:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;

    new-instance v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;

    const-string/jumbo v1, "READY"

    invoke-direct {v0, v1, v4}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;->READY:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;

    new-instance v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;

    const-string/jumbo v1, "ERROR"

    invoke-direct {v0, v1, v5}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;->ERROR:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;

    new-instance v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;

    const-string/jumbo v1, "FINISHED"

    invoke-direct {v0, v1, v6}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;->FINISHED:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;

    .line 47
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;

    sget-object v1, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;->NONE:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;->LOADING:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;->READY:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;->ERROR:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;->FINISHED:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;->a:[Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;->a:[Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$PageStatus;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
