.class public final enum Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;
.super Ljava/lang/Enum;
.source "ConnectInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DELETE:Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;

.field public static final enum GET:Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;

.field public static final enum NONE:Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;

.field public static final enum POST:Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;

.field public static final enum PUT:Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;

.field private static final synthetic a:[Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;->NONE:Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;

    new-instance v0, Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;

    const-string/jumbo v1, "GET"

    invoke-direct {v0, v1, v3}, Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;->GET:Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;

    new-instance v0, Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;

    const-string/jumbo v1, "PUT"

    invoke-direct {v0, v1, v4}, Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;->PUT:Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;

    new-instance v0, Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;

    const-string/jumbo v1, "POST"

    invoke-direct {v0, v1, v5}, Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;->POST:Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;

    new-instance v0, Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;

    const-string/jumbo v1, "DELETE"

    invoke-direct {v0, v1, v6}, Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;->DELETE:Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;

    .line 27
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;

    sget-object v1, Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;->NONE:Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;->GET:Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;->PUT:Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;->POST:Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;->DELETE:Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;->a:[Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;->a:[Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/mobile/nebulacore/download/ConnectInfo$HttpMethod;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
