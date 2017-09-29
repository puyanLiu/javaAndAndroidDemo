.class Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz$1$1;
.super Ljava/lang/Object;
.source "GlobalSearchBiz.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/alipay/android/phone/globalsearch/api/IndexResult;

.field private final synthetic b:Ljava/lang/String;

.field final synthetic this$1:Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz$1;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz$1;Lcom/alipay/android/phone/globalsearch/api/IndexResult;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz$1$1;->this$1:Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz$1;

    iput-object p2, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz$1$1;->a:Lcom/alipay/android/phone/globalsearch/api/IndexResult;

    iput-object p3, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz$1$1;->b:Ljava/lang/String;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 57
    const-class v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    .line 58
    iget-object v1, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz$1$1;->a:Lcom/alipay/android/phone/globalsearch/api/IndexResult;

    if-nez v1, :cond_1

    .line 60
    const-string/jumbo v1, "publicplatform"

    .line 61
    iget-object v3, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz$1$1;->b:Ljava/lang/String;

    .line 59
    invoke-virtual {v0, v2, v1, v3}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->onSearchResult(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz$1$1;->a:Lcom/alipay/android/phone/globalsearch/api/IndexResult;

    invoke-virtual {v1}, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->getRowIdList()Ljava/util/List;

    move-result-object v3

    .line 66
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz$1$1;->this$1:Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz$1;

    invoke-static {v1}, Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz$1;->access$0(Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz$1;)Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz;->access$0(Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alipay/mobile/publicsvc/common/proguard/b/a;->a(Ljava/util/List;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 76
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "select * from "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz$1$1;->a:Lcom/alipay/android/phone/globalsearch/api/IndexResult;

    invoke-virtual {v5}, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->getTableName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " where id in ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Lcom/alipay/mobile/publicsvc/common/proguard/b/a;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") and userId= ? and (pluginType IS  NULL OR pluginType <> \'sina_news\' ) and (followObjectId <> \'2014031700004153\') "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 77
    const-string/jumbo v5, "search"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "publicservice excute sql :"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 81
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->getInstance()Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

    move-result-object v6

    .line 82
    invoke-virtual {v6}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->getReadableDatabase()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    move-result-object v6

    invoke-virtual {v6, v4, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 83
    :goto_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_5

    .line 103
    :cond_2
    if-eqz v2, :cond_3

    .line 104
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 107
    :cond_3
    :goto_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 108
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_7

    .line 113
    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 116
    const-string/jumbo v1, "publicplatform"

    iget-object v3, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz$1$1;->b:Ljava/lang/String;

    .line 115
    invoke-virtual {v0, v2, v1, v3}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->onSearchResult(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 84
    :cond_5
    :try_start_1
    new-instance v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    invoke-direct {v1}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;-><init>()V

    .line 85
    const-string/jumbo v4, "name"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 87
    iget-object v6, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz$1$1;->b:Ljava/lang/String;

    .line 88
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    const-string/jumbo v8, "#00AAFF"

    .line 87
    invoke-virtual {v0, v4, v6, v7, v8}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->highlightAbstract(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 86
    iput-object v4, v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->name:Ljava/lang/String;

    .line 90
    const-string/jumbo v4, "avatar"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 89
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->icon:Ljava/lang/String;

    .line 92
    const-string/jumbo v4, "followObjectId"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 91
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 93
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz;->access$1()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 93
    iput-object v6, v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->actionParam:Ljava/lang/String;

    .line 95
    iput-object v4, v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->bizId:Ljava/lang/String;

    .line 96
    iget-object v4, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/GlobalSearchBiz$1$1;->b:Ljava/lang/String;

    iput-object v4, v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->queryWord:Ljava/lang/String;

    .line 97
    const-string/jumbo v4, "id"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 98
    invoke-interface {v5, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 100
    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    if-eqz v2, :cond_3

    .line 104
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 102
    :catchall_0
    move-exception v0

    .line 103
    if-eqz v2, :cond_6

    .line 104
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 106
    :cond_6
    throw v0

    .line 108
    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 109
    invoke-interface {v5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 110
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3
.end method
