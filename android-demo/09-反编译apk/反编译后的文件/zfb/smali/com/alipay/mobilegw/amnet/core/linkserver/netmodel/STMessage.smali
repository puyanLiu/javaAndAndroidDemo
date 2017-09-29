.class public final Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/STMessage;
.super Lcom/squareup/wire/Message;
.source "STMessage.java"


# static fields
.field public static final DEFAULT_ACTION:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

.field public static final DEFAULT_CACHE_SESSION_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_USER_ID:Ljava/lang/String; = ""

.field public static final TAG_ACTION:I = 0x1

.field public static final TAG_CACHE_SESSION_ID:I = 0x3

.field public static final TAG_USER_ID:I = 0x2


# instance fields
.field public action:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public cache_session_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public user_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;->BACKGROUND:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/STMessage;->DEFAULT_ACTION:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/STMessage;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    .line 38
    if-nez p1, :cond_0

    .line 42
    :goto_0
    return-void

    .line 39
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/STMessage;->action:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/STMessage;->action:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    .line 40
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/STMessage;->user_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/STMessage;->user_id:Ljava/lang/String;

    .line 41
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/STMessage;->cache_session_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/STMessage;->cache_session_id:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 65
    if-ne p1, p0, :cond_1

    .line 68
    :cond_0
    :goto_0
    return v0

    .line 66
    :cond_1
    instance-of v2, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/STMessage;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 67
    :cond_2
    check-cast p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/STMessage;

    .line 68
    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/STMessage;->action:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/STMessage;->action:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/STMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/STMessage;->user_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/STMessage;->user_id:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/STMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/STMessage;->cache_session_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/STMessage;->cache_session_id:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/STMessage;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final fillTagValue(ILjava/lang/Object;)Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/STMessage;
    .locals 0

    .prologue
    .line 48
    packed-switch p1, :pswitch_data_0

    .line 57
    :goto_0
    return-object p0

    .line 50
    :pswitch_0
    check-cast p2, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/STMessage;->action:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    goto :goto_0

    .line 53
    :pswitch_1
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/STMessage;->user_id:Ljava/lang/String;

    goto :goto_0

    .line 56
    :pswitch_2
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/STMessage;->cache_session_id:Ljava/lang/String;

    goto :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 75
    iget v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/STMessage;->hashCode:I

    .line 76
    if-nez v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/STMessage;->action:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/STMessage;->action:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    invoke-virtual {v0}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;->hashCode()I

    move-result v0

    .line 78
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/STMessage;->user_id:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/STMessage;->user_id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 79
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/STMessage;->cache_session_id:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/STMessage;->cache_session_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 80
    iput v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/STMessage;->hashCode:I

    .line 82
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 77
    goto :goto_0

    :cond_3
    move v0, v1

    .line 78
    goto :goto_1
.end method
