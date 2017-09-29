.class public final Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;
.super Lcom/squareup/wire/Message;
.source "ProtoOplog.java"


# static fields
.field public static final DEFAULT_APP_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_BINARY_PAYLOAD:Lokio/ByteString;

.field public static final DEFAULT_BIZ_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_EXT:Ljava/lang/String; = ""

.field public static final DEFAULT_MCT:Ljava/lang/Long;

.field public static final DEFAULT_MK:Ljava/lang/Long;

.field public static final DEFAULT_M_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_PAYLOAD:Ljava/lang/String; = ""

.field public static final DEFAULT_PUSH_DATA:Ljava/lang/String; = ""

.field public static final DEFAULT_SC:Ljava/lang/Integer;

.field public static final DEFAULT_ST:Ljava/lang/Integer;

.field public static final TAG_APP_ID:I = 0x6

.field public static final TAG_BINARY_PAYLOAD:I = 0x9

.field public static final TAG_BIZ_ID:I = 0x7

.field public static final TAG_EXT:I = 0xa

.field public static final TAG_MCT:I = 0x3

.field public static final TAG_MK:I = 0x4

.field public static final TAG_M_ID:I = 0x5

.field public static final TAG_PAYLOAD:I = 0x8

.field public static final TAG_PUSH_DATA:I = 0xb

.field public static final TAG_SC:I = 0x1

.field public static final TAG_ST:I = 0x2


# instance fields
.field public app_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public binary_payload:Lokio/ByteString;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->BYTES:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public biz_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public ext:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xa
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public m_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public mct:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public mk:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public payload:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public push_data:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xb
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public sc:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public st:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->DEFAULT_SC:Ljava/lang/Integer;

    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->DEFAULT_ST:Ljava/lang/Integer;

    .line 31
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->DEFAULT_MCT:Ljava/lang/Long;

    .line 32
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->DEFAULT_MK:Ljava/lang/Long;

    .line 37
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    sput-object v0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->DEFAULT_BINARY_PAYLOAD:Lokio/ByteString;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 91
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;)V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    .line 76
    if-nez p1, :cond_0

    .line 88
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->sc:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->sc:Ljava/lang/Integer;

    .line 78
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->st:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->st:Ljava/lang/Integer;

    .line 79
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->mct:Ljava/lang/Long;

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->mct:Ljava/lang/Long;

    .line 80
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->mk:Ljava/lang/Long;

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->mk:Ljava/lang/Long;

    .line 81
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->m_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->m_id:Ljava/lang/String;

    .line 82
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->app_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->app_id:Ljava/lang/String;

    .line 83
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->biz_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->biz_id:Ljava/lang/String;

    .line 84
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->payload:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->payload:Ljava/lang/String;

    .line 85
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->binary_payload:Lokio/ByteString;

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->binary_payload:Lokio/ByteString;

    .line 86
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->ext:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->ext:Ljava/lang/String;

    .line 87
    iget-object v0, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->push_data:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->push_data:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 135
    if-ne p1, p0, :cond_1

    .line 148
    :cond_0
    :goto_0
    return v0

    .line 136
    :cond_1
    instance-of v2, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 137
    :cond_2
    check-cast p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;

    .line 138
    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->sc:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->sc:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 139
    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->st:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->st:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 140
    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->mct:Ljava/lang/Long;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->mct:Ljava/lang/Long;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 141
    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->mk:Ljava/lang/Long;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->mk:Ljava/lang/Long;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 142
    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->m_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->m_id:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 143
    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->app_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->app_id:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 144
    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->biz_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->biz_id:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 145
    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->payload:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->payload:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 146
    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->binary_payload:Lokio/ByteString;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->binary_payload:Lokio/ByteString;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 147
    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->ext:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->ext:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 148
    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->push_data:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->push_data:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 138
    goto :goto_0
.end method

.method public final fillTagValue(ILjava/lang/Object;)Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;
    .locals 0

    .prologue
    .line 94
    packed-switch p1, :pswitch_data_0

    .line 127
    :goto_0
    return-object p0

    .line 96
    :pswitch_0
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->sc:Ljava/lang/Integer;

    goto :goto_0

    .line 99
    :pswitch_1
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->st:Ljava/lang/Integer;

    goto :goto_0

    .line 102
    :pswitch_2
    check-cast p2, Ljava/lang/Long;

    iput-object p2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->mct:Ljava/lang/Long;

    goto :goto_0

    .line 105
    :pswitch_3
    check-cast p2, Ljava/lang/Long;

    iput-object p2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->mk:Ljava/lang/Long;

    goto :goto_0

    .line 108
    :pswitch_4
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->m_id:Ljava/lang/String;

    goto :goto_0

    .line 111
    :pswitch_5
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->app_id:Ljava/lang/String;

    goto :goto_0

    .line 114
    :pswitch_6
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->biz_id:Ljava/lang/String;

    goto :goto_0

    .line 117
    :pswitch_7
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->payload:Ljava/lang/String;

    goto :goto_0

    .line 120
    :pswitch_8
    check-cast p2, Lokio/ByteString;

    iput-object p2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->binary_payload:Lokio/ByteString;

    goto :goto_0

    .line 123
    :pswitch_9
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->ext:Ljava/lang/String;

    goto :goto_0

    .line 126
    :pswitch_a
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->push_data:Ljava/lang/String;

    goto :goto_0

    .line 94
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
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 153
    iget v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->hashCode:I

    .line 154
    if-nez v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->sc:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->sc:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    .line 156
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->st:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->st:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 157
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->mct:Ljava/lang/Long;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->mct:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 158
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->mk:Ljava/lang/Long;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->mk:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 159
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->m_id:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->m_id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 160
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->app_id:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->app_id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 161
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->biz_id:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->biz_id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    .line 162
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->payload:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->payload:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    .line 163
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->binary_payload:Lokio/ByteString;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->binary_payload:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    .line 164
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->ext:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->ext:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v2

    .line 165
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->push_data:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->push_data:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 166
    iput v0, p0, Lcom/alipay/mobilesync/core/model/spcode/pb/ProtoOplog;->hashCode:I

    .line 168
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 155
    goto/16 :goto_0

    :cond_3
    move v0, v1

    .line 156
    goto :goto_1

    :cond_4
    move v0, v1

    .line 157
    goto :goto_2

    :cond_5
    move v0, v1

    .line 158
    goto :goto_3

    :cond_6
    move v0, v1

    .line 159
    goto :goto_4

    :cond_7
    move v0, v1

    .line 160
    goto :goto_5

    :cond_8
    move v0, v1

    .line 161
    goto :goto_6

    :cond_9
    move v0, v1

    .line 162
    goto :goto_7

    :cond_a
    move v0, v1

    .line 163
    goto :goto_8

    :cond_b
    move v0, v1

    .line 164
    goto :goto_9
.end method
