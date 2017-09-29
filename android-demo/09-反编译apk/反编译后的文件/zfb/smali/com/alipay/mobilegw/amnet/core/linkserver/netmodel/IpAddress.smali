.class public final Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;
.super Lcom/squareup/wire/Message;
.source "IpAddress.java"


# static fields
.field public static final DEFAULT_ACC_IP:Ljava/lang/String; = ""

.field public static final DEFAULT_ACC_PORT:Ljava/lang/Integer;

.field public static final DEFAULT_IP:Ljava/lang/String; = ""

.field public static final DEFAULT_PORT:Ljava/lang/Integer;

.field public static final DEFAULT_SCORE:Ljava/lang/Integer;

.field public static final DEFAULT_TYPE:Ljava/lang/Integer;

.field public static final TAG_ACC_IP:I = 0x4

.field public static final TAG_ACC_PORT:I = 0x5

.field public static final TAG_IP:I = 0x1

.field public static final TAG_PORT:I = 0x2

.field public static final TAG_SCORE:I = 0x6

.field public static final TAG_TYPE:I = 0x3


# instance fields
.field public acc_ip:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public acc_port:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public ip:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public port:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public score:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public type:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->DEFAULT_PORT:Ljava/lang/Integer;

    .line 22
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->DEFAULT_TYPE:Ljava/lang/Integer;

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->DEFAULT_ACC_PORT:Ljava/lang/Integer;

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->DEFAULT_SCORE:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    .line 50
    if-nez p1, :cond_0

    .line 57
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->ip:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->ip:Ljava/lang/String;

    .line 52
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->port:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->port:Ljava/lang/Integer;

    .line 53
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->type:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->type:Ljava/lang/Integer;

    .line 54
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->acc_ip:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->acc_ip:Ljava/lang/String;

    .line 55
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->acc_port:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->acc_port:Ljava/lang/Integer;

    .line 56
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->score:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->score:Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 89
    if-ne p1, p0, :cond_1

    .line 92
    :cond_0
    :goto_0
    return v0

    .line 90
    :cond_1
    instance-of v2, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 91
    :cond_2
    check-cast p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;

    .line 92
    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->ip:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->ip:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->port:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->port:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->type:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->type:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->acc_ip:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->acc_ip:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->acc_port:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->acc_port:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->score:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->score:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final fillTagValue(ILjava/lang/Object;)Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;
    .locals 0

    .prologue
    .line 63
    packed-switch p1, :pswitch_data_0

    .line 81
    :goto_0
    return-object p0

    .line 65
    :pswitch_0
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->ip:Ljava/lang/String;

    goto :goto_0

    .line 68
    :pswitch_1
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->port:Ljava/lang/Integer;

    goto :goto_0

    .line 71
    :pswitch_2
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->type:Ljava/lang/Integer;

    goto :goto_0

    .line 74
    :pswitch_3
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->acc_ip:Ljava/lang/String;

    goto :goto_0

    .line 77
    :pswitch_4
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->acc_port:Ljava/lang/Integer;

    goto :goto_0

    .line 80
    :pswitch_5
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->score:Ljava/lang/Integer;

    goto :goto_0

    .line 63
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

    .line 102
    iget v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->hashCode:I

    .line 103
    if-nez v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->ip:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->ip:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 105
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->port:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->port:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 106
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->type:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 107
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->acc_ip:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->acc_ip:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 108
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->acc_port:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->acc_port:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 109
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->score:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->score:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 110
    iput v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/IpAddress;->hashCode:I

    .line 112
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 104
    goto :goto_0

    :cond_3
    move v0, v1

    .line 105
    goto :goto_1

    :cond_4
    move v0, v1

    .line 106
    goto :goto_2

    :cond_5
    move v0, v1

    .line 107
    goto :goto_3

    :cond_6
    move v0, v1

    .line 108
    goto :goto_4
.end method
