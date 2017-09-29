.class public final Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetectionSetting;
.super Lcom/squareup/wire/Message;
.source "NetWorkDetectionSetting.java"


# static fields
.field public static final DEFAULT_DETECTION_INTERVALUE:Ljava/lang/Integer;

.field public static final DEFAULT_DETEC_SWITCH:Ljava/lang/Boolean;

.field public static final DEFAULT_NETWORK_DETEC_ITEM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG_DETECTION_INTERVALUE:I = 0x2

.field public static final TAG_DETEC_SWITCH:I = 0x1

.field public static final TAG_NETWORK_DETEC_ITEM:I = 0x3


# instance fields
.field public detec_switch:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public detection_intervalue:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public network_detec_item:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x3
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetecItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetectionSetting;->DEFAULT_DETEC_SWITCH:Ljava/lang/Boolean;

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetectionSetting;->DEFAULT_DETECTION_INTERVALUE:Ljava/lang/Integer;

    .line 22
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetectionSetting;->DEFAULT_NETWORK_DETEC_ITEM:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetectionSetting;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    .line 41
    if-nez p1, :cond_0

    .line 45
    :goto_0
    return-void

    .line 42
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetectionSetting;->detec_switch:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetectionSetting;->detec_switch:Ljava/lang/Boolean;

    .line 43
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetectionSetting;->detection_intervalue:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetectionSetting;->detection_intervalue:Ljava/lang/Integer;

    .line 44
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetectionSetting;->network_detec_item:Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetectionSetting;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetectionSetting;->network_detec_item:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 68
    if-ne p1, p0, :cond_1

    .line 71
    :cond_0
    :goto_0
    return v0

    .line 69
    :cond_1
    instance-of v2, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetectionSetting;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 70
    :cond_2
    check-cast p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetectionSetting;

    .line 71
    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetectionSetting;->detec_switch:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetectionSetting;->detec_switch:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetectionSetting;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetectionSetting;->detection_intervalue:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetectionSetting;->detection_intervalue:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetectionSetting;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetectionSetting;->network_detec_item:Ljava/util/List;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetectionSetting;->network_detec_item:Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetectionSetting;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final fillTagValue(ILjava/lang/Object;)Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetectionSetting;
    .locals 1

    .prologue
    .line 51
    packed-switch p1, :pswitch_data_0

    .line 60
    :goto_0
    return-object p0

    .line 53
    :pswitch_0
    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetectionSetting;->detec_switch:Ljava/lang/Boolean;

    goto :goto_0

    .line 56
    :pswitch_1
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetectionSetting;->detection_intervalue:Ljava/lang/Integer;

    goto :goto_0

    .line 59
    :pswitch_2
    check-cast p2, Ljava/util/List;

    invoke-static {p2}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetectionSetting;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetectionSetting;->network_detec_item:Ljava/util/List;

    goto :goto_0

    .line 51
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

    .line 78
    iget v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetectionSetting;->hashCode:I

    .line 79
    if-nez v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetectionSetting;->detec_switch:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetectionSetting;->detec_switch:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    .line 81
    :goto_0
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetectionSetting;->detection_intervalue:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetectionSetting;->detection_intervalue:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 82
    mul-int/lit8 v1, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetectionSetting;->network_detec_item:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetectionSetting;->network_detec_item:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v1

    .line 83
    iput v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/NetWorkDetectionSetting;->hashCode:I

    .line 85
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 80
    goto :goto_0

    .line 82
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method
