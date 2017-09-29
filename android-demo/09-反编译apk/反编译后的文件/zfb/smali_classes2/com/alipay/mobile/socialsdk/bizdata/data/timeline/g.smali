.class final Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/g;
.super Ljava/lang/Object;
.source "RemindDaoOp.java"

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
.field final synthetic a:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;

.field private final synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/g;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/g;->b:Ljava/util/List;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 7

    .prologue
    .line 1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/g;->b:Ljava/util/List;

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

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SyncRemind;

    iget-boolean v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SyncRemind;->isAdd:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SyncRemind;->remind:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;->isdelete:Z

    :cond_1
    :goto_1
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SyncRemind;->remind:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;

    iget-wide v3, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;->createTime:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/g;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->access$1(Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;)Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v3, "SocialSdk_Sdk_timeline_reminddaoop"

    const-string/jumbo v4, " \u50a8\u5b58sync\u6570\u636e\u65f6\uff0c\u65e0createTime\uff0c\u5148\u8d4b\u503c\u6210lastModifyTime"

    invoke-interface {v1, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SyncRemind;->remind:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;

    iget-object v3, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SyncRemind;->remind:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;

    iget-wide v3, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;->lastModifyTime:J

    iput-wide v3, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;->createTime:J

    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/g;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->access$0(Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SyncRemind;->remind:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SyncRemind;->remind:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;->isdelete:Z

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/g;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->access$0(Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iget-object v3, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SyncRemind;->remind:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;

    iget-object v3, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;->commentClientId:Ljava/lang/String;

    invoke-interface {v1, v3}, Lcom/j256/ormlite/dao/Dao;->queryForId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/g;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;

    invoke-static {v3}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->access$1(Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;)Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "SocialSdk_Sdk_timeline_reminddaoop"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, " \u5220\u9664\u4e86\u67d0\u6761\u8bc4\u8bba\uff0c\u4e4b\u524d\u7684\u5df2\u8bfb\u72b6\u6001\u4e3a\uff1a"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;->isRead:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SyncRemind;->remind:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;

    iget-boolean v1, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;->isRead:Z

    iput-boolean v1, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;->isRead:Z

    goto :goto_1
.end method
