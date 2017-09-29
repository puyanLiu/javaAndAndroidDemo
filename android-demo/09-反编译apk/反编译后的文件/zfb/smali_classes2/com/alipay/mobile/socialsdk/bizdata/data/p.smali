.class final Lcom/alipay/mobile/socialsdk/bizdata/data/p;
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

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/p;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/p;->b:Ljava/lang/String;

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/p;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/p;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->getRecommendationFriendById(Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->read:Z

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/p;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->access$0(Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
