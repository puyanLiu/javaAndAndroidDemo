.class public final Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;
.super Lcom/squareup/wire/Message;
.source "NetTimeOutSetting.java"


# static fields
.field public static final DEFAULT_CONNNECT_TIME_OUT:Ljava/lang/Integer;

.field public static final DEFAULT_HANDSHAKE_TIME_OUT:Ljava/lang/Integer;

.field public static final TAG_CONNNECT_TIME_OUT:I = 0x1

.field public static final TAG_HANDSHAKE_TIME_OUT:I = 0x2


# instance fields
.field public connnect_time_out:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public handshake_time_out:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;->DEFAULT_CONNNECT_TIME_OUT:Ljava/lang/Integer;

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;->DEFAULT_HANDSHAKE_TIME_OUT:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    .line 29
    if-nez p1, :cond_0

    .line 32
    :goto_0
    return-void

    .line 30
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;->connnect_time_out:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;->connnect_time_out:Ljava/lang/Integer;

    .line 31
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;->handshake_time_out:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;->handshake_time_out:Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 52
    if-ne p1, p0, :cond_1

    .line 55
    :cond_0
    :goto_0
    return v0

    .line 53
    :cond_1
    instance-of v2, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 54
    :cond_2
    check-cast p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;

    .line 55
    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;->connnect_time_out:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;->connnect_time_out:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;->handshake_time_out:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;->handshake_time_out:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final fillTagValue(ILjava/lang/Object;)Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;
    .locals 0

    .prologue
    .line 38
    packed-switch p1, :pswitch_data_0

    .line 44
    :goto_0
    return-object p0

    .line 40
    :pswitch_0
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;->connnect_time_out:Ljava/lang/Integer;

    goto :goto_0

    .line 43
    :pswitch_1
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;->handshake_time_out:Ljava/lang/Integer;

    goto :goto_0

    .line 38
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

    .line 61
    iget v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;->hashCode:I

    .line 62
    if-nez v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;->connnect_time_out:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;->connnect_time_out:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    .line 64
    :goto_0
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;->handshake_time_out:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;->handshake_time_out:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 65
    iput v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;->hashCode:I

    .line 67
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 63
    goto :goto_0
.end method
