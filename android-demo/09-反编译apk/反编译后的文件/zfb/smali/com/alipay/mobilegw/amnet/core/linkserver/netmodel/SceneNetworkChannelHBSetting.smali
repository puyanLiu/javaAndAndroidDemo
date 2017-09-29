.class public final Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SceneNetworkChannelHBSetting;
.super Lcom/squareup/wire/Message;
.source "SceneNetworkChannelHBSetting.java"


# static fields
.field public static final TAG_BACK_GROUND:I = 0x2

.field public static final TAG_FORE_GROUND:I = 0x1


# instance fields
.field public back_ground:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelHBSetting;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
    .end annotation
.end field

.field public fore_ground:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelHBSetting;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SceneNetworkChannelHBSetting;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    .line 24
    if-nez p1, :cond_0

    .line 27
    :goto_0
    return-void

    .line 25
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SceneNetworkChannelHBSetting;->fore_ground:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelHBSetting;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SceneNetworkChannelHBSetting;->fore_ground:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelHBSetting;

    .line 26
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SceneNetworkChannelHBSetting;->back_ground:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelHBSetting;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SceneNetworkChannelHBSetting;->back_ground:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelHBSetting;

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 47
    if-ne p1, p0, :cond_1

    .line 50
    :cond_0
    :goto_0
    return v0

    .line 48
    :cond_1
    instance-of v2, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SceneNetworkChannelHBSetting;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 49
    :cond_2
    check-cast p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SceneNetworkChannelHBSetting;

    .line 50
    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SceneNetworkChannelHBSetting;->fore_ground:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelHBSetting;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SceneNetworkChannelHBSetting;->fore_ground:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelHBSetting;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SceneNetworkChannelHBSetting;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SceneNetworkChannelHBSetting;->back_ground:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelHBSetting;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SceneNetworkChannelHBSetting;->back_ground:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelHBSetting;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SceneNetworkChannelHBSetting;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final fillTagValue(ILjava/lang/Object;)Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SceneNetworkChannelHBSetting;
    .locals 0

    .prologue
    .line 33
    packed-switch p1, :pswitch_data_0

    .line 39
    :goto_0
    return-object p0

    .line 35
    :pswitch_0
    check-cast p2, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelHBSetting;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SceneNetworkChannelHBSetting;->fore_ground:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelHBSetting;

    goto :goto_0

    .line 38
    :pswitch_1
    check-cast p2, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelHBSetting;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SceneNetworkChannelHBSetting;->back_ground:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelHBSetting;

    goto :goto_0

    .line 33
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

    .line 56
    iget v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SceneNetworkChannelHBSetting;->hashCode:I

    .line 57
    if-nez v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SceneNetworkChannelHBSetting;->fore_ground:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelHBSetting;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SceneNetworkChannelHBSetting;->fore_ground:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelHBSetting;

    invoke-virtual {v0}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelHBSetting;->hashCode()I

    move-result v0

    .line 59
    :goto_0
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SceneNetworkChannelHBSetting;->back_ground:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelHBSetting;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SceneNetworkChannelHBSetting;->back_ground:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelHBSetting;

    invoke-virtual {v1}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelHBSetting;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 60
    iput v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SceneNetworkChannelHBSetting;->hashCode:I

    .line 62
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 58
    goto :goto_0
.end method
