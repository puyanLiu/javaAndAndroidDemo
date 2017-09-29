.class public final Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;
.super Lcom/squareup/wire/Message;
.source "OperatePropertiesVO.java"


# static fields
.field public static final DEFAULT_DEFAULTORDER:Ljava/lang/String; = ""

.field public static final DEFAULT_DELETETYPE:Ljava/lang/String; = ""

.field public static final DEFAULT_TOPTYPE:Ljava/lang/String; = ""

.field public static final TAG_DEFAULTORDER:I = 0x3

.field public static final TAG_DELETETYPE:I = 0x2

.field public static final TAG_TOPTYPE:I = 0x1


# instance fields
.field public defaultOrder:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public deleteType:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public topType:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    .line 31
    if-nez p1, :cond_0

    .line 35
    :goto_0
    return-void

    .line 32
    :cond_0
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;->topType:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;->topType:Ljava/lang/String;

    .line 33
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;->deleteType:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;->deleteType:Ljava/lang/String;

    .line 34
    iget-object v0, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;->defaultOrder:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;->defaultOrder:Ljava/lang/String;

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

    .line 63
    :cond_0
    :goto_0
    return v0

    .line 59
    :cond_1
    instance-of v2, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 60
    :cond_2
    check-cast p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;

    .line 61
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;->topType:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;->topType:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 62
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;->deleteType:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;->deleteType:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 63
    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;->defaultOrder:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;->defaultOrder:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 61
    goto :goto_0
.end method

.method public final fillTagValue(ILjava/lang/Object;)Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;
    .locals 0

    .prologue
    .line 41
    packed-switch p1, :pswitch_data_0

    .line 50
    :goto_0
    return-object p0

    .line 43
    :pswitch_0
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;->topType:Ljava/lang/String;

    goto :goto_0

    .line 46
    :pswitch_1
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;->deleteType:Ljava/lang/String;

    goto :goto_0

    .line 49
    :pswitch_2
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;->defaultOrder:Ljava/lang/String;

    goto :goto_0

    .line 41
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

    .line 68
    iget v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;->hashCode:I

    .line 69
    if-nez v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;->topType:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;->topType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 71
    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;->deleteType:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;->deleteType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 72
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;->defaultOrder:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;->defaultOrder:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 73
    iput v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/OperatePropertiesVO;->hashCode:I

    .line 75
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 70
    goto :goto_0

    :cond_3
    move v0, v1

    .line 71
    goto :goto_1
.end method
