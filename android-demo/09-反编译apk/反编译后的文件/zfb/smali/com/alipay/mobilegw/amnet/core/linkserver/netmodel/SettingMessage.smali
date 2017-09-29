.class public final Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;
.super Lcom/squareup/wire/Message;
.source "SettingMessage.java"


# static fields
.field public static final DEFAULT_SETTING_VERSION:Ljava/lang/Integer;

.field public static final TAG_CONNECT_TIMEOUT_SETTING:I = 0x1

.field public static final TAG_HB_SETTING:I = 0x3

.field public static final TAG_IP_LIST_SETTING:I = 0x4

.field public static final TAG_MISC:I = 0x6

.field public static final TAG_NETWORK_DETECTION_SETTING:I = 0x7

.field public static final TAG_NETWORK_FLASH:I = 0x5

.field public static final TAG_QUICK_RECONNECT_CONF:I = 0x8

.field public static final TAG_RECONN_SETTING:I = 0x2

.field public static final TAG_SETTING_VERSION:I = 0xf


# instance fields
.field public connect_timeout_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
    .end annotation
.end field

.field public hb_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SceneNetworkChannelHBSetting;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
    .end annotation
.end field

.field public ip_list_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpListSettingMessage;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
    .end annotation
.end field

.field public misc:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
    .end annotation
.end field

.field public network_detection_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetectionSetting;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
    .end annotation
.end field

.field public network_flash:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkFlashSetting;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
    .end annotation
.end field

.field public quick_reconnect_conf:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
    .end annotation
.end field

.field public reconn_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/ReconnIntervalSetting;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
    .end annotation
.end field

.field public setting_version:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xf
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->DEFAULT_SETTING_VERSION:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 84
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    .line 71
    if-nez p1, :cond_0

    .line 81
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->connect_timeout_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->connect_timeout_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;

    .line 73
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->reconn_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/ReconnIntervalSetting;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->reconn_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/ReconnIntervalSetting;

    .line 74
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->hb_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SceneNetworkChannelHBSetting;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->hb_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SceneNetworkChannelHBSetting;

    .line 75
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->ip_list_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpListSettingMessage;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->ip_list_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpListSettingMessage;

    .line 76
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->network_flash:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkFlashSetting;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->network_flash:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkFlashSetting;

    .line 77
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->misc:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->misc:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;

    .line 78
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->network_detection_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetectionSetting;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->network_detection_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetectionSetting;

    .line 79
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->quick_reconnect_conf:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->quick_reconnect_conf:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;

    .line 80
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->setting_version:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->setting_version:Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 122
    if-ne p1, p0, :cond_1

    .line 125
    :cond_0
    :goto_0
    return v0

    .line 123
    :cond_1
    instance-of v2, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 124
    :cond_2
    check-cast p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;

    .line 125
    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->connect_timeout_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->connect_timeout_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->reconn_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/ReconnIntervalSetting;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->reconn_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/ReconnIntervalSetting;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->hb_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SceneNetworkChannelHBSetting;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->hb_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SceneNetworkChannelHBSetting;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->ip_list_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpListSettingMessage;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->ip_list_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpListSettingMessage;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->network_flash:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkFlashSetting;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->network_flash:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkFlashSetting;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->misc:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->misc:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->network_detection_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetectionSetting;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->network_detection_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetectionSetting;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->quick_reconnect_conf:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->quick_reconnect_conf:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->setting_version:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->setting_version:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final fillTagValue(ILjava/lang/Object;)Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;
    .locals 0

    .prologue
    .line 87
    packed-switch p1, :pswitch_data_0

    .line 114
    :goto_0
    :pswitch_0
    return-object p0

    .line 89
    :pswitch_1
    check-cast p2, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->connect_timeout_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;

    goto :goto_0

    .line 92
    :pswitch_2
    check-cast p2, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/ReconnIntervalSetting;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->reconn_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/ReconnIntervalSetting;

    goto :goto_0

    .line 95
    :pswitch_3
    check-cast p2, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SceneNetworkChannelHBSetting;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->hb_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SceneNetworkChannelHBSetting;

    goto :goto_0

    .line 98
    :pswitch_4
    check-cast p2, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpListSettingMessage;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->ip_list_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpListSettingMessage;

    goto :goto_0

    .line 101
    :pswitch_5
    check-cast p2, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkFlashSetting;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->network_flash:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkFlashSetting;

    goto :goto_0

    .line 104
    :pswitch_6
    check-cast p2, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->misc:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;

    goto :goto_0

    .line 107
    :pswitch_7
    check-cast p2, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetectionSetting;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->network_detection_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetectionSetting;

    goto :goto_0

    .line 110
    :pswitch_8
    check-cast p2, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->quick_reconnect_conf:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;

    goto :goto_0

    .line 113
    :pswitch_9
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->setting_version:Ljava/lang/Integer;

    goto :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 138
    iget v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->hashCode:I

    .line 139
    if-nez v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->connect_timeout_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->connect_timeout_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;

    invoke-virtual {v0}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;->hashCode()I

    move-result v0

    .line 141
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->reconn_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/ReconnIntervalSetting;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->reconn_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/ReconnIntervalSetting;

    invoke-virtual {v0}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/ReconnIntervalSetting;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 142
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->hb_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SceneNetworkChannelHBSetting;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->hb_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SceneNetworkChannelHBSetting;

    invoke-virtual {v0}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SceneNetworkChannelHBSetting;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 143
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->ip_list_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpListSettingMessage;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->ip_list_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpListSettingMessage;

    invoke-virtual {v0}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpListSettingMessage;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 144
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->network_flash:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkFlashSetting;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->network_flash:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkFlashSetting;

    invoke-virtual {v0}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkFlashSetting;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 145
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->misc:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->misc:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;

    invoke-virtual {v0}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 146
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->network_detection_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetectionSetting;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->network_detection_setting:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetectionSetting;

    invoke-virtual {v0}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetectionSetting;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    .line 147
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->quick_reconnect_conf:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->quick_reconnect_conf:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;

    invoke-virtual {v0}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    .line 148
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->setting_version:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->setting_version:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 149
    iput v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/SettingMessage;->hashCode:I

    .line 151
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 140
    goto :goto_0

    :cond_3
    move v0, v1

    .line 141
    goto :goto_1

    :cond_4
    move v0, v1

    .line 142
    goto :goto_2

    :cond_5
    move v0, v1

    .line 143
    goto :goto_3

    :cond_6
    move v0, v1

    .line 144
    goto :goto_4

    :cond_7
    move v0, v1

    .line 145
    goto :goto_5

    :cond_8
    move v0, v1

    .line 146
    goto :goto_6

    :cond_9
    move v0, v1

    .line 147
    goto :goto_7
.end method
