.class public final Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;
.super Lcom/squareup/wire/Message;
.source "InitMessage.java"


# static fields
.field public static final DEFAULT_ACCESS_POINT:Ljava/lang/String; = ""

.field public static final DEFAULT_APDID:Ljava/lang/String; = ""

.field public static final DEFAULT_APP_STATUS:Ljava/lang/Integer;

.field public static final DEFAULT_APP_TYPE:Ljava/lang/String; = ""

.field public static final DEFAULT_AWID:Ljava/lang/String; = ""

.field public static final DEFAULT_BRAND:Ljava/lang/String; = ""

.field public static final DEFAULT_CACHE_SESSION_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_CELL_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_CLIENT_POSITION:Ljava/lang/String; = ""

.field public static final DEFAULT_CLIENT_TYPE:Ljava/lang/String; = ""

.field public static final DEFAULT_CURRENT_TIME:Ljava/lang/Long;

.field public static final DEFAULT_DEVICE_TOKEN:Ljava/lang/String; = ""

.field public static final DEFAULT_EXT_PARAS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/ChannelExtParam;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_HPACK_VERSION:Ljava/lang/Integer;

.field public static final DEFAULT_IMEI:Ljava/lang/String; = ""

.field public static final DEFAULT_IMSI:Ljava/lang/String; = ""

.field public static final DEFAULT_IS_PUSH_ENABLE:Ljava/lang/String; = ""

.field public static final DEFAULT_LAC_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_LANGUAGE:Ljava/lang/String; = ""

.field public static final DEFAULT_LATITUDE:Ljava/lang/String; = ""

.field public static final DEFAULT_LBSINFO:Ljava/lang/String; = ""

.field public static final DEFAULT_LINK_ACTION:Ljava/lang/Integer;

.field public static final DEFAULT_LONGITUDE:Ljava/lang/String; = ""

.field public static final DEFAULT_MOBILE_SYSTEM:Ljava/lang/String; = ""

.field public static final DEFAULT_MODEL:Ljava/lang/String; = ""

.field public static final DEFAULT_NETWORK:Ljava/lang/String; = ""

.field public static final DEFAULT_PRISON_BREAKED:Ljava/lang/Boolean;

.field public static final DEFAULT_PRODUCT_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_PRODUCT_VERSION:Ljava/lang/String; = ""

.field public static final DEFAULT_PUBLISH_CHANNEL:Ljava/lang/String; = ""

.field public static final DEFAULT_RESEND:Ljava/lang/Boolean;

.field public static final DEFAULT_SCREEN_HEIGHT:Ljava/lang/Integer;

.field public static final DEFAULT_SCREEN_WIDTH:Ljava/lang/Integer;

.field public static final DEFAULT_SETTING_VERSION:Ljava/lang/Long;

.field public static final DEFAULT_SOURCE_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_SYSTEM_VERSION:Ljava/lang/String; = ""

.field public static final DEFAULT_UMID_TOKEN:Ljava/lang/String; = ""

.field public static final DEFAULT_USER_AGENT:Ljava/lang/String; = ""

.field public static final DEFAULT_USER_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_UTDID:Ljava/lang/String; = ""

.field public static final DEFAULT_WIFI_MAC:Ljava/lang/String; = ""

.field public static final DEFAULT_WIFI_NODE_NAME:Ljava/lang/String; = ""

.field public static final TAG_ACCESS_POINT:I = 0x10

.field public static final TAG_APDID:I = 0x1

.field public static final TAG_APP_STATUS:I = 0x27

.field public static final TAG_APP_TYPE:I = 0x13

.field public static final TAG_AWID:I = 0x14

.field public static final TAG_BRAND:I = 0xe

.field public static final TAG_CACHE_SESSION_ID:I = 0x3

.field public static final TAG_CELL_ID:I = 0x1c

.field public static final TAG_CLIENT_POSITION:I = 0x12

.field public static final TAG_CLIENT_TYPE:I = 0x11

.field public static final TAG_CURRENT_TIME:I = 0x29

.field public static final TAG_DEVICE_TOKEN:I = 0x15

.field public static final TAG_EXT_PARAS:I = 0x5

.field public static final TAG_HPACK_VERSION:I = 0x23

.field public static final TAG_IMEI:I = 0x17

.field public static final TAG_IMSI:I = 0x18

.field public static final TAG_IS_PUSH_ENABLE:I = 0x24

.field public static final TAG_LAC_ID:I = 0x1b

.field public static final TAG_LANGUAGE:I = 0x2a

.field public static final TAG_LATITUDE:I = 0x1f

.field public static final TAG_LBSINFO:I = 0x21

.field public static final TAG_LINK_ACTION:I = 0x28

.field public static final TAG_LONGITUDE:I = 0x20

.field public static final TAG_MOBILE_SYSTEM:I = 0x6

.field public static final TAG_MODEL:I = 0xf

.field public static final TAG_NETWORK:I = 0x2

.field public static final TAG_PRISON_BREAKED:I = 0x1d

.field public static final TAG_PRODUCT_ID:I = 0x9

.field public static final TAG_PRODUCT_VERSION:I = 0xa

.field public static final TAG_PUBLISH_CHANNEL:I = 0x8

.field public static final TAG_RESEND:I = 0x2b

.field public static final TAG_SCREEN_HEIGHT:I = 0xd

.field public static final TAG_SCREEN_WIDTH:I = 0xc

.field public static final TAG_SETTING_VERSION:I = 0x22

.field public static final TAG_SOURCE_ID:I = 0x16

.field public static final TAG_SYSTEM_VERSION:I = 0x7

.field public static final TAG_UMID_TOKEN:I = 0x25

.field public static final TAG_USER_AGENT:I = 0xb

.field public static final TAG_USER_ID:I = 0x26

.field public static final TAG_UTDID:I = 0x4

.field public static final TAG_WIFI_MAC:I = 0x19

.field public static final TAG_WIFI_NODE_NAME:I = 0x1a


# instance fields
.field public access_point:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        deprecated = true
        tag = 0x10
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public apdid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public app_status:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x27
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public app_type:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x13
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public awid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        deprecated = true
        tag = 0x14
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public brand:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xe
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public cache_session_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public cell_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        deprecated = true
        tag = 0x1c
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public client_position:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x12
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public client_type:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x11
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public current_time:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x29
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public device_token:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x15
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public ext_paras:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x5
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/ChannelExtParam;",
            ">;"
        }
    .end annotation
.end field

.field public hpack_version:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        deprecated = true
        tag = 0x23
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public imei:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x17
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public imsi:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x18
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public is_push_enable:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x24
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public lac_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        deprecated = true
        tag = 0x1b
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public language:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2a
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public latitude:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1f
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public lbsInfo:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        deprecated = true
        tag = 0x21
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public link_action:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x28
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public longitude:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x20
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public mobile_system:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public model:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xf
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public network:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public prison_breaked:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1d
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public product_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public product_version:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xa
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public publish_channel:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public resend:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2b
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public screen_height:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        deprecated = true
        tag = 0xd
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public screen_width:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        deprecated = true
        tag = 0xc
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public setting_version:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x22
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public source_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        deprecated = true
        tag = 0x16
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public system_version:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public umid_token:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x25
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public user_agent:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        deprecated = true
        tag = 0xb
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public user_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x26
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public utdid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public wifi_mac:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        deprecated = true
        tag = 0x19
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public wifi_node_name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        deprecated = true
        tag = 0x1a
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->DEFAULT_EXT_PARAS:Ljava/util/List;

    .line 75
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->DEFAULT_SCREEN_WIDTH:Ljava/lang/Integer;

    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->DEFAULT_SCREEN_HEIGHT:Ljava/lang/Integer;

    .line 92
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->DEFAULT_PRISON_BREAKED:Ljava/lang/Boolean;

    .line 96
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->DEFAULT_SETTING_VERSION:Ljava/lang/Long;

    .line 97
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->DEFAULT_HPACK_VERSION:Ljava/lang/Integer;

    .line 101
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->DEFAULT_APP_STATUS:Ljava/lang/Integer;

    .line 102
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->DEFAULT_LINK_ACTION:Ljava/lang/Integer;

    .line 103
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->DEFAULT_CURRENT_TIME:Ljava/lang/Long;

    .line 105
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->DEFAULT_RESEND:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 415
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 416
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;)V
    .locals 1

    .prologue
    .line 369
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    .line 370
    if-nez p1, :cond_0

    .line 413
    :goto_0
    return-void

    .line 371
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->apdid:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->apdid:Ljava/lang/String;

    .line 372
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->network:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->network:Ljava/lang/String;

    .line 373
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->cache_session_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->cache_session_id:Ljava/lang/String;

    .line 374
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->utdid:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->utdid:Ljava/lang/String;

    .line 375
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->ext_paras:Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->ext_paras:Ljava/util/List;

    .line 376
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->mobile_system:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->mobile_system:Ljava/lang/String;

    .line 377
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->system_version:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->system_version:Ljava/lang/String;

    .line 378
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->publish_channel:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->publish_channel:Ljava/lang/String;

    .line 379
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->product_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->product_id:Ljava/lang/String;

    .line 380
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->product_version:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->product_version:Ljava/lang/String;

    .line 381
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->user_agent:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->user_agent:Ljava/lang/String;

    .line 382
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->screen_width:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->screen_width:Ljava/lang/Integer;

    .line 383
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->screen_height:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->screen_height:Ljava/lang/Integer;

    .line 384
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->brand:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->brand:Ljava/lang/String;

    .line 385
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->model:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->model:Ljava/lang/String;

    .line 386
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->access_point:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->access_point:Ljava/lang/String;

    .line 387
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->client_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->client_type:Ljava/lang/String;

    .line 388
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->client_position:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->client_position:Ljava/lang/String;

    .line 389
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->app_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->app_type:Ljava/lang/String;

    .line 390
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->awid:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->awid:Ljava/lang/String;

    .line 391
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->device_token:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->device_token:Ljava/lang/String;

    .line 392
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->source_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->source_id:Ljava/lang/String;

    .line 393
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->imei:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->imei:Ljava/lang/String;

    .line 394
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->imsi:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->imsi:Ljava/lang/String;

    .line 395
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->wifi_mac:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->wifi_mac:Ljava/lang/String;

    .line 396
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->wifi_node_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->wifi_node_name:Ljava/lang/String;

    .line 397
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->lac_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->lac_id:Ljava/lang/String;

    .line 398
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->cell_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->cell_id:Ljava/lang/String;

    .line 399
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->prison_breaked:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->prison_breaked:Ljava/lang/Boolean;

    .line 400
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->latitude:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->latitude:Ljava/lang/String;

    .line 401
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->longitude:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->longitude:Ljava/lang/String;

    .line 402
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->lbsInfo:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->lbsInfo:Ljava/lang/String;

    .line 403
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->setting_version:Ljava/lang/Long;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->setting_version:Ljava/lang/Long;

    .line 404
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->hpack_version:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->hpack_version:Ljava/lang/Integer;

    .line 405
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->is_push_enable:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->is_push_enable:Ljava/lang/String;

    .line 406
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->umid_token:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->umid_token:Ljava/lang/String;

    .line 407
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->user_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->user_id:Ljava/lang/String;

    .line 408
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->app_status:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->app_status:Ljava/lang/Integer;

    .line 409
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->link_action:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->link_action:Ljava/lang/Integer;

    .line 410
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->current_time:Ljava/lang/Long;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->current_time:Ljava/lang/Long;

    .line 411
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->language:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->language:Ljava/lang/String;

    .line 412
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->resend:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->resend:Ljava/lang/Boolean;

    goto/16 :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 553
    if-ne p1, p0, :cond_1

    .line 556
    :cond_0
    :goto_0
    return v0

    .line 554
    :cond_1
    instance-of v2, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 555
    :cond_2
    check-cast p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;

    .line 556
    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->apdid:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->apdid:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->network:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->network:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->cache_session_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->cache_session_id:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->utdid:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->utdid:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->ext_paras:Ljava/util/List;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->ext_paras:Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->mobile_system:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->mobile_system:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->system_version:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->system_version:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->publish_channel:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->publish_channel:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->product_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->product_id:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->product_version:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->product_version:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->user_agent:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->user_agent:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->screen_width:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->screen_width:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->screen_height:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->screen_height:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->brand:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->brand:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->model:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->model:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->access_point:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->access_point:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->client_type:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->client_type:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->client_position:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->client_position:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->app_type:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->app_type:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->awid:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->awid:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->device_token:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->device_token:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->source_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->source_id:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->imei:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->imei:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->imsi:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->imsi:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->wifi_mac:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->wifi_mac:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->wifi_node_name:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->wifi_node_name:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->lac_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->lac_id:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->cell_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->cell_id:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->prison_breaked:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->prison_breaked:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->latitude:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->latitude:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->longitude:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->longitude:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->lbsInfo:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->lbsInfo:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->setting_version:Ljava/lang/Long;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->setting_version:Ljava/lang/Long;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->hpack_version:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->hpack_version:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->is_push_enable:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->is_push_enable:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->umid_token:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->umid_token:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->user_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->user_id:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->app_status:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->app_status:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->link_action:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->link_action:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->current_time:Ljava/lang/Long;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->current_time:Ljava/lang/Long;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->language:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->language:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->resend:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->resend:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto/16 :goto_0
.end method

.method public final fillTagValue(ILjava/lang/Object;)Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;
    .locals 1

    .prologue
    .line 419
    packed-switch p1, :pswitch_data_0

    .line 545
    :goto_0
    :pswitch_0
    return-object p0

    .line 421
    :pswitch_1
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->apdid:Ljava/lang/String;

    goto :goto_0

    .line 424
    :pswitch_2
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->network:Ljava/lang/String;

    goto :goto_0

    .line 427
    :pswitch_3
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->cache_session_id:Ljava/lang/String;

    goto :goto_0

    .line 430
    :pswitch_4
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->utdid:Ljava/lang/String;

    goto :goto_0

    .line 433
    :pswitch_5
    check-cast p2, Ljava/util/List;

    invoke-static {p2}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->ext_paras:Ljava/util/List;

    goto :goto_0

    .line 436
    :pswitch_6
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->mobile_system:Ljava/lang/String;

    goto :goto_0

    .line 439
    :pswitch_7
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->system_version:Ljava/lang/String;

    goto :goto_0

    .line 442
    :pswitch_8
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->publish_channel:Ljava/lang/String;

    goto :goto_0

    .line 445
    :pswitch_9
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->product_id:Ljava/lang/String;

    goto :goto_0

    .line 448
    :pswitch_a
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->product_version:Ljava/lang/String;

    goto :goto_0

    .line 451
    :pswitch_b
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->user_agent:Ljava/lang/String;

    goto :goto_0

    .line 454
    :pswitch_c
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->screen_width:Ljava/lang/Integer;

    goto :goto_0

    .line 457
    :pswitch_d
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->screen_height:Ljava/lang/Integer;

    goto :goto_0

    .line 460
    :pswitch_e
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->brand:Ljava/lang/String;

    goto :goto_0

    .line 463
    :pswitch_f
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->model:Ljava/lang/String;

    goto :goto_0

    .line 466
    :pswitch_10
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->access_point:Ljava/lang/String;

    goto :goto_0

    .line 469
    :pswitch_11
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->client_type:Ljava/lang/String;

    goto :goto_0

    .line 472
    :pswitch_12
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->client_position:Ljava/lang/String;

    goto :goto_0

    .line 475
    :pswitch_13
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->app_type:Ljava/lang/String;

    goto :goto_0

    .line 478
    :pswitch_14
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->awid:Ljava/lang/String;

    goto :goto_0

    .line 481
    :pswitch_15
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->device_token:Ljava/lang/String;

    goto :goto_0

    .line 484
    :pswitch_16
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->source_id:Ljava/lang/String;

    goto :goto_0

    .line 487
    :pswitch_17
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->imei:Ljava/lang/String;

    goto :goto_0

    .line 490
    :pswitch_18
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->imsi:Ljava/lang/String;

    goto :goto_0

    .line 493
    :pswitch_19
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->wifi_mac:Ljava/lang/String;

    goto/16 :goto_0

    .line 496
    :pswitch_1a
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->wifi_node_name:Ljava/lang/String;

    goto/16 :goto_0

    .line 499
    :pswitch_1b
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->lac_id:Ljava/lang/String;

    goto/16 :goto_0

    .line 502
    :pswitch_1c
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->cell_id:Ljava/lang/String;

    goto/16 :goto_0

    .line 505
    :pswitch_1d
    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->prison_breaked:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 508
    :pswitch_1e
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->latitude:Ljava/lang/String;

    goto/16 :goto_0

    .line 511
    :pswitch_1f
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->longitude:Ljava/lang/String;

    goto/16 :goto_0

    .line 514
    :pswitch_20
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->lbsInfo:Ljava/lang/String;

    goto/16 :goto_0

    .line 517
    :pswitch_21
    check-cast p2, Ljava/lang/Long;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->setting_version:Ljava/lang/Long;

    goto/16 :goto_0

    .line 520
    :pswitch_22
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->hpack_version:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 523
    :pswitch_23
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->is_push_enable:Ljava/lang/String;

    goto/16 :goto_0

    .line 526
    :pswitch_24
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->umid_token:Ljava/lang/String;

    goto/16 :goto_0

    .line 529
    :pswitch_25
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->user_id:Ljava/lang/String;

    goto/16 :goto_0

    .line 532
    :pswitch_26
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->app_status:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 535
    :pswitch_27
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->link_action:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 538
    :pswitch_28
    check-cast p2, Ljava/lang/Long;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->current_time:Ljava/lang/Long;

    goto/16 :goto_0

    .line 541
    :pswitch_29
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->language:Ljava/lang/String;

    goto/16 :goto_0

    .line 544
    :pswitch_2a
    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->resend:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 419
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
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_0
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
    .end packed-switch
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 602
    iget v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->hashCode:I

    .line 603
    if-nez v0, :cond_1

    .line 604
    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->apdid:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->apdid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 605
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->network:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->network:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 606
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->cache_session_id:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->cache_session_id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 607
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->utdid:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->utdid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 608
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->ext_paras:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->ext_paras:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 609
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->mobile_system:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->mobile_system:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 610
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->system_version:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->system_version:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    .line 611
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->publish_channel:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->publish_channel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    .line 612
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->product_id:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->product_id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    .line 613
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->product_version:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->product_version:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v2

    .line 614
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->user_agent:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->user_agent:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    add-int/2addr v0, v2

    .line 615
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->screen_width:Ljava/lang/Integer;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->screen_width:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_b
    add-int/2addr v0, v2

    .line 616
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->screen_height:Ljava/lang/Integer;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->screen_height:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_c
    add-int/2addr v0, v2

    .line 617
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->brand:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->brand:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_d
    add-int/2addr v0, v2

    .line 618
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->model:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->model:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_e
    add-int/2addr v0, v2

    .line 619
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->access_point:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->access_point:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_f
    add-int/2addr v0, v2

    .line 620
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->client_type:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->client_type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_10
    add-int/2addr v0, v2

    .line 621
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->client_position:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->client_position:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_11
    add-int/2addr v0, v2

    .line 622
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->app_type:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->app_type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_12
    add-int/2addr v0, v2

    .line 623
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->awid:Ljava/lang/String;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->awid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_13
    add-int/2addr v0, v2

    .line 624
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->device_token:Ljava/lang/String;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->device_token:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_14
    add-int/2addr v0, v2

    .line 625
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->source_id:Ljava/lang/String;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->source_id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_15
    add-int/2addr v0, v2

    .line 626
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->imei:Ljava/lang/String;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->imei:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_16
    add-int/2addr v0, v2

    .line 627
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->imsi:Ljava/lang/String;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->imsi:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_17
    add-int/2addr v0, v2

    .line 628
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->wifi_mac:Ljava/lang/String;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->wifi_mac:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_18
    add-int/2addr v0, v2

    .line 629
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->wifi_node_name:Ljava/lang/String;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->wifi_node_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_19
    add-int/2addr v0, v2

    .line 630
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->lac_id:Ljava/lang/String;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->lac_id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1a
    add-int/2addr v0, v2

    .line 631
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->cell_id:Ljava/lang/String;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->cell_id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1b
    add-int/2addr v0, v2

    .line 632
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->prison_breaked:Ljava/lang/Boolean;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->prison_breaked:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_1c
    add-int/2addr v0, v2

    .line 633
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->latitude:Ljava/lang/String;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->latitude:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1d
    add-int/2addr v0, v2

    .line 634
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->longitude:Ljava/lang/String;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->longitude:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1e
    add-int/2addr v0, v2

    .line 635
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->lbsInfo:Ljava/lang/String;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->lbsInfo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1f
    add-int/2addr v0, v2

    .line 636
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->setting_version:Ljava/lang/Long;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->setting_version:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_20
    add-int/2addr v0, v2

    .line 637
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->hpack_version:Ljava/lang/Integer;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->hpack_version:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_21
    add-int/2addr v0, v2

    .line 638
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->is_push_enable:Ljava/lang/String;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->is_push_enable:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_22
    add-int/2addr v0, v2

    .line 639
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->umid_token:Ljava/lang/String;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->umid_token:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_23
    add-int/2addr v0, v2

    .line 640
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->user_id:Ljava/lang/String;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->user_id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_24
    add-int/2addr v0, v2

    .line 641
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->app_status:Ljava/lang/Integer;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->app_status:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_25
    add-int/2addr v0, v2

    .line 642
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->link_action:Ljava/lang/Integer;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->link_action:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_26
    add-int/2addr v0, v2

    .line 643
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->current_time:Ljava/lang/Long;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->current_time:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_27
    add-int/2addr v0, v2

    .line 644
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->language:Ljava/lang/String;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->language:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_28
    add-int/2addr v0, v2

    .line 645
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->resend:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->resend:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 646
    iput v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/InitMessage;->hashCode:I

    .line 648
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 604
    goto/16 :goto_0

    :cond_3
    move v0, v1

    .line 605
    goto/16 :goto_1

    :cond_4
    move v0, v1

    .line 606
    goto/16 :goto_2

    :cond_5
    move v0, v1

    .line 607
    goto/16 :goto_3

    .line 608
    :cond_6
    const/4 v0, 0x1

    goto/16 :goto_4

    :cond_7
    move v0, v1

    .line 609
    goto/16 :goto_5

    :cond_8
    move v0, v1

    .line 610
    goto/16 :goto_6

    :cond_9
    move v0, v1

    .line 611
    goto/16 :goto_7

    :cond_a
    move v0, v1

    .line 612
    goto/16 :goto_8

    :cond_b
    move v0, v1

    .line 613
    goto/16 :goto_9

    :cond_c
    move v0, v1

    .line 614
    goto/16 :goto_a

    :cond_d
    move v0, v1

    .line 615
    goto/16 :goto_b

    :cond_e
    move v0, v1

    .line 616
    goto/16 :goto_c

    :cond_f
    move v0, v1

    .line 617
    goto/16 :goto_d

    :cond_10
    move v0, v1

    .line 618
    goto/16 :goto_e

    :cond_11
    move v0, v1

    .line 619
    goto/16 :goto_f

    :cond_12
    move v0, v1

    .line 620
    goto/16 :goto_10

    :cond_13
    move v0, v1

    .line 621
    goto/16 :goto_11

    :cond_14
    move v0, v1

    .line 622
    goto/16 :goto_12

    :cond_15
    move v0, v1

    .line 623
    goto/16 :goto_13

    :cond_16
    move v0, v1

    .line 624
    goto/16 :goto_14

    :cond_17
    move v0, v1

    .line 625
    goto/16 :goto_15

    :cond_18
    move v0, v1

    .line 626
    goto/16 :goto_16

    :cond_19
    move v0, v1

    .line 627
    goto/16 :goto_17

    :cond_1a
    move v0, v1

    .line 628
    goto/16 :goto_18

    :cond_1b
    move v0, v1

    .line 629
    goto/16 :goto_19

    :cond_1c
    move v0, v1

    .line 630
    goto/16 :goto_1a

    :cond_1d
    move v0, v1

    .line 631
    goto/16 :goto_1b

    :cond_1e
    move v0, v1

    .line 632
    goto/16 :goto_1c

    :cond_1f
    move v0, v1

    .line 633
    goto/16 :goto_1d

    :cond_20
    move v0, v1

    .line 634
    goto/16 :goto_1e

    :cond_21
    move v0, v1

    .line 635
    goto/16 :goto_1f

    :cond_22
    move v0, v1

    .line 636
    goto/16 :goto_20

    :cond_23
    move v0, v1

    .line 637
    goto/16 :goto_21

    :cond_24
    move v0, v1

    .line 638
    goto/16 :goto_22

    :cond_25
    move v0, v1

    .line 639
    goto/16 :goto_23

    :cond_26
    move v0, v1

    .line 640
    goto/16 :goto_24

    :cond_27
    move v0, v1

    .line 641
    goto/16 :goto_25

    :cond_28
    move v0, v1

    .line 642
    goto/16 :goto_26

    :cond_29
    move v0, v1

    .line 643
    goto/16 :goto_27

    :cond_2a
    move v0, v1

    .line 644
    goto/16 :goto_28
.end method
