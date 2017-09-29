.class public Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SceneRecord;
.super Ljava/lang/Object;
.source "SceneRecord.java"


# instance fields
.field public currentFeedId:Ljava/lang/String;

.field public friendFeedId:Ljava/lang/String;

.field public historyFeedId:Ljava/lang/String;

.field public officialFeedId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SceneRecord;->currentFeedId:Ljava/lang/String;

    .line 10
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SceneRecord;->historyFeedId:Ljava/lang/String;

    .line 11
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SceneRecord;->officialFeedId:Ljava/lang/String;

    .line 12
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SceneRecord;->friendFeedId:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public getCurrentFeedId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SceneRecord;->currentFeedId:Ljava/lang/String;

    return-object v0
.end method

.method public getFriendFeedId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SceneRecord;->friendFeedId:Ljava/lang/String;

    return-object v0
.end method

.method public getHistoryFeedId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SceneRecord;->historyFeedId:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveShowInfo(Lcom/alipay/mcomment/common/service/facade/model/LiveShowInfo;)V
    .locals 1

    .prologue
    .line 64
    if-nez p1, :cond_0

    .line 70
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SceneRecord;->currentFeedId:Ljava/lang/String;

    iput-object v0, p1, Lcom/alipay/mcomment/common/service/facade/model/LiveShowInfo;->currentFeedId:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SceneRecord;->officialFeedId:Ljava/lang/String;

    iput-object v0, p1, Lcom/alipay/mcomment/common/service/facade/model/LiveShowInfo;->officialFeedId:Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SceneRecord;->friendFeedId:Ljava/lang/String;

    iput-object v0, p1, Lcom/alipay/mcomment/common/service/facade/model/LiveShowInfo;->friendFeedId:Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SceneRecord;->historyFeedId:Ljava/lang/String;

    iput-object v0, p1, Lcom/alipay/mcomment/common/service/facade/model/LiveShowInfo;->hisotryFeedId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getOfficialFeedId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SceneRecord;->officialFeedId:Ljava/lang/String;

    return-object v0
.end method

.method public processEnterLiveShowInfo(Lcom/alipay/mcomment/common/service/facade/model/LiveShowInfo;)V
    .locals 1

    .prologue
    .line 47
    if-nez p1, :cond_0

    .line 61
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SceneRecord;->currentFeedId:Ljava/lang/String;

    iput-object v0, p1, Lcom/alipay/mcomment/common/service/facade/model/LiveShowInfo;->currentFeedId:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SceneRecord;->officialFeedId:Ljava/lang/String;

    iput-object v0, p1, Lcom/alipay/mcomment/common/service/facade/model/LiveShowInfo;->officialFeedId:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SceneRecord;->friendFeedId:Ljava/lang/String;

    iput-object v0, p1, Lcom/alipay/mcomment/common/service/facade/model/LiveShowInfo;->friendFeedId:Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SceneRecord;->historyFeedId:Ljava/lang/String;

    iput-object v0, p1, Lcom/alipay/mcomment/common/service/facade/model/LiveShowInfo;->hisotryFeedId:Ljava/lang/String;

    goto :goto_0
.end method

.method public setCurrentFeedId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SceneRecord;->currentFeedId:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setFriendFeedId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SceneRecord;->friendFeedId:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setHistoryFeedId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SceneRecord;->historyFeedId:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setOfficialFeedId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SceneRecord;->officialFeedId:Ljava/lang/String;

    .line 36
    return-void
.end method
