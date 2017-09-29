.class public final Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;
.super Lcom/squareup/wire/Message;
.source "QuickReconnectTimeoutSetting.java"


# static fields
.field public static final DEFAULT_TG2NET:Ljava/lang/Integer;

.field public static final DEFAULT_TG2WAP:Ljava/lang/Integer;

.field public static final DEFAULT_TG3:Ljava/lang/Integer;

.field public static final DEFAULT_TG4:Ljava/lang/Integer;

.field public static final DEFAULT_TOTHER:Ljava/lang/Integer;

.field public static final DEFAULT_TWIFI:Ljava/lang/Integer;

.field public static final TAG_TG2NET:I = 0x2

.field public static final TAG_TG2WAP:I = 0x1

.field public static final TAG_TG3:I = 0x3

.field public static final TAG_TG4:I = 0x4

.field public static final TAG_TOTHER:I = 0x6

.field public static final TAG_TWIFI:I = 0x5


# instance fields
.field public tg2net:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public tg2wap:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public tg3:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public tg4:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public tother:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public twifi:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->UINT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->DEFAULT_TG2WAP:Ljava/lang/Integer;

    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->DEFAULT_TG2NET:Ljava/lang/Integer;

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->DEFAULT_TG3:Ljava/lang/Integer;

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->DEFAULT_TG4:Ljava/lang/Integer;

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->DEFAULT_TWIFI:Ljava/lang/Integer;

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->DEFAULT_TOTHER:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    .line 49
    if-nez p1, :cond_0

    .line 56
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->tg2wap:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->tg2wap:Ljava/lang/Integer;

    .line 51
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->tg2net:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->tg2net:Ljava/lang/Integer;

    .line 52
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->tg3:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->tg3:Ljava/lang/Integer;

    .line 53
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->tg4:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->tg4:Ljava/lang/Integer;

    .line 54
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->twifi:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->twifi:Ljava/lang/Integer;

    .line 55
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->tother:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->tother:Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 88
    if-ne p1, p0, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v0

    .line 89
    :cond_1
    instance-of v2, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 90
    :cond_2
    check-cast p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;

    .line 91
    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->tg2wap:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->tg2wap:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->tg2net:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->tg2net:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->tg3:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->tg3:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->tg4:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->tg4:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->twifi:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->twifi:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->tother:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->tother:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final fillTagValue(ILjava/lang/Object;)Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;
    .locals 0

    .prologue
    .line 62
    packed-switch p1, :pswitch_data_0

    .line 80
    :goto_0
    return-object p0

    .line 64
    :pswitch_0
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->tg2wap:Ljava/lang/Integer;

    goto :goto_0

    .line 67
    :pswitch_1
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->tg2net:Ljava/lang/Integer;

    goto :goto_0

    .line 70
    :pswitch_2
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->tg3:Ljava/lang/Integer;

    goto :goto_0

    .line 73
    :pswitch_3
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->tg4:Ljava/lang/Integer;

    goto :goto_0

    .line 76
    :pswitch_4
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->twifi:Ljava/lang/Integer;

    goto :goto_0

    .line 79
    :pswitch_5
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->tother:Ljava/lang/Integer;

    goto :goto_0

    .line 62
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 101
    iget v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->hashCode:I

    .line 102
    if-nez v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->tg2wap:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->tg2wap:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    .line 104
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->tg2net:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->tg2net:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 105
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->tg3:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->tg3:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 106
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->tg4:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->tg4:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 107
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->twifi:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->twifi:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 108
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->tother:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->tother:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 109
    iput v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/QuickReconnectTimeoutSetting;->hashCode:I

    .line 111
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 103
    goto :goto_0

    :cond_3
    move v0, v1

    .line 104
    goto :goto_1

    :cond_4
    move v0, v1

    .line 105
    goto :goto_2

    :cond_5
    move v0, v1

    .line 106
    goto :goto_3

    :cond_6
    move v0, v1

    .line 107
    goto :goto_4
.end method
