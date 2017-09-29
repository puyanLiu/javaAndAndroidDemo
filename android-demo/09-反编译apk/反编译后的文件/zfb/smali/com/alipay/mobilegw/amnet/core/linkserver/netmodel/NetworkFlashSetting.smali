.class public final Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkFlashSetting;
.super Lcom/squareup/wire/Message;
.source "NetworkFlashSetting.java"


# static fields
.field public static final DEFAULT_CONN_ALIVE_TIME:Ljava/lang/Integer;

.field public static final DEFAULT_DURATION:Ljava/lang/Integer;

.field public static final DEFAULT_LOOP:Ljava/lang/Integer;

.field public static final TAG_CONN_ALIVE_TIME:I = 0x3

.field public static final TAG_DURATION:I = 0x1

.field public static final TAG_LOOP:I = 0x2


# instance fields
.field public conn_alive_time:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public duration:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public loop:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/16 v0, 0xf

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkFlashSetting;->DEFAULT_DURATION:Ljava/lang/Integer;

    .line 17
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkFlashSetting;->DEFAULT_LOOP:Ljava/lang/Integer;

    .line 18
    const/16 v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkFlashSetting;->DEFAULT_CONN_ALIVE_TIME:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkFlashSetting;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    .line 37
    if-nez p1, :cond_0

    .line 41
    :goto_0
    return-void

    .line 38
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkFlashSetting;->duration:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkFlashSetting;->duration:Ljava/lang/Integer;

    .line 39
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkFlashSetting;->loop:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkFlashSetting;->loop:Ljava/lang/Integer;

    .line 40
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkFlashSetting;->conn_alive_time:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkFlashSetting;->conn_alive_time:Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 64
    if-ne p1, p0, :cond_1

    .line 67
    :cond_0
    :goto_0
    return v0

    .line 65
    :cond_1
    instance-of v2, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkFlashSetting;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 66
    :cond_2
    check-cast p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkFlashSetting;

    .line 67
    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkFlashSetting;->duration:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkFlashSetting;->duration:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkFlashSetting;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkFlashSetting;->loop:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkFlashSetting;->loop:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkFlashSetting;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkFlashSetting;->conn_alive_time:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkFlashSetting;->conn_alive_time:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkFlashSetting;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final fillTagValue(ILjava/lang/Object;)Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkFlashSetting;
    .locals 0

    .prologue
    .line 47
    packed-switch p1, :pswitch_data_0

    .line 56
    :goto_0
    return-object p0

    .line 49
    :pswitch_0
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkFlashSetting;->duration:Ljava/lang/Integer;

    goto :goto_0

    .line 52
    :pswitch_1
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkFlashSetting;->loop:Ljava/lang/Integer;

    goto :goto_0

    .line 55
    :pswitch_2
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkFlashSetting;->conn_alive_time:Ljava/lang/Integer;

    goto :goto_0

    .line 47
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

    .line 74
    iget v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkFlashSetting;->hashCode:I

    .line 75
    if-nez v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkFlashSetting;->duration:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkFlashSetting;->duration:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    .line 77
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkFlashSetting;->loop:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkFlashSetting;->loop:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 78
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkFlashSetting;->conn_alive_time:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkFlashSetting;->conn_alive_time:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 79
    iput v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkFlashSetting;->hashCode:I

    .line 81
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 76
    goto :goto_0

    :cond_3
    move v0, v1

    .line 77
    goto :goto_1
.end method
