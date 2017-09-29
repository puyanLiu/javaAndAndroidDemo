.class Lcom/taobao/wswitch/service/ConfigCenterService$1;
.super Lcom/taobao/wswitch/api/service/IConfigCenterService$Stub;
.source "ConfigCenterService.java"


# instance fields
.field final synthetic this$0:Lcom/taobao/wswitch/service/ConfigCenterService;


# direct methods
.method constructor <init>(Lcom/taobao/wswitch/service/ConfigCenterService;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/taobao/wswitch/service/ConfigCenterService$1;->this$0:Lcom/taobao/wswitch/service/ConfigCenterService;

    invoke-direct {p0}, Lcom/taobao/wswitch/api/service/IConfigCenterService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addExtraGroup(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Lcom/taobao/wswitch/business/ConfigContainer;->getInstance()Lcom/taobao/wswitch/business/ConfigContainer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/wswitch/business/ConfigContainer;->addExtraGroup(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 59
    return-void
.end method

.method public addIntentActionGroupNames([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 104
    invoke-static {}, Lcom/taobao/wswitch/business/ConfigContainer;->getInstance()Lcom/taobao/wswitch/business/ConfigContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/wswitch/business/ConfigContainer;->addIntentActionNameMapping([Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 79
    invoke-static {}, Lcom/taobao/wswitch/business/ConfigContainer;->getInstance()Lcom/taobao/wswitch/business/ConfigContainer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/wswitch/business/ConfigContainer;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getConfigContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-static {p1}, Lcom/taobao/wswitch/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-object v0

    .line 90
    :cond_1
    invoke-static {}, Lcom/taobao/wswitch/business/ConfigContainer;->getInstance()Lcom/taobao/wswitch/business/ConfigContainer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/taobao/wswitch/business/ConfigContainer;->getConfigByGroupName(Ljava/lang/String;)Lcom/taobao/wswitch/model/Config;

    move-result-object v1

    .line 94
    if-eqz v1, :cond_0

    .line 97
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getConfigContentRecommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 122
    invoke-static {p2}, Lcom/taobao/wswitch/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-object v0

    .line 125
    :cond_1
    invoke-static {}, Lcom/taobao/wswitch/business/ConfigContainer;->getInstance()Lcom/taobao/wswitch/business/ConfigContainer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/taobao/wswitch/business/ConfigContainer;->getConfigByGroupName(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/wswitch/model/Config;

    move-result-object v1

    .line 129
    if-eqz v1, :cond_0

    .line 132
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getConfigRecommend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lcom/taobao/wswitch/business/ConfigContainer;->getInstance()Lcom/taobao/wswitch/business/ConfigContainer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/taobao/wswitch/business/ConfigContainer;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIntentActionNameByGroupName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    invoke-static {}, Lcom/taobao/wswitch/business/ConfigContainer;->getInstance()Lcom/taobao/wswitch/business/ConfigContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/wswitch/business/ConfigContainer;->getIntentActionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 43
    invoke-static {}, Lcom/taobao/wswitch/business/ConfigContainer;->getInstance()Lcom/taobao/wswitch/business/ConfigContainer;

    move-result-object v0

    iget-object v4, p0, Lcom/taobao/wswitch/service/ConfigCenterService$1;->this$0:Lcom/taobao/wswitch/service/ConfigCenterService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/wswitch/business/ConfigContainer;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Z[Ljava/lang/String;)V

    .line 48
    return-void
.end method
