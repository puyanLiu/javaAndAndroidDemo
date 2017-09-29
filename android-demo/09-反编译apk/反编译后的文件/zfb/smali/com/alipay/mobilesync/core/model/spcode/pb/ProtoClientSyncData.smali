.class public final Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoClientSyncData;
.super Lcom/squareup/wire/Message;
.source "ProtoClientSyncData.java"


# static fields
.field public static final DEFAULT_BINARY_PAYLOAD:Lokio/ByteString;

.field public static final DEFAULT_BIZ_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_BIZ_TYPE:Ljava/lang/String; = ""

.field public static final DEFAULT_CMK:Ljava/lang/String; = ""

.field public static final DEFAULT_PAYLOAD:Ljava/lang/String; = ""

.field public static final TAG_BINARY_PAYLOAD:I = 0x5

.field public static final TAG_BIZ_ID:I = 0x3

.field public static final TAG_BIZ_TYPE:I = 0x1

.field public static final TAG_CMK:I = 0x2

.field public static final TAG_PAYLOAD:I = 0x4


# instance fields
.field public binary_payload:Lokio/ByteString;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->BYTES:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public biz_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public biz_type:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public cmk:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public payload:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    sput-object v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoClientSyncData;->DEFAULT_BINARY_PAYLOAD:Lokio/ByteString;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoClientSyncData;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    .line 43
    if-nez p1, :cond_0

    .line 49
    :goto_0
    return-void

    .line 44
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoClientSyncData;->biz_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoClientSyncData;->biz_type:Ljava/lang/String;

    .line 45
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoClientSyncData;->cmk:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoClientSyncData;->cmk:Ljava/lang/String;

    .line 46
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoClientSyncData;->biz_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoClientSyncData;->biz_id:Ljava/lang/String;

    .line 47
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoClientSyncData;->payload:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoClientSyncData;->payload:Ljava/lang/String;

    .line 48
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoClientSyncData;->binary_payload:Lokio/ByteString;

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoClientSyncData;->binary_payload:Lokio/ByteString;

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 78
    if-ne p1, p0, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v0

    .line 79
    :cond_1
    instance-of v2, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoClientSyncData;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 80
    :cond_2
    check-cast p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoClientSyncData;

    .line 81
    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoClientSyncData;->biz_type:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoClientSyncData;->biz_type:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoClientSyncData;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 82
    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoClientSyncData;->cmk:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoClientSyncData;->cmk:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoClientSyncData;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 83
    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoClientSyncData;->biz_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoClientSyncData;->biz_id:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoClientSyncData;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 84
    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoClientSyncData;->payload:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoClientSyncData;->payload:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoClientSyncData;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 85
    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoClientSyncData;->binary_payload:Lokio/ByteString;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoClientSyncData;->binary_payload:Lokio/ByteString;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoClientSyncData;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 81
    goto :goto_0
.end method

.method public final fillTagValue(ILjava/lang/Object;)Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoClientSyncData;
    .locals 0

    .prologue
    .line 55
    packed-switch p1, :pswitch_data_0

    .line 70
    :goto_0
    return-object p0

    .line 57
    :pswitch_0
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoClientSyncData;->biz_type:Ljava/lang/String;

    goto :goto_0

    .line 60
    :pswitch_1
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoClientSyncData;->cmk:Ljava/lang/String;

    goto :goto_0

    .line 63
    :pswitch_2
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoClientSyncData;->biz_id:Ljava/lang/String;

    goto :goto_0

    .line 66
    :pswitch_3
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoClientSyncData;->payload:Ljava/lang/String;

    goto :goto_0

    .line 69
    :pswitch_4
    check-cast p2, Lokio/ByteString;

    iput-object p2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoClientSyncData;->binary_payload:Lokio/ByteString;

    goto :goto_0

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 90
    iget v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoClientSyncData;->hashCode:I

    .line 91
    if-nez v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoClientSyncData;->biz_type:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoClientSyncData;->biz_type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 93
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoClientSyncData;->cmk:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoClientSyncData;->cmk:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 94
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoClientSyncData;->biz_id:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoClientSyncData;->biz_id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 95
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoClientSyncData;->payload:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoClientSyncData;->payload:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 96
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoClientSyncData;->binary_payload:Lokio/ByteString;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoClientSyncData;->binary_payload:Lokio/ByteString;

    invoke-virtual {v1}, Lokio/ByteString;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 97
    iput v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoClientSyncData;->hashCode:I

    .line 99
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 92
    goto :goto_0

    :cond_3
    move v0, v1

    .line 93
    goto :goto_1

    :cond_4
    move v0, v1

    .line 94
    goto :goto_2

    :cond_5
    move v0, v1

    .line 95
    goto :goto_3
.end method
