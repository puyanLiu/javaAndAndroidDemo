.class public final Lcom/alipay/mobilecashier/service/rpc/MspRes;
.super Lcom/squareup/wire/Message;
.source "MspRes.java"


# static fields
.field public static final DEFAULT_API_NM:Ljava/lang/String; = ""

.field public static final DEFAULT_API_NSP:Ljava/lang/String; = ""

.field public static final DEFAULT_API_VER:Ljava/lang/String; = ""

.field public static final DEFAULT_CODE:Ljava/lang/String; = ""

.field public static final DEFAULT_ERR_MSG:Ljava/lang/String; = ""

.field public static final DEFAULT_MSPPARAM:Ljava/lang/String; = ""

.field public static final DEFAULT_PARAMS:Ljava/lang/String; = ""

.field public static final TAG_API_NM:I = 0x2

.field public static final TAG_API_NSP:I = 0x1

.field public static final TAG_API_VER:I = 0x3

.field public static final TAG_CODE:I = 0x5

.field public static final TAG_ERR_MSG:I = 0x6

.field public static final TAG_MSPPARAM:I = 0x7

.field public static final TAG_PARAMS:I = 0x4


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

.field public code:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public err_msg:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public mspParam:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public params:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 83
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobilecashier/service/rpc/MspRes;)V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    .line 72
    if-nez p1, :cond_0

    .line 80
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobilecashier/service/rpc/MspRes;->api_nsp:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes;->api_nsp:Ljava/lang/String;

    .line 74
    iget-object v0, p1, Lcom/alipay/mobilecashier/service/rpc/MspRes;->api_nm:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes;->api_nm:Ljava/lang/String;

    .line 75
    iget-object v0, p1, Lcom/alipay/mobilecashier/service/rpc/MspRes;->api_ver:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes;->api_ver:Ljava/lang/String;

    .line 76
    iget-object v0, p1, Lcom/alipay/mobilecashier/service/rpc/MspRes;->params:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes;->params:Ljava/lang/String;

    .line 77
    iget-object v0, p1, Lcom/alipay/mobilecashier/service/rpc/MspRes;->code:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes;->code:Ljava/lang/String;

    .line 78
    iget-object v0, p1, Lcom/alipay/mobilecashier/service/rpc/MspRes;->err_msg:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes;->err_msg:Ljava/lang/String;

    .line 79
    iget-object v0, p1, Lcom/alipay/mobilecashier/service/rpc/MspRes;->mspParam:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes;->mspParam:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 115
    if-ne p1, p0, :cond_1

    .line 124
    :cond_0
    :goto_0
    return v0

    .line 116
    :cond_1
    instance-of v2, p1, Lcom/alipay/mobilecashier/service/rpc/MspRes;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 117
    :cond_2
    check-cast p1, Lcom/alipay/mobilecashier/service/rpc/MspRes;

    .line 118
    iget-object v2, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes;->api_nsp:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilecashier/service/rpc/MspRes;->api_nsp:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilecashier/service/rpc/MspRes;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 119
    iget-object v2, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes;->api_nm:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilecashier/service/rpc/MspRes;->api_nm:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilecashier/service/rpc/MspRes;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 120
    iget-object v2, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes;->api_ver:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilecashier/service/rpc/MspRes;->api_ver:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilecashier/service/rpc/MspRes;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 121
    iget-object v2, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes;->params:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilecashier/service/rpc/MspRes;->params:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilecashier/service/rpc/MspRes;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 122
    iget-object v2, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes;->code:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilecashier/service/rpc/MspRes;->code:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilecashier/service/rpc/MspRes;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 123
    iget-object v2, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes;->err_msg:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilecashier/service/rpc/MspRes;->err_msg:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilecashier/service/rpc/MspRes;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 124
    iget-object v2, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes;->mspParam:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilecashier/service/rpc/MspRes;->mspParam:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilecashier/service/rpc/MspRes;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 118
    goto :goto_0
.end method

.method public final fillTagValue(ILjava/lang/Object;)Lcom/alipay/mobilecashier/service/rpc/MspRes;
    .locals 0

    .prologue
    .line 86
    packed-switch p1, :pswitch_data_0

    .line 107
    :goto_0
    return-object p0

    .line 88
    :pswitch_0
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes;->api_nsp:Ljava/lang/String;

    goto :goto_0

    .line 91
    :pswitch_1
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes;->api_nm:Ljava/lang/String;

    goto :goto_0

    .line 94
    :pswitch_2
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes;->api_ver:Ljava/lang/String;

    goto :goto_0

    .line 97
    :pswitch_3
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes;->params:Ljava/lang/String;

    goto :goto_0

    .line 100
    :pswitch_4
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes;->code:Ljava/lang/String;

    goto :goto_0

    .line 103
    :pswitch_5
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes;->err_msg:Ljava/lang/String;

    goto :goto_0

    .line 106
    :pswitch_6
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes;->mspParam:Ljava/lang/String;

    goto :goto_0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 129
    iget v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes;->hashCode:I

    .line 130
    if-nez v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes;->api_nsp:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes;->api_nsp:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 132
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes;->api_nm:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes;->api_nm:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 133
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes;->api_ver:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes;->api_ver:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 134
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes;->params:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes;->params:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 135
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes;->code:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes;->code:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 136
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes;->err_msg:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes;->err_msg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 137
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes;->mspParam:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes;->mspParam:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 138
    iput v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes;->hashCode:I

    .line 140
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 131
    goto :goto_0

    :cond_3
    move v0, v1

    .line 132
    goto :goto_1

    :cond_4
    move v0, v1

    .line 133
    goto :goto_2

    :cond_5
    move v0, v1

    .line 134
    goto :goto_3

    :cond_6
    move v0, v1

    .line 135
    goto :goto_4

    :cond_7
    move v0, v1

    .line 136
    goto :goto_5
.end method
