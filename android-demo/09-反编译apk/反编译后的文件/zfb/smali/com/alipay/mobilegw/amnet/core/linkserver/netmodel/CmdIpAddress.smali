.class public final Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdIpAddress;
.super Lcom/squareup/wire/Message;
.source "CmdIpAddress.java"


# static fields
.field public static final DEFAULT_IP:Ljava/lang/String; = ""

.field public static final DEFAULT_PORT:Ljava/lang/Integer;

.field public static final TAG_IP:I = 0x1

.field public static final TAG_PORT:I = 0x2


# instance fields
.field public ip:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public port:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdIpAddress;->DEFAULT_PORT:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdIpAddress;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    .line 30
    if-nez p1, :cond_0

    .line 33
    :goto_0
    return-void

    .line 31
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdIpAddress;->ip:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdIpAddress;->ip:Ljava/lang/String;

    .line 32
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdIpAddress;->port:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdIpAddress;->port:Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 53
    if-ne p1, p0, :cond_1

    .line 56
    :cond_0
    :goto_0
    return v0

    .line 54
    :cond_1
    instance-of v2, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdIpAddress;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 55
    :cond_2
    check-cast p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdIpAddress;

    .line 56
    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdIpAddress;->ip:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdIpAddress;->ip:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdIpAddress;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdIpAddress;->port:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdIpAddress;->port:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdIpAddress;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final fillTagValue(ILjava/lang/Object;)Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdIpAddress;
    .locals 0

    .prologue
    .line 39
    packed-switch p1, :pswitch_data_0

    .line 45
    :goto_0
    return-object p0

    .line 41
    :pswitch_0
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdIpAddress;->ip:Ljava/lang/String;

    goto :goto_0

    .line 44
    :pswitch_1
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdIpAddress;->port:Ljava/lang/Integer;

    goto :goto_0

    .line 39
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 62
    iget v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdIpAddress;->hashCode:I

    .line 63
    if-nez v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdIpAddress;->ip:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdIpAddress;->ip:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 65
    :goto_0
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdIpAddress;->port:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdIpAddress;->port:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 66
    iput v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdIpAddress;->hashCode:I

    .line 68
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 64
    goto :goto_0
.end method
