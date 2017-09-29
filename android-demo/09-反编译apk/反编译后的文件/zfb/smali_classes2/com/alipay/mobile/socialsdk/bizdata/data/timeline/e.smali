.class final Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/e;
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


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/e;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/e;->b:Ljava/util/List;

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 8

    .prologue
    .line 1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SyncOption;

    iget-boolean v0, v6, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SyncOption;->isAdd:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/e;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->access$0(Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iget-object v1, v6, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SyncOption;->option:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/e;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->access$2(Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;)Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    move-result-object v0

    const-string/jumbo v1, "timelinedb"

    const-string/jumbo v2, "option"

    iget-object v3, v6, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SyncOption;->option:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;

    iget-object v3, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->clientOptionId:Ljava/lang/String;

    const-string/jumbo v4, "clientOptionId"

    const/4 v5, 0x1

    iget-object v6, v6, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SyncOption;->option:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/e;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->access$0(Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iget-object v1, v6, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SyncOption;->option:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/e;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->access$2(Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;)Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    move-result-object v0

    const-string/jumbo v1, "timelinedb"

    const-string/jumbo v2, "option"

    iget-object v3, v6, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SyncOption;->option:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;

    iget-object v3, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->clientOptionId:Ljava/lang/String;

    const-string/jumbo v4, "clientOptionId"

    const/4 v5, 0x2

    iget-object v6, v6, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SyncOption;->option:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0
.end method
