.class public final Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;
.super Lcom/squareup/wire/Message;
.source "NetWorkDetecItem.java"


# static fields
.field public static final DEFAULT_DETEC_TIMES:Ljava/lang/Integer;

.field public static final DEFAULT_DOMAIN_NAME:Ljava/lang/String; = ""

.field public static final DEFAULT_IP:Ljava/lang/String; = ""

.field public static final DEFAULT_PORT:Ljava/lang/Integer;

.field public static final DEFAULT_PROTOCOL:Ljava/lang/Integer;

.field public static final DEFAULT_RTT_TIMEOUT:Ljava/lang/Integer;

.field public static final DEFAULT_SEND_REQUEST:Ljava/lang/String; = ""

.field public static final DEFAULT_VALID_RESPONSE:Ljava/lang/String; = ""

.field public static final TAG_DETEC_TIMES:I = 0x8

.field public static final TAG_DOMAIN_NAME:I = 0x1

.field public static final TAG_IP:I = 0x2

.field public static final TAG_PORT:I = 0x3

.field public static final TAG_PROTOCOL:I = 0x4

.field public static final TAG_RTT_TIMEOUT:I = 0x7

.field public static final TAG_SEND_REQUEST:I = 0x5

.field public static final TAG_VALID_RESPONSE:I = 0x6


# instance fields
.field public detec_times:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public domain_name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public ip:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public port:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public protocol:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public rtt_timeout:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public send_request:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public valid_response:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->DEFAULT_PORT:Ljava/lang/Integer;

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->DEFAULT_PROTOCOL:Ljava/lang/Integer;

    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->DEFAULT_RTT_TIMEOUT:Ljava/lang/Integer;

    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->DEFAULT_DETEC_TIMES:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 87
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;)V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    .line 75
    if-nez p1, :cond_0

    .line 84
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->domain_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->domain_name:Ljava/lang/String;

    .line 77
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->ip:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->ip:Ljava/lang/String;

    .line 78
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->port:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->port:Ljava/lang/Integer;

    .line 79
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->protocol:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->protocol:Ljava/lang/Integer;

    .line 80
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->send_request:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->send_request:Ljava/lang/String;

    .line 81
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->valid_response:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->valid_response:Ljava/lang/String;

    .line 82
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->rtt_timeout:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->rtt_timeout:Ljava/lang/Integer;

    .line 83
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->detec_times:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->detec_times:Ljava/lang/Integer;

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
    instance-of v2, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 124
    :cond_2
    check-cast p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;

    .line 125
    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->domain_name:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->domain_name:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->ip:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->ip:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->port:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->port:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->protocol:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->protocol:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->send_request:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->send_request:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->valid_response:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->valid_response:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->rtt_timeout:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->rtt_timeout:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->detec_times:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->detec_times:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final fillTagValue(ILjava/lang/Object;)Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;
    .locals 0

    .prologue
    .line 90
    packed-switch p1, :pswitch_data_0

    .line 114
    :goto_0
    return-object p0

    .line 92
    :pswitch_0
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->domain_name:Ljava/lang/String;

    goto :goto_0

    .line 95
    :pswitch_1
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->ip:Ljava/lang/String;

    goto :goto_0

    .line 98
    :pswitch_2
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->port:Ljava/lang/Integer;

    goto :goto_0

    .line 101
    :pswitch_3
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->protocol:Ljava/lang/Integer;

    goto :goto_0

    .line 104
    :pswitch_4
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->send_request:Ljava/lang/String;

    goto :goto_0

    .line 107
    :pswitch_5
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->valid_response:Ljava/lang/String;

    goto :goto_0

    .line 110
    :pswitch_6
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->rtt_timeout:Ljava/lang/Integer;

    goto :goto_0

    .line 113
    :pswitch_7
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->detec_times:Ljava/lang/Integer;

    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 137
    iget v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->hashCode:I

    .line 138
    if-nez v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->domain_name:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->domain_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 140
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->ip:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->ip:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 141
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->port:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->port:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 142
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->protocol:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->protocol:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 143
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->send_request:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->send_request:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 144
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->valid_response:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->valid_response:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 145
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->rtt_timeout:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->rtt_timeout:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    .line 146
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->detec_times:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->detec_times:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 147
    iput v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;->hashCode:I

    .line 149
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 139
    goto :goto_0

    :cond_3
    move v0, v1

    .line 140
    goto :goto_1

    :cond_4
    move v0, v1

    .line 141
    goto :goto_2

    :cond_5
    move v0, v1

    .line 142
    goto :goto_3

    :cond_6
    move v0, v1

    .line 143
    goto :goto_4

    :cond_7
    move v0, v1

    .line 144
    goto :goto_5

    :cond_8
    move v0, v1

    .line 145
    goto :goto_6
.end method
