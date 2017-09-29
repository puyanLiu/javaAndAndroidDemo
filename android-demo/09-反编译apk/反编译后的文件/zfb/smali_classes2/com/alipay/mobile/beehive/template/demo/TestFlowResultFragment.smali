.class public Lcom/alipay/mobile/beehive/template/demo/TestFlowResultFragment;
.super Lcom/alipay/mobile/beehive/template/fragment/BaseFlowResultFragment;
.source "TestFlowResultFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/template/fragment/BaseFlowResultFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 21
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/beehive/template/fragment/BaseFlowResultFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 22
    new-instance v0, Lcom/alipay/mobile/beehive/template/model/BaseResult;

    invoke-direct {v0}, Lcom/alipay/mobile/beehive/template/model/BaseResult;-><init>()V

    .line 23
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 24
    new-instance v2, Lcom/alipay/mobile/beehive/template/model/ResultFlow;

    invoke-direct {v2}, Lcom/alipay/mobile/beehive/template/model/ResultFlow;-><init>()V

    .line 25
    sget v3, Lcom/alipay/mobile/beehive/R$drawable;->flow1:I

    iput v3, v2, Lcom/alipay/mobile/beehive/template/model/ResultFlow;->iconId:I

    .line 26
    const-string/jumbo v3, "\u6210\u529f\u8f6c\u51651.00\u5143"

    iput-object v3, v2, Lcom/alipay/mobile/beehive/template/model/ResultFlow;->mainInfo:Ljava/lang/String;

    .line 27
    const-string/jumbo v3, "\u4eca\u5929"

    iput-object v3, v2, Lcom/alipay/mobile/beehive/template/model/ResultFlow;->secondaryInfo:Ljava/lang/String;

    .line 28
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    new-instance v2, Lcom/alipay/mobile/beehive/template/model/ResultFlow;

    invoke-direct {v2}, Lcom/alipay/mobile/beehive/template/model/ResultFlow;-><init>()V

    .line 30
    sget v3, Lcom/alipay/mobile/beehive/R$drawable;->flow2:I

    iput v3, v2, Lcom/alipay/mobile/beehive/template/model/ResultFlow;->iconId:I

    .line 31
    const-string/jumbo v3, "\u5f00\u59cb\u8ba1\u7b97\u6536\u76ca"

    iput-object v3, v2, Lcom/alipay/mobile/beehive/template/model/ResultFlow;->mainInfo:Ljava/lang/String;

    .line 32
    const-string/jumbo v3, "\u661f\u671f\u4e94"

    iput-object v3, v2, Lcom/alipay/mobile/beehive/template/model/ResultFlow;->secondaryInfo:Ljava/lang/String;

    .line 33
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v2, Lcom/alipay/mobile/beehive/template/model/ResultFlow;

    invoke-direct {v2}, Lcom/alipay/mobile/beehive/template/model/ResultFlow;-><init>()V

    .line 35
    sget v3, Lcom/alipay/mobile/beehive/R$drawable;->flow3:I

    iput v3, v2, Lcom/alipay/mobile/beehive/template/model/ResultFlow;->iconId:I

    .line 36
    const-string/jumbo v3, "sssssssss"

    iput-object v3, v2, Lcom/alipay/mobile/beehive/template/model/ResultFlow;->mainInfo:Ljava/lang/String;

    .line 37
    const-string/jumbo v3, "\u661f\u671f"

    iput-object v3, v2, Lcom/alipay/mobile/beehive/template/model/ResultFlow;->secondaryInfo:Ljava/lang/String;

    .line 38
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    iput-object v1, v0, Lcom/alipay/mobile/beehive/template/model/BaseResult;->resultFlows:Ljava/util/List;

    .line 40
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/template/demo/TestFlowResultFragment;->showResult(Lcom/alipay/mobile/beehive/template/model/BaseResult;)V

    .line 41
    return-void
.end method
