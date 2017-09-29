.class public final enum Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;
.super Ljava/lang/Enum;
.source "CmdType.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;

.field public static final enum ConnectionDowngrade:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;

.field public static final enum Crash:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;

.field public static final enum IpListUpdate:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;

.field public static final enum ReConnect:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 9
    new-instance v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;

    const-string/jumbo v1, "IpListUpdate"

    invoke-direct {v0, v1, v5, v2}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;->IpListUpdate:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;

    .line 10
    new-instance v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;

    const-string/jumbo v1, "ReConnect"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;->ReConnect:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;

    .line 11
    new-instance v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;

    const-string/jumbo v1, "ConnectionDowngrade"

    invoke-direct {v0, v1, v3, v4}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;->ConnectionDowngrade:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;

    .line 12
    new-instance v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;

    const-string/jumbo v1, "Crash"

    invoke-direct {v0, v1, v4, v6}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;->Crash:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;

    .line 7
    new-array v0, v6, [Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;

    sget-object v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;->IpListUpdate:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;->ReConnect:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;->ConnectionDowngrade:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;->Crash:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;->$VALUES:[Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p3, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;->value:I

    .line 18
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;->$VALUES:[Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;

    invoke-virtual {v0}, [Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;->value:I

    return v0
.end method
