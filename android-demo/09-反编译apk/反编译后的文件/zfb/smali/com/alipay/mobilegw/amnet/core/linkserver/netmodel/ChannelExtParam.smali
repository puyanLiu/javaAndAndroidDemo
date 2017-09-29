.class public final Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/ChannelExtParam;
.super Lcom/squareup/wire/Message;
.source "ChannelExtParam.java"


# static fields
.field public static final DEFAULT_CHANNEL_ID:Ljava/lang/Integer;

.field public static final DEFAULT_EXT_PARAMS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/KeyValuePairs;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG_CHANNEL_ID:I = 0x1

.field public static final TAG_EXT_PARAMS:I = 0x2


# instance fields
.field public channel_id:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public ext_params:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/KeyValuePairs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/ChannelExtParam;->DEFAULT_CHANNEL_ID:Ljava/lang/Integer;

    .line 19
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/ChannelExtParam;->DEFAULT_EXT_PARAMS:Ljava/util/List;

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

.method public constructor <init>(Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/ChannelExtParam;)V
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
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/ChannelExtParam;->channel_id:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/ChannelExtParam;->channel_id:Ljava/lang/Integer;

    .line 31
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/ChannelExtParam;->ext_params:Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/ChannelExtParam;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/ChannelExtParam;->ext_params:Ljava/util/List;

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
    instance-of v2, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/ChannelExtParam;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 54
    :cond_2
    check-cast p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/ChannelExtParam;

    .line 55
    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/ChannelExtParam;->channel_id:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/ChannelExtParam;->channel_id:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/ChannelExtParam;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/ChannelExtParam;->ext_params:Ljava/util/List;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/ChannelExtParam;->ext_params:Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/ChannelExtParam;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final fillTagValue(ILjava/lang/Object;)Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/ChannelExtParam;
    .locals 1

    .prologue
    .line 38
    packed-switch p1, :pswitch_data_0

    .line 44
    :goto_0
    return-object p0

    .line 40
    :pswitch_0
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/ChannelExtParam;->channel_id:Ljava/lang/Integer;

    goto :goto_0

    .line 43
    :pswitch_1
    check-cast p2, Ljava/util/List;

    invoke-static {p2}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/ChannelExtParam;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/ChannelExtParam;->ext_params:Ljava/util/List;

    goto :goto_0

    .line 38
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 61
    iget v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/ChannelExtParam;->hashCode:I

    .line 62
    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/ChannelExtParam;->channel_id:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/ChannelExtParam;->channel_id:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    .line 64
    :goto_0
    mul-int/lit8 v1, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/ChannelExtParam;->ext_params:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/ChannelExtParam;->ext_params:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v1

    .line 65
    iput v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/ChannelExtParam;->hashCode:I

    .line 67
    :cond_0
    return v0

    .line 63
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 64
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method
