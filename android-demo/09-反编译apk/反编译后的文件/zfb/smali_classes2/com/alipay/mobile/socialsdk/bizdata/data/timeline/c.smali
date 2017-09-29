.class final Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/c;
.super Ljava/lang/Object;
.source "OptionsDaoOp.java"

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
.field final synthetic a:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;

.field private final synthetic b:Ljava/util/List;

.field private final synthetic c:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/c;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/c;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/c;->c:Ljava/util/List;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/c;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/c;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->access$1(Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;)Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_optionop"

    const-string/jumbo v2, " \u5220\u9664\u539f\u6709\u7684\u5df2\u53d1\u9001\u6570\u636e\u548c\u8d5e,\u5426\u5219\u65e0\u6cd5\u8986\u76d6\u6240\u6709"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/c;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;

    invoke-static {v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->access$0(Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string/jumbo v4, "feedId"

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->feedId:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v4, "optionId"

    invoke-virtual {v3, v4}, Lcom/j256/ormlite/stmt/Where;->isNotNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const-string/jumbo v5, "bizType"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    new-array v6, v7, [Lcom/j256/ormlite/stmt/Where;

    invoke-virtual {v3, v4, v5, v6}, Lcom/j256/ormlite/stmt/Where;->or(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    new-array v5, v7, [Lcom/j256/ormlite/stmt/Where;

    invoke-virtual {v3, v0, v4, v5}, Lcom/j256/ormlite/stmt/Where;->and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/c;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;

    invoke-static {v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->access$0(Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    goto :goto_1
.end method
