.class public Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;
.super Ljava/lang/Object;
.source "OptionsDaoOp.java"

# interfaces
.implements Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;


# instance fields
.field private final a:Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

.field private b:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

.field private d:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    .line 42
    invoke-static {}, Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;->getInstance()Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;

    const-string/jumbo v2, "option"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;->getDbDao(Ljava/lang/Class;Ljava/lang/String;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    .line 46
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 47
    const-class v1, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    .line 46
    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->d:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    .line 48
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;)Lcom/j256/ormlite/dao/Dao;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;)Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;)Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->d:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    return-object v0
.end method


# virtual methods
.method public checkIsGood()Z
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteOption(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;Z)V
    .locals 7

    .prologue
    .line 204
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_optionop"

    const-string/jumbo v2, " \u6570\u636e\u5e93\u672a\u521d\u59cb\u5316"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    if-nez p1, :cond_2

    .line 209
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_optionop"

    const-string/jumbo v2, " \u65e0\u53ef\u64cd\u4f5c\u6570\u636e"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :cond_2
    :try_start_0
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/lang/Object;)I

    move-result v0

    .line 215
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    if-eqz p2, :cond_0

    if-lez v0, :cond_0

    .line 219
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->d:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "timelinedb"

    .line 220
    const-string/jumbo v2, "option"

    iget-object v3, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->clientOptionId:Ljava/lang/String;

    .line 221
    const-string/jumbo v4, "clientOptionId"

    const/4 v5, 0x2

    move-object v6, p1

    .line 219
    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk_timeline_optionop"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 215
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method public deleteOption(Ljava/lang/String;Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;Z)V
    .locals 7

    .prologue
    .line 185
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_optionop"

    const-string/jumbo v2, " \u6570\u636e\u5e93\u672a\u521d\u59cb\u5316"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :goto_0
    return-void

    .line 191
    :cond_0
    :try_start_0
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->deleteById(Ljava/lang/Object;)I

    .line 191
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->d:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "timelinedb"

    .line 195
    const-string/jumbo v2, "option"

    iget-object v3, p2, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->clientOptionId:Ljava/lang/String;

    .line 196
    const-string/jumbo v4, "clientOptionId"

    const/4 v5, 0x2

    move-object v6, p2

    .line 194
    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk_timeline_optionop"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 191
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method public deleteOption(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_optionop"

    const-string/jumbo v2, " \u6570\u636e\u5e93\u672a\u521d\u59cb\u5316"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :goto_0
    return-void

    .line 176
    :cond_0
    :try_start_0
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->deleteById(Ljava/lang/Object;)I

    .line 176
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 179
    :catch_0
    move-exception v0

    .line 180
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk_timeline_optionop"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public findLikeByFeedIdAndUserId(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 231
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk_timeline_optionop"

    const-string/jumbo v3, " \u6570\u636e\u5e93\u672a\u521d\u59cb\u5316"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :goto_0
    return-object v1

    .line 235
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk_timeline_optionop"

    const-string/jumbo v3, " \u65e0\u6cd5\u5224\u65ad\u8981\u67e5\u627e\u7684\u8d5e\u662f\u54ea\u4e00\u6761"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 241
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v2, "feedId"

    invoke-virtual {v0, v2, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v2, "userId"

    invoke-virtual {v0, v2, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v2, "bizType"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 243
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, v0

    .line 247
    goto :goto_0

    .line 244
    :catch_0
    move-exception v0

    .line 245
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk_timeline_optionop"

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1
.end method

.method public getOptionsByFeedId(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 334
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 335
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk_timeline_optionop"

    const-string/jumbo v3, " \u7f3a\u4e4f\u67e5\u8be2option\u5173\u952e\u5b57\u6bb5"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :goto_0
    return-object v0

    .line 338
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 341
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    const-string/jumbo v3, "createTime"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string/jumbo v3, "feedId"

    invoke-virtual {v2, v3, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    .line 344
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v2

    .line 345
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3, v2}, Lcom/j256/ormlite/dao/Dao;->getWrappedIterable(Lcom/j256/ormlite/stmt/PreparedQuery;)Lcom/j256/ormlite/dao/CloseableWrappedIterable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 346
    :try_start_1
    invoke-interface {v2}, Lcom/j256/ormlite/dao/CloseableWrappedIterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    .line 354
    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk_timeline_optionop"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, " \u67e5\u8be2option \u7ed3\u675f size="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 356
    goto :goto_0

    .line 346
    :cond_1
    :try_start_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;

    .line 347
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 349
    :catch_0
    move-exception v0

    .line 350
    :goto_3
    :try_start_3
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v4, "SocialSdk_Sdk_timeline_optionop"

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 352
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    goto :goto_2

    .line 351
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 352
    :goto_4
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    .line 353
    throw v0

    .line 351
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 349
    :catch_1
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_3
.end method

.method public getOptionsById(Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 360
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk_timeline_optionop"

    const-string/jumbo v3, " \u6570\u636e\u5e93\u672a\u521d\u59cb\u5316"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    :goto_0
    return-object v1

    .line 364
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 365
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk_timeline_optionop"

    const-string/jumbo v3, " \u7f3a\u5c11\u5173\u952e\u5b57\u6bb5clientOptionId"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 370
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->queryForId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, v0

    .line 374
    goto :goto_0

    .line 371
    :catch_0
    move-exception v0

    .line 372
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk_timeline_optionop"

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1
.end method

.method public loadOptionsByFeedsId(Ljava/util/List;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 300
    if-nez p1, :cond_0

    .line 301
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk_timeline_optionop"

    const-string/jumbo v4, " \u65e0\u67e5\u8be2\u6570\u636e"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :goto_0
    return-object v1

    .line 304
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 307
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    const-string/jumbo v4, "createTime"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string/jumbo v4, "feedId"

    invoke-virtual {v2, v4, p1}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    .line 310
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v2

    .line 311
    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4, v2}, Lcom/j256/ormlite/dao/Dao;->getWrappedIterable(Lcom/j256/ormlite/stmt/PreparedQuery;)Lcom/j256/ormlite/dao/CloseableWrappedIterable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 312
    :try_start_1
    invoke-interface {v4}, Lcom/j256/ormlite/dao/CloseableWrappedIterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    if-nez v1, :cond_1

    .line 324
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    .line 326
    :goto_2
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk_timeline_optionop"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, " \u67e5\u8be2option \u7ed3\u675f size="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    .line 327
    goto :goto_0

    .line 312
    :cond_1
    :try_start_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;

    move-object v2, v0

    .line 313
    iget-object v1, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->feedId:Ljava/lang/String;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 314
    if-nez v1, :cond_2

    .line 315
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 317
    :cond_2
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    iget-object v2, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->feedId:Ljava/lang/String;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 321
    :catch_0
    move-exception v1

    move-object v2, v4

    .line 322
    :goto_3
    :try_start_3
    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v5, "SocialSdk_Sdk_timeline_optionop"

    invoke-interface {v4, v5, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 324
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    goto :goto_2

    .line 323
    :catchall_0
    move-exception v2

    move-object v4, v1

    move-object v1, v2

    .line 324
    :goto_4
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    .line 325
    throw v1

    .line 323
    :catchall_1
    move-exception v1

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v4, v2

    goto :goto_4

    .line 321
    :catch_1
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_3
.end method

.method public saveOptions(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_optionop"

    const-string/jumbo v2, " \u6570\u636e\u5e93\u672a\u521d\u59cb\u5316"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :goto_0
    return-void

    .line 99
    :cond_0
    if-nez p1, :cond_1

    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_optionop"

    const-string/jumbo v2, " \u65e0\u53ef\u5b58\u50a8\u6570\u636e"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_1
    :try_start_0
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    new-instance v2, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/d;

    invoke-direct {v2, p0, p1}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/d;-><init>(Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;Ljava/util/List;)V

    invoke-interface {v0, v2}, Lcom/j256/ormlite/dao/Dao;->callBatchTasks(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 104
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk_timeline_optionop"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public saveOptionsAndDeleteFeedSOptions(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_optionop"

    const-string/jumbo v2, " \u6570\u636e\u5e93\u672a\u521d\u59cb\u5316"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :goto_0
    return-void

    .line 61
    :cond_0
    if-nez p1, :cond_1

    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_optionop"

    const-string/jumbo v2, " \u65e0\u53ef\u5b58\u50a8\u6570\u636e"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_1
    :try_start_0
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    new-instance v2, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/c;

    invoke-direct {v2, p0, p2, p1}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/c;-><init>(Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v0, v2}, Lcom/j256/ormlite/dao/Dao;->callBatchTasks(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 66
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk_timeline_optionop"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public saveSingleOption(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;Z)V
    .locals 7

    .prologue
    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_optionop"

    const-string/jumbo v2, " \u6570\u636e\u5e93\u672a\u521d\u59cb\u5316"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    :try_start_0
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    .line 129
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    if-eqz p2, :cond_0

    .line 133
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->d:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "timelinedb"

    .line 134
    const-string/jumbo v2, "option"

    iget-object v3, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->clientOptionId:Ljava/lang/String;

    .line 135
    const-string/jumbo v4, "clientOptionId"

    const/4 v5, 0x1

    move-object v6, p1

    .line 133
    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk_timeline_optionop"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method public saveSyncOptions(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SyncOption;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 255
    .line 256
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-nez v2, :cond_0

    .line 257
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk_timeline_optionop"

    const-string/jumbo v3, " \u6570\u636e\u5e93\u672a\u521d\u59cb\u5316"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 293
    :goto_0
    return v0

    .line 260
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 261
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk_timeline_optionop"

    const-string/jumbo v3, " \u65e0\u53ef\u5b58\u50a8\u6570\u636e"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 265
    :cond_2
    :try_start_0
    const-class v2, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :try_start_1
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    new-instance v4, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/e;

    invoke-direct {v4, p0, p1}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/e;-><init>(Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;Ljava/util/List;)V

    invoke-interface {v3, v4}, Lcom/j256/ormlite/dao/Dao;->callBatchTasks(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 265
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v5, v1

    move v1, v0

    move-object v0, v5

    :goto_1
    :try_start_3
    monitor-exit v2

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 290
    :catch_0
    move-exception v0

    move-object v5, v0

    move v0, v1

    move-object v1, v5

    .line 291
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk_timeline_optionop"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 265
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public updateOption(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;Z)V
    .locals 7

    .prologue
    .line 145
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_optionop"

    const-string/jumbo v2, " \u6570\u636e\u5e93\u672a\u521d\u59cb\u5316"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    if-nez p1, :cond_2

    .line 150
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_optionop"

    const-string/jumbo v2, " \u65e0\u53ef\u64cd\u4f5c\u6570\u636e"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_2
    :try_start_0
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    .line 154
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    if-eqz p2, :cond_0

    .line 158
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->d:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "timelinedb"

    .line 159
    const-string/jumbo v2, "option"

    iget-object v3, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->clientOptionId:Ljava/lang/String;

    .line 160
    const-string/jumbo v4, "clientOptionId"

    const/4 v5, 0x3

    move-object v6, p1

    .line 158
    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk_timeline_optionop"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 154
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
.end method
