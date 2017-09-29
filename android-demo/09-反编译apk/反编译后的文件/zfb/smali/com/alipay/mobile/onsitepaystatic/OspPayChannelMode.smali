.class public Lcom/alipay/mobile/onsitepaystatic/OspPayChannelMode;
.super Ljava/lang/Object;


# instance fields
.field public assignedChannel:Ljava/lang/String;

.field public barCodeIndex:Ljava/lang/String;

.field public cardNo:Ljava/lang/String;

.field public channelIndex:Ljava/lang/String;

.field public channelName:Ljava/lang/String;

.field public channelType:Ljava/lang/String;

.field public enable:Ljava/lang/Boolean;

.field public index:Ljava/lang/Integer;

.field public prefixName:Ljava/lang/String;

.field public signId:Ljava/lang/String;

.field public suffixName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromGetInitArgsRes(Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;)Ljava/util/ArrayList;
    .locals 3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetInitArgsRes;->payChannelModel:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;

    invoke-static {v0}, Lcom/alipay/mobile/onsitepaystatic/OspPayChannelMode;->fromPBStruct(Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;)Lcom/alipay/mobile/onsitepaystatic/OspPayChannelMode;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static fromGetPayChannelRes(Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;)Ljava/util/ArrayList;
    .locals 3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/GetPayChannelRes;->payChannelModel:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;

    invoke-static {v0}, Lcom/alipay/mobile/onsitepaystatic/OspPayChannelMode;->fromPBStruct(Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;)Lcom/alipay/mobile/onsitepaystatic/OspPayChannelMode;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static fromPBStruct(Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;)Lcom/alipay/mobile/onsitepaystatic/OspPayChannelMode;
    .locals 2

    new-instance v0, Lcom/alipay/mobile/onsitepaystatic/OspPayChannelMode;

    invoke-direct {v0}, Lcom/alipay/mobile/onsitepaystatic/OspPayChannelMode;-><init>()V

    iget-object v1, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->index:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/alipay/mobile/onsitepaystatic/OspPayChannelMode;->index:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->prefixName:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/onsitepaystatic/OspPayChannelMode;->prefixName:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->suffixName:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/onsitepaystatic/OspPayChannelMode;->suffixName:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->channelName:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/onsitepaystatic/OspPayChannelMode;->channelName:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->cardNo:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/onsitepaystatic/OspPayChannelMode;->cardNo:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->barCodeIndex:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/onsitepaystatic/OspPayChannelMode;->barCodeIndex:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->signId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/onsitepaystatic/OspPayChannelMode;->signId:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->channelType:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/onsitepaystatic/OspPayChannelMode;->channelType:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->assignedChannel:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/onsitepaystatic/OspPayChannelMode;->assignedChannel:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->channelIndex:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/onsitepaystatic/OspPayChannelMode;->channelIndex:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/livetradeprod/core/model/rpc/pb/PayChannelModel;->enable:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/alipay/mobile/onsitepaystatic/OspPayChannelMode;->enable:Ljava/lang/Boolean;

    return-object v0
.end method
