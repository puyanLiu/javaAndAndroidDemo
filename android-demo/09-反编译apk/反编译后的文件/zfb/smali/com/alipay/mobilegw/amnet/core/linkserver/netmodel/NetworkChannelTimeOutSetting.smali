.class public final Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;
.super Lcom/squareup/wire/Message;
.source "NetworkChannelTimeOutSetting.java"


# static fields
.field public static final TAG_G2NET:I = 0x2

.field public static final TAG_G2WAP:I = 0x1

.field public static final TAG_G3:I = 0x3

.field public static final TAG_G4:I = 0x4

.field public static final TAG_OTHER:I = 0x6

.field public static final TAG_WIFI:I = 0x5


# instance fields
.field public g2net:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
    .end annotation
.end field

.field public g2wap:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
    .end annotation
.end field

.field public g3:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
    .end annotation
.end field

.field public g4:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
    .end annotation
.end field

.field public other:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
    .end annotation
.end field

.field public wifi:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    .line 52
    if-nez p1, :cond_0

    .line 59
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;->g2wap:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;->g2wap:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;

    .line 54
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;->g2net:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;->g2net:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;

    .line 55
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;->g3:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;->g3:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;

    .line 56
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;->g4:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;->g4:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;

    .line 57
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;->wifi:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;->wifi:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;

    .line 58
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;->other:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;->other:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 91
    if-ne p1, p0, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v0

    .line 92
    :cond_1
    instance-of v2, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 93
    :cond_2
    check-cast p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;

    .line 94
    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;->g2wap:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;->g2wap:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;->g2net:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;->g2net:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;->g3:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;->g3:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;->g4:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;->g4:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;->wifi:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;->wifi:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;->other:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;->other:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final fillTagValue(ILjava/lang/Object;)Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;
    .locals 0

    .prologue
    .line 65
    packed-switch p1, :pswitch_data_0

    .line 83
    :goto_0
    return-object p0

    .line 67
    :pswitch_0
    check-cast p2, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;->g2wap:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;

    goto :goto_0

    .line 70
    :pswitch_1
    check-cast p2, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;->g2net:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;

    goto :goto_0

    .line 73
    :pswitch_2
    check-cast p2, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;->g3:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;

    goto :goto_0

    .line 76
    :pswitch_3
    check-cast p2, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;->g4:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;

    goto :goto_0

    .line 79
    :pswitch_4
    check-cast p2, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;->wifi:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;

    goto :goto_0

    .line 82
    :pswitch_5
    check-cast p2, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;->other:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;

    goto :goto_0

    .line 65
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

    .line 104
    iget v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;->hashCode:I

    .line 105
    if-nez v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;->g2wap:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;->g2wap:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;

    invoke-virtual {v0}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;->hashCode()I

    move-result v0

    .line 107
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;->g2net:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;->g2net:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;

    invoke-virtual {v0}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 108
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;->g3:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;->g3:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;

    invoke-virtual {v0}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 109
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;->g4:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;->g4:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;

    invoke-virtual {v0}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 110
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;->wifi:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;->wifi:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;

    invoke-virtual {v0}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 111
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;->other:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;->other:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;

    invoke-virtual {v1}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetTimeOutSetting;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 112
    iput v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetworkChannelTimeOutSetting;->hashCode:I

    .line 114
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 106
    goto :goto_0

    :cond_3
    move v0, v1

    .line 107
    goto :goto_1

    :cond_4
    move v0, v1

    .line 108
    goto :goto_2

    :cond_5
    move v0, v1

    .line 109
    goto :goto_3

    :cond_6
    move v0, v1

    .line 110
    goto :goto_4
.end method
