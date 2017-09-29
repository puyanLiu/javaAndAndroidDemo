.class public Lcom/taobao/wswitch/xcmd/listener/WswitchXcmdExListener;
.super Ljava/lang/Object;
.source "WswitchXcmdExListener.java"


# static fields
.field private static wxl:Lcom/taobao/wswitch/xcmd/listener/WswitchXcmdExListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/taobao/wswitch/xcmd/listener/WswitchXcmdExListener;

    invoke-direct {v0}, Lcom/taobao/wswitch/xcmd/listener/WswitchXcmdExListener;-><init>()V

    sput-object v0, Lcom/taobao/wswitch/xcmd/listener/WswitchXcmdExListener;->wxl:Lcom/taobao/wswitch/xcmd/listener/WswitchXcmdExListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkUpdate(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/taobao/wswitch/model/XcmdGroupEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    invoke-direct {p0, p1}, Lcom/taobao/wswitch/xcmd/listener/WswitchXcmdExListener;->getMissedXcmdEntities(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 80
    :cond_2
    const-string/jumbo v0, "ConfigContainer"

    const-string/jumbo v1, "xcmd update entities is blank"

    invoke-static {v0, v1}, Lcom/taobao/wswitch/util/LogUtil;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_3
    :try_start_0
    const-string/jumbo v1, "ConfigContainer"

    const-string/jumbo v2, "XcmdSyncRequest run"

    invoke-static {v1, v2}, Lcom/taobao/wswitch/util/LogUtil;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    new-instance v1, Lcom/taobao/wswitch/net/request/XcmdSyncRequest;

    invoke-direct {v1, v0}, Lcom/taobao/wswitch/net/request/XcmdSyncRequest;-><init>(Ljava/util/List;)V

    .line 86
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    aput-object v3, v0, v2

    invoke-virtual {v1, v0}, Lcom/taobao/wswitch/net/request/XcmdSyncRequest;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    const-string/jumbo v1, "ConfigContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sync resources from cdn error,detail:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/taobao/wswitch/util/LogUtil;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getInstance()Lcom/taobao/wswitch/xcmd/listener/WswitchXcmdExListener;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/taobao/wswitch/xcmd/listener/WswitchXcmdExListener;->wxl:Lcom/taobao/wswitch/xcmd/listener/WswitchXcmdExListener;

    return-object v0
.end method

.method private getMissedXcmdEntities(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/taobao/wswitch/model/XcmdGroupEntity;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/taobao/wswitch/model/XcmdGroupEntity;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 94
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v8

    .line 135
    :goto_0
    return-object v0

    .line 97
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 98
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/taobao/wswitch/model/XcmdGroupEntity;

    .line 99
    invoke-static {v6}, Lcom/taobao/wswitch/util/EntityHelper;->isXcmdGroupEntityLegal(Lcom/taobao/wswitch/model/XcmdGroupEntity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    invoke-virtual {v6}, Lcom/taobao/wswitch/model/XcmdGroupEntity;->getG()Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-static {}, Lcom/taobao/wswitch/business/ConfigContainer;->getInstance()Lcom/taobao/wswitch/business/ConfigContainer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/taobao/wswitch/business/ConfigContainer;->isGroupEverRequested(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    invoke-virtual {v6}, Lcom/taobao/wswitch/model/XcmdGroupEntity;->getS()I

    move-result v0

    invoke-static {v0}, Lcom/taobao/wswitch/util/EntityHelper;->isForceUpdateNeeded(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 109
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 113
    :cond_3
    invoke-static {}, Lcom/taobao/wswitch/business/ConfigContainer;->getInstance()Lcom/taobao/wswitch/business/ConfigContainer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/taobao/wswitch/business/ConfigContainer;->getValidConfigByGroupName(Ljava/lang/String;)Lcom/taobao/wswitch/model/ValidConfig;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_2

    .line 115
    invoke-virtual {v0}, Lcom/taobao/wswitch/model/ValidConfig;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/taobao/wswitch/model/XcmdGroupEntity;->isOiContainsId(Ljava/lang/Long;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    const-wide/16 v4, 0x0

    .line 122
    invoke-virtual {v6}, Lcom/taobao/wswitch/model/XcmdGroupEntity;->getV()Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-static {v0}, Lcom/taobao/wswitch/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 124
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 127
    :cond_4
    invoke-static {v8, v1, v0}, Lcom/taobao/wswitch/util/ConfigStatusUtil;->enqueueIfAbsent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 128
    invoke-static {}, Lcom/taobao/wswitch/business/ConfigContainer;->getInstance()Lcom/taobao/wswitch/business/ConfigContainer;

    move-result-object v0

    invoke-virtual {v6}, Lcom/taobao/wswitch/model/XcmdGroupEntity;->getI()J

    move-result-wide v2

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/wswitch/business/ConfigContainer;->isGroupCacheMiss(Ljava/lang/String;JJ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    move-object v0, v7

    .line 135
    goto :goto_0
.end method

.method private getXcmdContent(Ljava/lang/String;)Lcom/taobao/wswitch/model/XcmdContent;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-static {p1}, Lcom/taobao/wswitch/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 71
    :goto_0
    return-object v0

    .line 66
    :cond_0
    :try_start_0
    const-class v0, Lcom/taobao/wswitch/model/XcmdContent;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/wswitch/model/XcmdContent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    const-string/jumbo v2, "ConfigContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "xcmd response to Object list error,content:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "detail:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/taobao/wswitch/util/LogUtil;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 71
    goto :goto_0
.end method


# virtual methods
.method public xcmdActionCenter(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 40
    invoke-static {p1}, Lcom/taobao/wswitch/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    const-string/jumbo v0, "ConfigContainer"

    const-string/jumbo v1, "xcmd content is blank!"

    invoke-static {v0, v1}, Lcom/taobao/wswitch/util/LogUtil;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    invoke-direct {p0, p1}, Lcom/taobao/wswitch/xcmd/listener/WswitchXcmdExListener;->getXcmdContent(Ljava/lang/String;)Lcom/taobao/wswitch/model/XcmdContent;

    move-result-object v1

    .line 45
    if-eqz v1, :cond_0

    .line 48
    invoke-virtual {v1}, Lcom/taobao/wswitch/model/XcmdContent;->getF()Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {v0}, Lcom/taobao/wswitch/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 50
    const-string/jumbo v0, "u"

    .line 52
    :cond_2
    invoke-virtual {v1}, Lcom/taobao/wswitch/model/XcmdContent;->getD()Ljava/util/List;

    move-result-object v1

    .line 53
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 54
    :cond_3
    const-string/jumbo v2, "ConfigContainer"

    const-string/jumbo v3, "xcmd action entities is blank!"

    invoke-static {v2, v3}, Lcom/taobao/wswitch/util/LogUtil;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_4
    const-string/jumbo v2, "u"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-direct {p0, v1}, Lcom/taobao/wswitch/xcmd/listener/WswitchXcmdExListener;->checkUpdate(Ljava/util/List;)V

    goto :goto_0
.end method
