.class final Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/a;
.super Ljava/lang/Object;
.source "FeedsDaoOp.java"

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
.field final synthetic a:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

.field private final synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/a;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/a;->b:Ljava/util/List;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/a;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    invoke-static {v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->access$0(Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    goto :goto_0
.end method
