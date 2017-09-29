.class public final Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/DNSResponse;
.super Lcom/squareup/wire/Message;
.source "DNSResponse.java"


# static fields
.field public static final DEFAULT_DOMAIN:Ljava/lang/String; = ""

.field public static final DEFAULT_IPS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdIpAddress;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_TTL:Ljava/lang/Integer;

.field public static final TAG_DOMAIN:I = 0x1

.field public static final TAG_IPS:I = 0x2

.field public static final TAG_TTL:I = 0x3


# instance fields
.field public domain:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public ips:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdIpAddress;",
            ">;"
        }
    .end annotation
.end field

.field public ttl:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/DNSResponse;->DEFAULT_IPS:Ljava/util/List;

    .line 22
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/DNSResponse;->DEFAULT_TTL:Ljava/lang/Integer;

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

.method public constructor <init>(Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/DNSResponse;)V
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
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/DNSResponse;->domain:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/DNSResponse;->domain:Ljava/lang/String;

    .line 43
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/DNSResponse;->ips:Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/DNSResponse;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/DNSResponse;->ips:Ljava/util/List;

    .line 44
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/DNSResponse;->ttl:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/DNSResponse;->ttl:Ljava/lang/Integer;

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
    instance-of v2, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/DNSResponse;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 70
    :cond_2
    check-cast p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/DNSResponse;

    .line 71
    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/DNSResponse;->domain:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/DNSResponse;->domain:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/DNSResponse;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/DNSResponse;->ips:Ljava/util/List;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/DNSResponse;->ips:Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/DNSResponse;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/DNSResponse;->ttl:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/DNSResponse;->ttl:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/DNSResponse;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final fillTagValue(ILjava/lang/Object;)Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/DNSResponse;
    .locals 1

    .prologue
    .line 51
    packed-switch p1, :pswitch_data_0

    .line 60
    :goto_0
    return-object p0

    .line 53
    :pswitch_0
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/DNSResponse;->domain:Ljava/lang/String;

    goto :goto_0

    .line 56
    :pswitch_1
    check-cast p2, Ljava/util/List;

    invoke-static {p2}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/DNSResponse;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/DNSResponse;->ips:Ljava/util/List;

    goto :goto_0

    .line 59
    :pswitch_2
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/DNSResponse;->ttl:Ljava/lang/Integer;

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
    iget v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/DNSResponse;->hashCode:I

    .line 79
    if-nez v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/DNSResponse;->domain:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/DNSResponse;->domain:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 81
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/DNSResponse;->ips:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/DNSResponse;->ips:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 82
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/DNSResponse;->ttl:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/DNSResponse;->ttl:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 83
    iput v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/DNSResponse;->hashCode:I

    .line 85
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 80
    goto :goto_0

    .line 81
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method
