.class public Lcom/alipay/mobile/publicrecom/dao/PublicRecommendDaoImpl;
.super Ljava/lang/Object;
.source "PublicRecommendDaoImpl.java"

# interfaces
.implements Lcom/alipay/mobile/publicrecom/dao/PublicRecommendDao;


# instance fields
.field private a:Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

.field private b:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/publicrecom/dao/dataobject/PublicRecommendDo;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->getInstance()Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/publicrecom/dao/PublicRecommendDaoImpl;->a:Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/publicrecom/dao/PublicRecommendDaoImpl;->a:Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

    const-class v1, Lcom/alipay/mobile/publicrecom/dao/dataobject/PublicRecommendDo;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/publicrecom/dao/PublicRecommendDaoImpl;->b:Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Lcom/alipay/mobile/publicrecom/dao/dataobject/PublicRecommendDo;)V
    .locals 3

    .prologue
    .line 167
    if-nez p0, :cond_0

    .line 179
    :goto_0
    return-void

    .line 173
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lcom/alipay/mobile/publicrecom/dao/dataobject/PublicRecommendDo;->gotoUrl:Ljava/lang/String;

    .line 172
    invoke-static {v0, v1}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSecurityEncryptor;->decrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/publicrecom/dao/dataobject/PublicRecommendDo;->gotoUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Lcom/alipay/mobile/publicrecom/dao/dataobject/PublicRecommendDo;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/publicrecom/dao/dataobject/PublicRecommendDo;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/publicrecom/dao/dataobject/PublicRecommendDo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 217
    if-nez p1, :cond_0

    .line 257
    :goto_0
    return v0

    .line 221
    :cond_0
    iget-object v1, p1, Lcom/alipay/mobile/publicrecom/dao/dataobject/PublicRecommendDo;->gotoUrl:Ljava/lang/String;

    .line 224
    :try_start_0
    iget-object v2, p1, Lcom/alipay/mobile/publicrecom/dao/dataobject/PublicRecommendDo;->gotoUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 226
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    .line 227
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    .line 228
    iget-object v3, p1, Lcom/alipay/mobile/publicrecom/dao/dataobject/PublicRecommendDo;->gotoUrl:Ljava/lang/String;

    .line 226
    invoke-static {v2, v3}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSecurityEncryptor;->encrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 225
    iput-object v2, p1, Lcom/alipay/mobile/publicrecom/dao/dataobject/PublicRecommendDo;->gotoUrl:Ljava/lang/String;

    .line 231
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/publicrecom/dao/PublicRecommendDaoImpl;->b:Lcom/j256/ormlite/dao/Dao;

    .line 232
    invoke-interface {v2, p1}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    move-result-object v2

    .line 235
    invoke-virtual {v2}, Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;->isCreated()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;->isUpdated()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    .line 254
    :cond_2
    iput-object v1, p1, Lcom/alipay/mobile/publicrecom/dao/dataobject/PublicRecommendDo;->gotoUrl:Ljava/lang/String;

    .line 240
    const/4 v0, 0x1

    goto :goto_0

    .line 253
    :catchall_0
    move-exception v0

    .line 254
    iput-object v1, p1, Lcom/alipay/mobile/publicrecom/dao/dataobject/PublicRecommendDo;->gotoUrl:Ljava/lang/String;

    .line 255
    throw v0

    .line 254
    :catch_0
    move-exception v2

    :cond_3
    iput-object v1, p1, Lcom/alipay/mobile/publicrecom/dao/dataobject/PublicRecommendDo;->gotoUrl:Ljava/lang/String;

    .line 256
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/alipay/mobile/publicrecom/dao/PublicRecommendDaoImpl;Lcom/alipay/mobile/publicrecom/dao/dataobject/PublicRecommendDo;Ljava/util/List;)Z
    .locals 1

    .prologue
    .line 214
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/publicrecom/dao/PublicRecommendDaoImpl;->a(Lcom/alipay/mobile/publicrecom/dao/dataobject/PublicRecommendDo;Ljava/util/List;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public deleteAllPublicRecommends(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 201
    iget-object v0, p0, Lcom/alipay/mobile/publicrecom/dao/PublicRecommendDaoImpl;->b:Lcom/j256/ormlite/dao/Dao;

    .line 202
    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v0

    .line 203
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v2, "userId"

    invoke-virtual {v1, v2, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 204
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    move-result v0

    return v0
.end method

.method public deletePublicRecommendsByPublicIds(Ljava/util/List;Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 185
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    :cond_0
    const/4 v0, 0x0

    .line 196
    :goto_0
    return v0

    .line 189
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 190
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 192
    iget-object v1, p0, Lcom/alipay/mobile/publicrecom/dao/PublicRecommendDaoImpl;->b:Lcom/j256/ormlite/dao/Dao;

    .line 193
    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v1

    .line 194
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string/jumbo v3, "userId"

    invoke-virtual {v2, v3, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    .line 195
    const-string/jumbo v3, "publicId"

    invoke-virtual {v2, v3, v0}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;[Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 196
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    move-result v0

    goto :goto_0
.end method

.method public queriesAllDeleteStatusPublicRecommend(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/publicrecom/dao/dataobject/PublicRecommendDo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/publicrecom/dao/PublicRecommendDaoImpl;->b:Lcom/j256/ormlite/dao/Dao;

    .line 121
    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 123
    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 124
    const-string/jumbo v1, "localStatus"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v0

    .line 122
    return-object v0
.end method

.method public queriesAllPublicRecommend(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/publicrecom/dao/dataobject/PublicRecommendDo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/publicrecom/dao/PublicRecommendDaoImpl;->b:Lcom/j256/ormlite/dao/Dao;

    .line 106
    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 108
    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v1

    .line 109
    if-eqz v1, :cond_0

    .line 110
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    :cond_0
    return-object v1

    .line 110
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/publicrecom/dao/dataobject/PublicRecommendDo;

    .line 111
    invoke-static {v0}, Lcom/alipay/mobile/publicrecom/dao/PublicRecommendDaoImpl;->a(Lcom/alipay/mobile/publicrecom/dao/dataobject/PublicRecommendDo;)V

    goto :goto_0
.end method

.method public queriesPublicRecommendByPublicIds(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/publicrecom/dao/dataobject/PublicRecommendDo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lcom/alipay/mobile/publicrecom/dao/PublicRecommendDaoImpl;->b:Lcom/j256/ormlite/dao/Dao;

    .line 150
    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v2, "userId"

    invoke-virtual {v1, v2, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    .line 152
    const-string/jumbo v2, "publicId"

    invoke-virtual {v1, v2, p1}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    .line 153
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->query()Ljava/util/List;

    move-result-object v1

    .line 154
    if-eqz v1, :cond_0

    .line 155
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 159
    :cond_0
    return-object v1

    .line 155
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/publicrecom/dao/dataobject/PublicRecommendDo;

    .line 156
    invoke-static {v0}, Lcom/alipay/mobile/publicrecom/dao/PublicRecommendDaoImpl;->a(Lcom/alipay/mobile/publicrecom/dao/dataobject/PublicRecommendDo;)V

    goto :goto_0
.end method

.method public queryPublicRecommendByPublicId(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/publicrecom/dao/dataobject/PublicRecommendDo;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/publicrecom/dao/PublicRecommendDaoImpl;->b:Lcom/j256/ormlite/dao/Dao;

    .line 134
    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 136
    const-string/jumbo v1, "publicId"

    invoke-virtual {v0, v1, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v1

    .line 138
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/publicrecom/dao/dataobject/PublicRecommendDo;

    invoke-static {v0}, Lcom/alipay/mobile/publicrecom/dao/PublicRecommendDaoImpl;->a(Lcom/alipay/mobile/publicrecom/dao/dataobject/PublicRecommendDo;)V

    .line 140
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/publicrecom/dao/dataobject/PublicRecommendDo;

    .line 143
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveOrUpdatePublicRecommendList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/publicrecom/dao/dataobject/PublicRecommendDo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/publicrecom/dao/dataobject/PublicRecommendDo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, p1

    .line 78
    :goto_0
    return-object v0

    .line 64
    :cond_1
    new-instance v0, Lcom/alipay/mobile/publicrecom/dao/PublicRecommendDaoImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/publicrecom/dao/PublicRecommendDaoImpl$1;-><init>(Lcom/alipay/mobile/publicrecom/dao/PublicRecommendDaoImpl;Ljava/util/List;)V

    .line 78
    iget-object v1, p0, Lcom/alipay/mobile/publicrecom/dao/PublicRecommendDaoImpl;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->callBatchTasks(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0
.end method

.method public updateAllNormalPublicRecom2DeleteStatus(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/publicrecom/dao/PublicRecommendDaoImpl;->b:Lcom/j256/ormlite/dao/Dao;

    .line 93
    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->updateBuilder()Lcom/j256/ormlite/stmt/UpdateBuilder;

    move-result-object v0

    .line 94
    const-string/jumbo v1, "localStatus"

    .line 95
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 94
    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateColumnValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/StatementBuilder;

    .line 96
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/UpdateBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v2, "userId"

    invoke-virtual {v1, v2, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    .line 97
    const-string/jumbo v2, "localStatus"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 98
    iget-object v1, p0, Lcom/alipay/mobile/publicrecom/dao/PublicRecommendDaoImpl;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/UpdateBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedUpdate;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->update(Lcom/j256/ormlite/stmt/PreparedUpdate;)I

    move-result v0

    return v0
.end method
