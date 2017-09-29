.class public Lcom/alipay/mobile/emotion/util/EmotionModelFactory;
.super Ljava/lang/Object;
.source "EmotionModelFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildModel(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/emotion/model/EmoiPackageModel;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 20
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 22
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 36
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 48
    return-object v3

    .line 22
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;

    .line 24
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    move-object v1, v2

    .line 30
    :goto_2
    if-nez v1, :cond_7

    .line 31
    invoke-static {v0}, Lcom/alipay/mobile/emotion/util/EmotionModelFactory;->createBrifVOByEmoiPackageModel(Lcom/alipay/mobile/emotion/model/EmoiPackageModel;)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    move-result-object v0

    .line 33
    :goto_3
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 24
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    .line 25
    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->getId()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->packageId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    .line 36
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    .line 38
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_6

    move-object v1, v2

    .line 44
    :goto_4
    if-nez v1, :cond_0

    .line 45
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 38
    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;

    .line 39
    invoke-virtual {v1}, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->getId()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->packageId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_4

    :cond_7
    move-object v0, v1

    goto :goto_3
.end method

.method public static createBrifVOByEmoiPackageModel(Lcom/alipay/mobile/emotion/model/EmoiPackageModel;)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    invoke-direct {v0}, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;-><init>()V

    .line 54
    iget-object v1, p0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->bIconFid:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->iconFid:Ljava/lang/String;

    .line 55
    iget-object v1, p0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->packageId:Ljava/lang/String;

    .line 56
    iget-object v1, p0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->name:Ljava/lang/String;

    .line 57
    iget-object v1, p0, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->resUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->packageFid:Ljava/lang/String;

    .line 58
    return-object v0
.end method
