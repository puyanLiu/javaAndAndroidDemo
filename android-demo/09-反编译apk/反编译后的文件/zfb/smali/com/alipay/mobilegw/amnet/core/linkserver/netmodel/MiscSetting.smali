.class public final Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;
.super Lcom/squareup/wire/Message;
.source "MiscSetting.java"


# static fields
.field public static final DEFAULT_AMNET_MESSAGE_CACHE_TIME:Ljava/lang/Integer;

.field public static final DEFAULT_COMPRESS_METHOD:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CompressMethodEnum;

.field public static final DEFAULT_LOGGER_LEVEL:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;

.field public static final DEFAULT_QUICK_RECONNECT_SWITCH:Ljava/lang/Integer;

.field public static final TAG_AMNET_MESSAGE_CACHE_TIME:I = 0x3

.field public static final TAG_COMPRESS_METHOD:I = 0x2

.field public static final TAG_LOGGER_LEVEL:I = 0x1

.field public static final TAG_QUICK_RECONNECT_SWITCH:I = 0x4


# instance fields
.field public amnet_message_cache_time:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public compress_method:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CompressMethodEnum;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public logger_level:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public quick_reconnect_switch:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;->DEBUG:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;->DEFAULT_LOGGER_LEVEL:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;

    .line 23
    sget-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CompressMethodEnum;->PLAIN:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CompressMethodEnum;

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;->DEFAULT_COMPRESS_METHOD:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CompressMethodEnum;

    .line 24
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;->DEFAULT_AMNET_MESSAGE_CACHE_TIME:Ljava/lang/Integer;

    .line 25
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;->DEFAULT_QUICK_RECONNECT_SWITCH:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    .line 50
    if-nez p1, :cond_0

    .line 55
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;->logger_level:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;->logger_level:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;

    .line 52
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;->compress_method:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CompressMethodEnum;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;->compress_method:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CompressMethodEnum;

    .line 53
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;->amnet_message_cache_time:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;->amnet_message_cache_time:Ljava/lang/Integer;

    .line 54
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;->quick_reconnect_switch:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;->quick_reconnect_switch:Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 81
    if-ne p1, p0, :cond_1

    .line 84
    :cond_0
    :goto_0
    return v0

    .line 82
    :cond_1
    instance-of v2, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 83
    :cond_2
    check-cast p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;

    .line 84
    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;->logger_level:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;->logger_level:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;->compress_method:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CompressMethodEnum;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;->compress_method:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CompressMethodEnum;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;->amnet_message_cache_time:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;->amnet_message_cache_time:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;->quick_reconnect_switch:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;->quick_reconnect_switch:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final fillTagValue(ILjava/lang/Object;)Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;
    .locals 0

    .prologue
    .line 61
    packed-switch p1, :pswitch_data_0

    .line 73
    :goto_0
    return-object p0

    .line 63
    :pswitch_0
    check-cast p2, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;->logger_level:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;

    goto :goto_0

    .line 66
    :pswitch_1
    check-cast p2, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CompressMethodEnum;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;->compress_method:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CompressMethodEnum;

    goto :goto_0

    .line 69
    :pswitch_2
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;->amnet_message_cache_time:Ljava/lang/Integer;

    goto :goto_0

    .line 72
    :pswitch_3
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;->quick_reconnect_switch:Ljava/lang/Integer;

    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 92
    iget v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;->hashCode:I

    .line 93
    if-nez v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;->logger_level:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;->logger_level:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;

    invoke-virtual {v0}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/LoggerLevelEnum;->hashCode()I

    move-result v0

    .line 95
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;->compress_method:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CompressMethodEnum;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;->compress_method:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CompressMethodEnum;

    invoke-virtual {v0}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CompressMethodEnum;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 96
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;->amnet_message_cache_time:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;->amnet_message_cache_time:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 97
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;->quick_reconnect_switch:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;->quick_reconnect_switch:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 98
    iput v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/MiscSetting;->hashCode:I

    .line 100
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 94
    goto :goto_0

    :cond_3
    move v0, v1

    .line 95
    goto :goto_1

    :cond_4
    move v0, v1

    .line 96
    goto :goto_2
.end method
