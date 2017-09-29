.class public final Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdListMessageAck;
.super Lcom/squareup/wire/Message;
.source "CmdListMessageAck.java"


# static fields
.field public static final DEFAULT_SEQ:Ljava/lang/Integer;

.field public static final TAG_SEQ:I = 0x1


# instance fields
.field public seq:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
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

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdListMessageAck;->DEFAULT_SEQ:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdListMessageAck;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    .line 24
    if-nez p1, :cond_0

    .line 26
    :goto_0
    return-void

    .line 25
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdListMessageAck;->seq:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdListMessageAck;->seq:Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 43
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    .line 45
    :goto_0
    return v0

    .line 44
    :cond_0
    instance-of v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdListMessageAck;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdListMessageAck;->seq:Ljava/lang/Integer;

    check-cast p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdListMessageAck;

    iget-object v1, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdListMessageAck;->seq:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdListMessageAck;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final fillTagValue(ILjava/lang/Object;)Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdListMessageAck;
    .locals 0

    .prologue
    .line 32
    packed-switch p1, :pswitch_data_0

    .line 35
    :goto_0
    return-object p0

    .line 34
    :pswitch_0
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdListMessageAck;->seq:Ljava/lang/Integer;

    goto :goto_0

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdListMessageAck;->hashCode:I

    .line 51
    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdListMessageAck;->seq:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdListMessageAck;->seq:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdListMessageAck;->hashCode:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
