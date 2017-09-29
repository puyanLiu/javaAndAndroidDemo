.class public Lcom/alipay/mobile/android/main/publichome/dao/impl/SearchDaoImpl;
.super Ljava/lang/Object;
.source "SearchDaoImpl.java"

# interfaces
.implements Lcom/alipay/android/phone/publicplatform/common/api/SearchDao;


# instance fields
.field private a:Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDataHelper()Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/SearchDaoImpl;->a:Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

    if-nez v0, :cond_0

    .line 29
    invoke-static {}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->getInstance()Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/SearchDaoImpl;->a:Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/SearchDaoImpl;->a:Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

    return-object v0
.end method

.method public searchFromLocal(Ljava/lang/String;ILjava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/publicplatform/common/search/model/SearchModel;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 39
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 41
    const-class v2, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    .line 42
    if-nez v0, :cond_1

    move-object v0, v1

    .line 110
    :cond_0
    :goto_0
    return-object v0

    .line 46
    :cond_1
    const-string/jumbo v2, "publicplatform"

    invoke-virtual {v0, v2, p1, v3, p2}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->doSearch(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move-object v0, v1

    .line 48
    goto :goto_0

    .line 51
    :cond_3
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/IndexResult;

    .line 52
    invoke-virtual {p0}, Lcom/alipay/mobile/android/main/publichome/dao/impl/SearchDaoImpl;->getDataHelper()Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->getReadableDatabase()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 62
    :try_start_0
    invoke-virtual {v0}, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->getRowIdList()Ljava/util/List;

    move-result-object v3

    .line 63
    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 64
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 103
    :goto_1
    :try_start_1
    const-string/jumbo v3, "SearchDaoImpl"

    const-string/jumbo v4, "exception"

    invoke-static {v3, v4, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 105
    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 106
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v0, v1

    .line 110
    goto :goto_0

    .line 66
    :cond_6
    :try_start_2
    invoke-static {v3, p3}, Lcom/alipay/mobile/publicsvc/common/proguard/b/a;->a(Ljava/util/List;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 68
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "select * from "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, " where id in ("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Lcom/alipay/mobile/publicsvc/common/proguard/b/a;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ") and userId =? and ( pluginType IS  NULL OR pluginType <> \'sina_news\' ) and (followObjectId <> \'2014031700004153\') "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-virtual {v2, v0, v4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 71
    if-nez v2, :cond_7

    .line 72
    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 105
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 75
    :cond_7
    :try_start_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v3

    if-nez v3, :cond_8

    .line 101
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 77
    :cond_8
    :try_start_5
    new-instance v3, Lcom/alipay/android/phone/publicplatform/common/search/model/SearchModel;

    invoke-direct {v3}, Lcom/alipay/android/phone/publicplatform/common/search/model/SearchModel;-><init>()V

    .line 79
    const-string/jumbo v4, "avatar"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 78
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 80
    const-string/jumbo v5, "name"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 81
    const-string/jumbo v6, "followObjectId"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 82
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "alipays://platformapi/startapp?appId=20000042&publicId="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "&publicName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 84
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "&actionType=TARGET_LIST&sourceId=publicStoreLocalSearch"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 82
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 86
    iput-object v4, v3, Lcom/alipay/android/phone/publicplatform/common/search/model/SearchModel;->iconPath:Ljava/lang/String;

    .line 88
    iput-object v5, v3, Lcom/alipay/android/phone/publicplatform/common/search/model/SearchModel;->title:Ljava/lang/String;

    .line 89
    const-string/jumbo v4, "alipay"

    iput-object v4, v3, Lcom/alipay/android/phone/publicplatform/common/search/model/SearchModel;->actionType:Ljava/lang/String;

    .line 90
    iput-object v7, v3, Lcom/alipay/android/phone/publicplatform/common/search/model/SearchModel;->actionParams:Ljava/lang/String;

    .line 91
    const-string/jumbo v4, "imageText"

    iput-object v4, v3, Lcom/alipay/android/phone/publicplatform/common/search/model/SearchModel;->showType:Ljava/lang/String;

    .line 92
    const-string/jumbo v4, "publicsearch"

    iput-object v4, v3, Lcom/alipay/android/phone/publicplatform/common/search/model/SearchModel;->bizType:Ljava/lang/String;

    .line 93
    iput-object v6, v3, Lcom/alipay/android/phone/publicplatform/common/search/model/SearchModel;->bizNo:Ljava/lang/String;

    .line 94
    iput-object p3, v3, Lcom/alipay/android/phone/publicplatform/common/search/model/SearchModel;->userId:Ljava/lang/String;

    .line 96
    const-string/jumbo v4, "publicsearch"

    iput-object v4, v3, Lcom/alipay/android/phone/publicplatform/common/search/model/SearchModel;->categrayCode:Ljava/lang/String;

    .line 97
    sget v4, Lcom/alipay/mobile/publicsvc/common/R$string;->added:I

    invoke-static {v4}, Lcom/alipay/android/phone/publicplatform/common/api/ContextUtils;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alipay/android/phone/publicplatform/common/search/model/SearchModel;->categrayName:Ljava/lang/String;

    .line 99
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_2

    .line 102
    :catch_1
    move-exception v0

    goto/16 :goto_1

    .line 104
    :catchall_0
    move-exception v0

    move-object v2, v1

    .line 105
    :goto_3
    if-eqz v2, :cond_9

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_9

    .line 106
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 109
    :cond_9
    throw v0

    .line 104
    :catchall_1
    move-exception v0

    goto :goto_3
.end method
