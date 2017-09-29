.class public final Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdMap;
.super Lcom/squareup/wire/Message;
.source "CmdMap.java"


# static fields
.field public static final DEFAULT_MAP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdKeyValue;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG_MAP:I = 0x1


# instance fields
.field public map:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdKeyValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdMap;->DEFAULT_MAP:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdMap;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    .line 23
    if-nez p1, :cond_0

    .line 25
    :goto_0
    return-void

    .line 24
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdMap;->map:Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdMap;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdMap;->map:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 42
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    .line 44
    :goto_0
    return v0

    .line 43
    :cond_0
    instance-of v0, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdMap;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdMap;->map:Ljava/util/List;

    check-cast p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdMap;

    iget-object v1, p1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdMap;->map:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdMap;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    goto :goto_0
.end method

.method public final fillTagValue(ILjava/lang/Object;)Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdMap;
    .locals 1

    .prologue
    .line 31
    packed-switch p1, :pswitch_data_0

    .line 34
    :goto_0
    return-object p0

    .line 33
    :pswitch_0
    check-cast p2, Ljava/util/List;

    invoke-static {p2}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdMap;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdMap;->map:Ljava/util/List;

    goto :goto_0

    .line 31
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdMap;->hashCode:I

    .line 50
    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdMap;->map:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdMap;->map:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/CmdMap;->hashCode:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method
