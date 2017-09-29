.class final Lcom/alipay/mobile/framework/service/ext/openplatform/persist/v;
.super Ljava/lang/Object;
.source "OpenplatformQueryListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/u;

.field private final synthetic b:Lcom/alipay/android/phone/globalsearch/api/IndexResult;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/u;Lcom/alipay/android/phone/globalsearch/api/IndexResult;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/v;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/u;

    iput-object p2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/v;->b:Lcom/alipay/android/phone/globalsearch/api/IndexResult;

    iput-object p3, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/v;->c:Ljava/lang/String;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 91
    const-class v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    .line 92
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/v;->b:Lcom/alipay/android/phone/globalsearch/api/IndexResult;

    if-nez v1, :cond_1

    .line 94
    const-string/jumbo v1, "app"

    iget-object v3, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/v;->c:Ljava/lang/String;

    .line 93
    invoke-virtual {v0, v2, v1, v3}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->onSearchResult(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/v;->b:Lcom/alipay/android/phone/globalsearch/api/IndexResult;

    invoke-virtual {v1}, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->getRowIdList()Ljava/util/List;

    move-result-object v3

    .line 98
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    const/4 v1, 0x0

    .line 103
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_6

    .line 111
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 112
    invoke-interface {v3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 113
    iget-object v3, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/v;->b:Lcom/alipay/android/phone/globalsearch/api/IndexResult;

    invoke-virtual {v3}, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->getRowIdList()Ljava/util/List;

    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "select * from "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/v;->b:Lcom/alipay/android/phone/globalsearch/api/IndexResult;

    invoke-virtual {v5}, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->getTableName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 116
    const-string/jumbo v5, " where "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/v;->b:Lcom/alipay/android/phone/globalsearch/api/IndexResult;

    invoke-virtual {v5}, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->getKeyField()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " in ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 117
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 115
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 120
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 123
    :try_start_0
    iget-object v5, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/v;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/u;

    invoke-static {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/u;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/u;)Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;->access$0(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v5, v3, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 124
    :cond_2
    :goto_2
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_8

    .line 159
    :cond_3
    if-eqz v2, :cond_4

    .line 160
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 163
    :cond_4
    :goto_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 165
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/v;->b:Lcom/alipay/android/phone/globalsearch/api/IndexResult;

    invoke-virtual {v1}, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->getRowIdList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_b

    .line 171
    const-string/jumbo v1, "app"

    iget-object v3, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/v;->c:Ljava/lang/String;

    .line 170
    invoke-virtual {v0, v2, v1, v3}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->onSearchResult(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string/jumbo v0, "search_app"

    const-string/jumbo v1, "application search over"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 103
    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    if-nez v1, :cond_7

    .line 105
    const-string/jumbo v6, "?"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 107
    :cond_7
    const-string/jumbo v6, ",?"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 126
    :cond_8
    :try_start_1
    const-string/jumbo v1, "extra"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 125
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 128
    const-string/jumbo v1, "status"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 127
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 129
    iget-object v5, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/v;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/u;

    invoke-static {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/u;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/u;)Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;->access$1(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 130
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/v;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/u;

    invoke-static {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/u;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/u;)Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;->access$2(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 131
    new-instance v5, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    invoke-direct {v5}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;-><init>()V

    .line 134
    const-string/jumbo v1, "name"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 133
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 136
    iget-object v6, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/v;->c:Ljava/lang/String;

    .line 137
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    const-string/jumbo v8, "#00AAFF"

    .line 136
    invoke-virtual {v0, v1, v6, v7, v8}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->highlightAbstract(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 135
    iput-object v1, v5, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->name:Ljava/lang/String;

    .line 139
    const-string/jumbo v1, "iconUrl"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 138
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->icon:Ljava/lang/String;

    .line 141
    const-string/jumbo v1, "appId"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 140
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;->access$3()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 144
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;->access$3()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 146
    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "alipays://platformapi/startapp?appId="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 148
    iget-object v6, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/v;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/u;

    invoke-static {v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/u;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/u;)Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;->access$4(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "&sourceId=globalsearch"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 146
    iput-object v1, v5, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->actionParam:Ljava/lang/String;

    .line 150
    const-string/jumbo v1, "appId"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 149
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->bizId:Ljava/lang/String;

    .line 151
    const-string/jumbo v1, "appId"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 154
    :catch_0
    move-exception v1

    .line 155
    :try_start_2
    const-string/jumbo v3, "search_app"

    .line 156
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "application search error"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 155
    invoke-static {v3, v5}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-static {v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 159
    if-eqz v2, :cond_4

    .line 160
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 158
    :catchall_0
    move-exception v0

    .line 159
    if-eqz v2, :cond_a

    .line 160
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 162
    :cond_a
    throw v0

    .line 165
    :cond_b
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 166
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 167
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4
.end method
