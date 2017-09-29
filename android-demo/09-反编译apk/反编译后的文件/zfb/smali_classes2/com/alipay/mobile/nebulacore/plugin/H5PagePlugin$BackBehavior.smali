.class final enum Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$BackBehavior;
.super Ljava/lang/Enum;
.source "H5PagePlugin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$BackBehavior;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BACK:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$BackBehavior;

.field public static final enum POP:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$BackBehavior;

.field private static final synthetic a:[Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$BackBehavior;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$BackBehavior;

    const-string/jumbo v1, "POP"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$BackBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$BackBehavior;->POP:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$BackBehavior;

    new-instance v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$BackBehavior;

    const-string/jumbo v1, "BACK"

    invoke-direct {v0, v1, v3}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$BackBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$BackBehavior;->BACK:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$BackBehavior;

    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$BackBehavior;

    sget-object v1, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$BackBehavior;->POP:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$BackBehavior;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$BackBehavior;->BACK:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$BackBehavior;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$BackBehavior;->a:[Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$BackBehavior;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$BackBehavior;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$BackBehavior;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$BackBehavior;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$BackBehavior;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$BackBehavior;->a:[Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$BackBehavior;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$BackBehavior;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
