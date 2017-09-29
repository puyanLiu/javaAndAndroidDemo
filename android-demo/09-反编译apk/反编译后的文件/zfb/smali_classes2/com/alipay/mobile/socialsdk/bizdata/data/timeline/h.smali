.class final Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/h;
.super Ljava/lang/Object;
.source "SceneDaoOp.java"

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
.field final synthetic a:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/SceneDaoOp;

.field private final synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/SceneDaoOp;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/h;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/SceneDaoOp;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/h;->b:Ljava/util/List;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/h;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/SceneDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/SceneDaoOp;->access$0(Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/SceneDaoOp;)Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_scenedaoop"

    const-string/jumbo v2, " \u6e05\u7a7a\u539f\u6709\u73b0\u573a\u6570\u636e"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/h;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/SceneDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/SceneDaoOp;->access$1(Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/SceneDaoOp;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/h;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/h;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Scene;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/h;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/SceneDaoOp;

    invoke-static {v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/SceneDaoOp;->access$1(Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/SceneDaoOp;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    goto :goto_0
.end method
