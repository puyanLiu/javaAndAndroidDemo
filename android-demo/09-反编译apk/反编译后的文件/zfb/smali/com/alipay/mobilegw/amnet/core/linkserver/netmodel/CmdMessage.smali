.class public final Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdMessage;
.super Lcom/squareup/wire/Message;
.source "CmdMessage.java"


# static fields
.field public static final DEFAULT_CMDDATA:Lokio/ByteString;

.field public static final DEFAULT_CMDTYPE:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;

.field public static final TAG_CMDDATA:I = 0x2

.field public static final TAG_CMDTYPE:I = 0x1


# instance fields
.field public cmdData:Lokio/ByteString;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->BYTES:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public cmdType:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;->IpListUpdate:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdMessage;->DEFAULT_CMDTYPE:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;

    .line 21
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdMessage;->DEFAULT_CMDDATA:Lokio/ByteString;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdMessage;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    .line 34
    if-nez p1, :cond_0

    .line 37
    :goto_0
    return-void

    .line 35
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdMessage;->cmdType:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdMessage;->cmdType:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;

    .line 36
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdMessage;->cmdData:Lokio/ByteString;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdMessage;->cmdData:Lokio/ByteString;

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 57
    if-ne p1, p0, :cond_1

    .line 60
    :cond_0
    :goto_0
    return v0

    .line 58
    :cond_1
    instance-of v2, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdMessage;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 59
    :cond_2
    check-cast p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdMessage;

    .line 60
    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdMessage;->cmdType:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdMessage;->cmdType:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdMessage;->cmdData:Lokio/ByteString;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdMessage;->cmdData:Lokio/ByteString;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final fillTagValue(ILjava/lang/Object;)Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdMessage;
    .locals 0

    .prologue
    .line 43
    packed-switch p1, :pswitch_data_0

    .line 49
    :goto_0
    return-object p0

    .line 45
    :pswitch_0
    check-cast p2, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdMessage;->cmdType:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;

    goto :goto_0

    .line 48
    :pswitch_1
    check-cast p2, Lokio/ByteString;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdMessage;->cmdData:Lokio/ByteString;

    goto :goto_0

    .line 43
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

    .line 66
    iget v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdMessage;->hashCode:I

    .line 67
    if-nez v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdMessage;->cmdType:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdMessage;->cmdType:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;

    invoke-virtual {v0}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdType;->hashCode()I

    move-result v0

    .line 69
    :goto_0
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdMessage;->cmdData:Lokio/ByteString;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdMessage;->cmdData:Lokio/ByteString;

    invoke-virtual {v1}, Lokio/ByteString;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 70
    iput v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdMessage;->hashCode:I

    .line 72
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 68
    goto :goto_0
.end method
