.class final Lcom/alipay/mobile/socialsdk/bizdata/data/o;
.super Ljava/lang/Object;
.source "RecommendationFriendDaoOp.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;

.field private final synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/o;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/o;->b:Ljava/util/List;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/o;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/o;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;

    iget-object v3, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->userId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->getRecommendationFriendById(Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v3, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->requestType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    iget v3, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->requestType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    move-object v0, v1

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/o;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->access$0(Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    goto :goto_0
.end method
