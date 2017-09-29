.class public Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;
.super Ljava/lang/Object;
.source "Stage.java"


# instance fields
.field private appId:Ljava/lang/String;

.field private apps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;"
        }
    .end annotation
.end field

.field private maxNum:I

.field private maxShowNum:I

.field private refreshInterval:J

.field private reportInterval:J

.field private stageInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

.field private templateId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->apps:Ljava/util/List;

    return-object v0
.end method

.method public getMaxNum()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->maxNum:I

    return v0
.end method

.method public getMaxShowNum()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->maxShowNum:I

    return v0
.end method

.method public getRefreshInterval()J
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->refreshInterval:J

    return-wide v0
.end method

.method public getReportInterval()J
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->reportInterval:J

    return-wide v0
.end method

.method public getStageCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->stageInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->stageInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->getStageCode()Ljava/lang/String;

    move-result-object v0

    .line 30
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getTemplateId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->templateId:Ljava/lang/String;

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->appId:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setApps(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->apps:Ljava/util/List;

    .line 39
    return-void
.end method

.method public setMaxNum(I)V
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->maxNum:I

    .line 63
    return-void
.end method

.method public setMaxShowNum(I)V
    .locals 0

    .prologue
    .line 70
    iput p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->maxShowNum:I

    .line 71
    return-void
.end method

.method public setRefreshInterval(J)V
    .locals 0

    .prologue
    .line 46
    iput-wide p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->refreshInterval:J

    .line 47
    return-void
.end method

.method public setReportInterval(J)V
    .locals 0

    .prologue
    .line 54
    iput-wide p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->reportInterval:J

    .line 55
    return-void
.end method

.method public setStageInfo(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->stageInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    .line 24
    return-void
.end method

.method public setTemplateId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->templateId:Ljava/lang/String;

    .line 79
    return-void
.end method
