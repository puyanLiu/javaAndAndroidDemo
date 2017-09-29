.class public final Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;
.super Lcom/squareup/wire/Message;


# static fields
.field public static final DEFAULT_DISPLAYPAYCHANNEL:Ljava/lang/Boolean;

.field public static final DEFAULT_PAYCHANNELMODEL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_QUERYORNO:Ljava/lang/Boolean;

.field public static final DEFAULT_RESULTCODE:Ljava/lang/String; = ""

.field public static final DEFAULT_RESULTDES:Ljava/lang/String; = ""

.field public static final DEFAULT_SUCCESS:Ljava/lang/Boolean;

.field public static final TAG_DISPLAYPAYCHANNEL:I = 0x5

.field public static final TAG_PAYCHANNELMODEL:I = 0x6

.field public static final TAG_QUERYORNO:I = 0x4

.field public static final TAG_RESULTCODE:I = 0x2

.field public static final TAG_RESULTDES:I = 0x3

.field public static final TAG_SUCCESS:I = 0x1


# instance fields
.field public displayPayChannel:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public payChannelModel:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x6
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;",
            ">;"
        }
    .end annotation
.end field

.field public queryOrNo:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public resultCode:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public resultDes:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public success:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;->DEFAULT_SUCCESS:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;->DEFAULT_QUERYORNO:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;->DEFAULT_DISPLAYPAYCHANNEL:Ljava/lang/Boolean;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;->DEFAULT_PAYCHANNELMODEL:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;->success:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;->success:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;->resultCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;->resultCode:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;->resultDes:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;->resultDes:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;->queryOrNo:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;->queryOrNo:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;->displayPayChannel:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;->displayPayChannel:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;->payChannelModel:Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;->payChannelModel:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;

    iget-object v2, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;->success:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;->success:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;->resultCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;->resultCode:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;->resultDes:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;->resultDes:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;->queryOrNo:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;->queryOrNo:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;->displayPayChannel:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;->displayPayChannel:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;->payChannelModel:Ljava/util/List;

    iget-object v3, p1, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;->payChannelModel:Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final fillTagValue(ILjava/lang/Object;)Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object p0

    :pswitch_0
    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;->success:Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_1
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;->resultCode:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;->resultDes:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;->queryOrNo:Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_4
    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;->displayPayChannel:Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_5
    check-cast p2, Ljava/util/List;

    invoke-static {p2}, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;->payChannelModel:Ljava/util/List;

    goto :goto_0

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

    const/4 v1, 0x0

    iget v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;->hashCode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;->success:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;->success:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;->resultCode:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;->resultCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;->resultDes:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;->resultDes:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;->queryOrNo:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;->queryOrNo:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;->displayPayChannel:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;->displayPayChannel:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x25

    iget-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;->payChannelModel:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;->payChannelModel:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;->hashCode:I

    :cond_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_3

    :cond_6
    const/4 v0, 0x1

    goto :goto_4
.end method
