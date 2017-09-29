.class public final Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;
.super Lcom/squareup/wire/Message;
.source "FollowListReq.java"


# static fields
.field public static final DEFAULT_CHANNELPACKAGE:Ljava/lang/String; = ""

.field public static final DEFAULT_CLIENTVERSION:Ljava/lang/String; = ""

.field public static final DEFAULT_PAGENUM:Ljava/lang/Integer;

.field public static final DEFAULT_PAGESIZE:Ljava/lang/Integer;

.field public static final DEFAULT_PUBLICIDS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_SYNCBIZTYPE:Ljava/lang/String; = ""

.field public static final DEFAULT_TERMINAL:Ljava/lang/String; = ""

.field public static final DEFAULT_TOTALSIZE:Ljava/lang/Integer;

.field public static final TAG_CHANNELPACKAGE:I = 0x3

.field public static final TAG_CLIENTVERSION:I = 0x2

.field public static final TAG_PAGENUM:I = 0x6

.field public static final TAG_PAGESIZE:I = 0x7

.field public static final TAG_PUBLICIDS:I = 0x5

.field public static final TAG_SYNCBIZTYPE:I = 0x4

.field public static final TAG_TERMINAL:I = 0x1

.field public static final TAG_TOTALSIZE:I = 0x8


# instance fields
.field public channelPackage:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public clientVersion:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public pageNum:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public pageSize:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public publicIds:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public syncBizType:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public terminal:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public totalSize:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->DEFAULT_PUBLICIDS:Ljava/util/List;

    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->DEFAULT_PAGENUM:Ljava/lang/Integer;

    .line 31
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->DEFAULT_PAGESIZE:Ljava/lang/Integer;

    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->DEFAULT_TOTALSIZE:Ljava/lang/Integer;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 72
    return-void
.end method

.method public constructor <init>(Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    .line 60
    if-nez p1, :cond_0

    .line 69
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->terminal:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->terminal:Ljava/lang/String;

    .line 62
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->clientVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->clientVersion:Ljava/lang/String;

    .line 63
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->channelPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->channelPackage:Ljava/lang/String;

    .line 64
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->syncBizType:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->syncBizType:Ljava/lang/String;

    .line 65
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->publicIds:Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->publicIds:Ljava/util/List;

    .line 66
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->pageNum:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->pageNum:Ljava/lang/Integer;

    .line 67
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->pageSize:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->pageSize:Ljava/lang/Integer;

    .line 68
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->totalSize:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->totalSize:Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 107
    if-ne p1, p0, :cond_1

    .line 117
    :cond_0
    :goto_0
    return v0

    .line 108
    :cond_1
    instance-of v2, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 109
    :cond_2
    check-cast p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;

    .line 110
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->terminal:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->terminal:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 111
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->clientVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->clientVersion:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 112
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->channelPackage:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->channelPackage:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 113
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->syncBizType:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->syncBizType:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 114
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->publicIds:Ljava/util/List;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->publicIds:Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 115
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->pageNum:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->pageNum:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 116
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->pageSize:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->pageSize:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 117
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->totalSize:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->totalSize:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 110
    goto :goto_0
.end method

.method public final fillTagValue(ILjava/lang/Object;)Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;
    .locals 1

    .prologue
    .line 75
    packed-switch p1, :pswitch_data_0

    .line 99
    :goto_0
    return-object p0

    .line 77
    :pswitch_0
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->terminal:Ljava/lang/String;

    goto :goto_0

    .line 80
    :pswitch_1
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->clientVersion:Ljava/lang/String;

    goto :goto_0

    .line 83
    :pswitch_2
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->channelPackage:Ljava/lang/String;

    goto :goto_0

    .line 86
    :pswitch_3
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->syncBizType:Ljava/lang/String;

    goto :goto_0

    .line 89
    :pswitch_4
    check-cast p2, Ljava/util/List;

    invoke-static {p2}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->publicIds:Ljava/util/List;

    goto :goto_0

    .line 92
    :pswitch_5
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->pageNum:Ljava/lang/Integer;

    goto :goto_0

    .line 95
    :pswitch_6
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->pageSize:Ljava/lang/Integer;

    goto :goto_0

    .line 98
    :pswitch_7
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->totalSize:Ljava/lang/Integer;

    goto :goto_0

    .line 75
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

    .line 122
    iget v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->hashCode:I

    .line 123
    if-nez v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->terminal:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->terminal:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 125
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->clientVersion:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->clientVersion:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 126
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->channelPackage:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->channelPackage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 127
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->syncBizType:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->syncBizType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 128
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->publicIds:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->publicIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 129
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->pageNum:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->pageNum:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 130
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->pageSize:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->pageSize:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    .line 131
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->totalSize:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->totalSize:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 132
    iput v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/FollowListReq;->hashCode:I

    .line 134
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 124
    goto :goto_0

    :cond_3
    move v0, v1

    .line 125
    goto :goto_1

    :cond_4
    move v0, v1

    .line 126
    goto :goto_2

    :cond_5
    move v0, v1

    .line 127
    goto :goto_3

    .line 128
    :cond_6
    const/4 v0, 0x1

    goto :goto_4

    :cond_7
    move v0, v1

    .line 129
    goto :goto_5

    :cond_8
    move v0, v1

    .line 130
    goto :goto_6
.end method
