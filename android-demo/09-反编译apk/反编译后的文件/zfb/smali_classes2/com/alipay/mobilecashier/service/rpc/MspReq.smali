.class public final Lcom/alipay/mobilecashier/service/rpc/MspReq;
.super Lcom/squareup/wire/Message;
.source "MspReq.java"


# static fields
.field public static final DEFAULT_API_NM:Ljava/lang/String; = ""

.field public static final DEFAULT_API_NSP:Ljava/lang/String; = ""

.field public static final DEFAULT_API_VER:Ljava/lang/String; = ""

.field public static final DEFAULT_AUTH_KEY:Ljava/lang/String; = ""

.field public static final DEFAULT_DEVICE:Ljava/lang/String; = ""

.field public static final DEFAULT_IMEI:Ljava/lang/String; = ""

.field public static final DEFAULT_IMSI:Ljava/lang/String; = ""

.field public static final DEFAULT_MAC:Ljava/lang/String; = ""

.field public static final DEFAULT_OS_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_PARAMS:Ljava/lang/String; = ""

.field public static final DEFAULT_SESSION:Ljava/lang/String; = ""

.field public static final DEFAULT_TID:Ljava/lang/String; = ""

.field public static final DEFAULT_UA:Ljava/lang/String; = ""

.field public static final DEFAULT_VER:Ljava/lang/String; = ""

.field public static final TAG_API_NM:I = 0x2

.field public static final TAG_API_NSP:I = 0x1

.field public static final TAG_API_VER:I = 0x3

.field public static final TAG_AUTH_KEY:I = 0x5

.field public static final TAG_DEVICE:I = 0x8

.field public static final TAG_IMEI:I = 0xc

.field public static final TAG_IMSI:I = 0xb

.field public static final TAG_MAC:I = 0xd

.field public static final TAG_OS_ID:I = 0xe

.field public static final TAG_PARAMS:I = 0x4

.field public static final TAG_SESSION:I = 0x9

.field public static final TAG_TID:I = 0xa

.field public static final TAG_UA:I = 0x7

.field public static final TAG_VER:I = 0x6


# instance fields
.field public api_nm:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public api_nsp:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public api_ver:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public auth_key:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public device:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public imei:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xc
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public imsi:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xb
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public mac:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xd
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public os_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xe
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public params:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public session:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public tid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xa
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public ua:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public ver:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 116
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobilecashier/service/rpc/MspReq;)V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    .line 98
    if-nez p1, :cond_0

    .line 113
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobilecashier/service/rpc/MspReq;->api_nsp:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->api_nsp:Ljava/lang/String;

    .line 100
    iget-object v0, p1, Lcom/alipay/mobilecashier/service/rpc/MspReq;->api_nm:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->api_nm:Ljava/lang/String;

    .line 101
    iget-object v0, p1, Lcom/alipay/mobilecashier/service/rpc/MspReq;->api_ver:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->api_ver:Ljava/lang/String;

    .line 102
    iget-object v0, p1, Lcom/alipay/mobilecashier/service/rpc/MspReq;->params:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->params:Ljava/lang/String;

    .line 103
    iget-object v0, p1, Lcom/alipay/mobilecashier/service/rpc/MspReq;->auth_key:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->auth_key:Ljava/lang/String;

    .line 104
    iget-object v0, p1, Lcom/alipay/mobilecashier/service/rpc/MspReq;->ver:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->ver:Ljava/lang/String;

    .line 105
    iget-object v0, p1, Lcom/alipay/mobilecashier/service/rpc/MspReq;->ua:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->ua:Ljava/lang/String;

    .line 106
    iget-object v0, p1, Lcom/alipay/mobilecashier/service/rpc/MspReq;->device:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->device:Ljava/lang/String;

    .line 107
    iget-object v0, p1, Lcom/alipay/mobilecashier/service/rpc/MspReq;->session:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->session:Ljava/lang/String;

    .line 108
    iget-object v0, p1, Lcom/alipay/mobilecashier/service/rpc/MspReq;->tid:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->tid:Ljava/lang/String;

    .line 109
    iget-object v0, p1, Lcom/alipay/mobilecashier/service/rpc/MspReq;->imsi:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->imsi:Ljava/lang/String;

    .line 110
    iget-object v0, p1, Lcom/alipay/mobilecashier/service/rpc/MspReq;->imei:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->imei:Ljava/lang/String;

    .line 111
    iget-object v0, p1, Lcom/alipay/mobilecashier/service/rpc/MspReq;->mac:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->mac:Ljava/lang/String;

    .line 112
    iget-object v0, p1, Lcom/alipay/mobilecashier/service/rpc/MspReq;->os_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->os_id:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 169
    if-ne p1, p0, :cond_1

    .line 185
    :cond_0
    :goto_0
    return v0

    .line 170
    :cond_1
    instance-of v2, p1, Lcom/alipay/mobilecashier/service/rpc/MspReq;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 171
    :cond_2
    check-cast p1, Lcom/alipay/mobilecashier/service/rpc/MspReq;

    .line 172
    iget-object v2, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->api_nsp:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilecashier/service/rpc/MspReq;->api_nsp:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilecashier/service/rpc/MspReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 173
    iget-object v2, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->api_nm:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilecashier/service/rpc/MspReq;->api_nm:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilecashier/service/rpc/MspReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 174
    iget-object v2, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->api_ver:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilecashier/service/rpc/MspReq;->api_ver:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilecashier/service/rpc/MspReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 175
    iget-object v2, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->params:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilecashier/service/rpc/MspReq;->params:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilecashier/service/rpc/MspReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 176
    iget-object v2, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->auth_key:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilecashier/service/rpc/MspReq;->auth_key:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilecashier/service/rpc/MspReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 177
    iget-object v2, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->ver:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilecashier/service/rpc/MspReq;->ver:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilecashier/service/rpc/MspReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 178
    iget-object v2, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->ua:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilecashier/service/rpc/MspReq;->ua:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilecashier/service/rpc/MspReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 179
    iget-object v2, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->device:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilecashier/service/rpc/MspReq;->device:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilecashier/service/rpc/MspReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 180
    iget-object v2, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->session:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilecashier/service/rpc/MspReq;->session:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilecashier/service/rpc/MspReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 181
    iget-object v2, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->tid:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilecashier/service/rpc/MspReq;->tid:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilecashier/service/rpc/MspReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 182
    iget-object v2, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->imsi:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilecashier/service/rpc/MspReq;->imsi:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilecashier/service/rpc/MspReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 183
    iget-object v2, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->imei:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilecashier/service/rpc/MspReq;->imei:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilecashier/service/rpc/MspReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 184
    iget-object v2, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->mac:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilecashier/service/rpc/MspReq;->mac:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilecashier/service/rpc/MspReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 185
    iget-object v2, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->os_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilecashier/service/rpc/MspReq;->os_id:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilecashier/service/rpc/MspReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 172
    goto/16 :goto_0
.end method

.method public final fillTagValue(ILjava/lang/Object;)Lcom/alipay/mobilecashier/service/rpc/MspReq;
    .locals 0

    .prologue
    .line 119
    packed-switch p1, :pswitch_data_0

    .line 161
    :goto_0
    return-object p0

    .line 121
    :pswitch_0
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->api_nsp:Ljava/lang/String;

    goto :goto_0

    .line 124
    :pswitch_1
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->api_nm:Ljava/lang/String;

    goto :goto_0

    .line 127
    :pswitch_2
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->api_ver:Ljava/lang/String;

    goto :goto_0

    .line 130
    :pswitch_3
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->params:Ljava/lang/String;

    goto :goto_0

    .line 133
    :pswitch_4
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->auth_key:Ljava/lang/String;

    goto :goto_0

    .line 136
    :pswitch_5
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->ver:Ljava/lang/String;

    goto :goto_0

    .line 139
    :pswitch_6
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->ua:Ljava/lang/String;

    goto :goto_0

    .line 142
    :pswitch_7
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->device:Ljava/lang/String;

    goto :goto_0

    .line 145
    :pswitch_8
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->session:Ljava/lang/String;

    goto :goto_0

    .line 148
    :pswitch_9
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->tid:Ljava/lang/String;

    goto :goto_0

    .line 151
    :pswitch_a
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->imsi:Ljava/lang/String;

    goto :goto_0

    .line 154
    :pswitch_b
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->imei:Ljava/lang/String;

    goto :goto_0

    .line 157
    :pswitch_c
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->mac:Ljava/lang/String;

    goto :goto_0

    .line 160
    :pswitch_d
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->os_id:Ljava/lang/String;

    goto :goto_0

    .line 119
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
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 190
    iget v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->hashCode:I

    .line 191
    if-nez v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->api_nsp:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->api_nsp:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 193
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->api_nm:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->api_nm:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 194
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->api_ver:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->api_ver:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 195
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->params:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->params:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 196
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->auth_key:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->auth_key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 197
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->ver:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->ver:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 198
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->ua:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->ua:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    .line 199
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->device:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->device:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    .line 200
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->session:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->session:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    .line 201
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->tid:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->tid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v2

    .line 202
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->imsi:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->imsi:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    add-int/2addr v0, v2

    .line 203
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->imei:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->imei:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    add-int/2addr v0, v2

    .line 204
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->mac:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->mac:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_c
    add-int/2addr v0, v2

    .line 205
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->os_id:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->os_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 206
    iput v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq;->hashCode:I

    .line 208
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 192
    goto/16 :goto_0

    :cond_3
    move v0, v1

    .line 193
    goto/16 :goto_1

    :cond_4
    move v0, v1

    .line 194
    goto/16 :goto_2

    :cond_5
    move v0, v1

    .line 195
    goto/16 :goto_3

    :cond_6
    move v0, v1

    .line 196
    goto/16 :goto_4

    :cond_7
    move v0, v1

    .line 197
    goto :goto_5

    :cond_8
    move v0, v1

    .line 198
    goto :goto_6

    :cond_9
    move v0, v1

    .line 199
    goto :goto_7

    :cond_a
    move v0, v1

    .line 200
    goto :goto_8

    :cond_b
    move v0, v1

    .line 201
    goto :goto_9

    :cond_c
    move v0, v1

    .line 202
    goto :goto_a

    :cond_d
    move v0, v1

    .line 203
    goto :goto_b

    :cond_e
    move v0, v1

    .line 204
    goto :goto_c
.end method
