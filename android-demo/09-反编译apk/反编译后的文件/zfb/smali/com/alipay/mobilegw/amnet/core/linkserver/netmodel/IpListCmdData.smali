.class public final Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpListCmdData;
.super Lcom/squareup/wire/Message;
.source "IpListCmdData.java"


# static fields
.field public static final DEFAULT_CODE:Ljava/lang/Integer;

.field public static final DEFAULT_DNS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/DNSResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG_CODE:I = 0x1

.field public static final TAG_DNS:I = 0x2


# instance fields
.field public code:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public dns:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/DNSResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpListCmdData;->DEFAULT_CODE:Ljava/lang/Integer;

    .line 22
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpListCmdData;->DEFAULT_DNS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpListCmdData;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    .line 35
    if-nez p1, :cond_0

    .line 38
    :goto_0
    return-void

    .line 36
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpListCmdData;->code:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpListCmdData;->code:Ljava/lang/Integer;

    .line 37
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpListCmdData;->dns:Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpListCmdData;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpListCmdData;->dns:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 58
    if-ne p1, p0, :cond_1

    .line 61
    :cond_0
    :goto_0
    return v0

    .line 59
    :cond_1
    instance-of v2, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpListCmdData;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 60
    :cond_2
    check-cast p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpListCmdData;

    .line 61
    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpListCmdData;->code:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpListCmdData;->code:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpListCmdData;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpListCmdData;->dns:Ljava/util/List;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpListCmdData;->dns:Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpListCmdData;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final fillTagValue(ILjava/lang/Object;)Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpListCmdData;
    .locals 1

    .prologue
    .line 44
    packed-switch p1, :pswitch_data_0

    .line 50
    :goto_0
    return-object p0

    .line 46
    :pswitch_0
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpListCmdData;->code:Ljava/lang/Integer;

    goto :goto_0

    .line 49
    :pswitch_1
    check-cast p2, Ljava/util/List;

    invoke-static {p2}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpListCmdData;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpListCmdData;->dns:Ljava/util/List;

    goto :goto_0

    .line 44
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 67
    iget v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpListCmdData;->hashCode:I

    .line 68
    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpListCmdData;->code:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpListCmdData;->code:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    .line 70
    :goto_0
    mul-int/lit8 v1, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpListCmdData;->dns:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpListCmdData;->dns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v1

    .line 71
    iput v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpListCmdData;->hashCode:I

    .line 73
    :cond_0
    return v0

    .line 69
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 70
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method
