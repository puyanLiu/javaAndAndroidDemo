.class public final Lcom/alipay/android/phone/businesscommon/advertisement/g/a;
.super Ljava/lang/Object;
.source "AdDBCacheSingleton.java"


# instance fields
.field private a:J

.field private b:J

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-wide v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->a:J

    .line 40
    iput-wide v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->b:J

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->d:Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->e:Ljava/util/Map;

    .line 63
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;-><init>()V

    return-void
.end method

.method public static a()Lcom/alipay/android/phone/businesscommon/advertisement/g/a;
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/g/c;->a()Lcom/alipay/android/phone/businesscommon/advertisement/g/a;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 242
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->appId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 243
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->viewId:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 256
    :cond_0
    :goto_0
    return v0

    .line 247
    :cond_1
    const-string/jumbo v1, "*"

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 248
    const-string/jumbo v1, "*"

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->viewId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 252
    :cond_2
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->appId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 253
    const-string/jumbo v1, "*"

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->viewId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 256
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 5

    .prologue
    .line 71
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->a:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->a:J

    iget-wide v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 73
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 74
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 75
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/f/a;->a()Lcom/alipay/android/phone/businesscommon/advertisement/f/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/android/phone/businesscommon/advertisement/f/a;->c()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 76
    iput-object v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->c:Ljava/util/List;

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->a:J

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getSpaceInfoList spendtime:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    iget-wide v3, p0, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->a:J

    sub-long v0, v3, v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->c(Ljava/lang/String;)V

    .line 80
    iget-wide v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->a:J

    iput-wide v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->b:J

    .line 81
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->e()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 88
    :cond_1
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 84
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private e()V
    .locals 5

    .prologue
    .line 91
    const/4 v0, 0x0

    .line 92
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 97
    if-eqz v1, :cond_1

    .line 100
    :try_start_0
    iget-object v0, v1, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->viewId:Ljava/lang/String;

    .line 101
    new-instance v1, Lcom/alipay/android/phone/businesscommon/advertisement/g/b;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/businesscommon/advertisement/g/b;-><init>(Lcom/alipay/android/phone/businesscommon/advertisement/g/a;)V

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/alibaba/fastjson/parser/Feature;

    .line 100
    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 103
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 104
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :cond_1
    :goto_1
    return-void

    .line 92
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    .line 93
    const-string/jumbo v3, "CDP_BLACK_LIST"

    iget-object v4, v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->spaceCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v0

    .line 94
    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->d()V

    .line 123
    invoke-static {p1}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->c:Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 136
    :goto_0
    return-object v0

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 132
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->d:Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    if-eqz v0, :cond_4

    .line 133
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->d:Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    iget-object v0, v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->spaceCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 134
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->d:Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    goto :goto_0

    .line 126
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    .line 127
    iget-object v3, v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->spaceCode:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 136
    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 145
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->d()V

    .line 146
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 147
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    invoke-static {p1}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    invoke-static {p2}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v2

    .line 223
    :goto_0
    return-object v0

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a

    .line 161
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 162
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 163
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 164
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 165
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 166
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 167
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 168
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_b

    .line 199
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 200
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 201
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 202
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 203
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 204
    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 205
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 206
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 209
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_5
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 212
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    :cond_6
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 215
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    :cond_7
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 218
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    :cond_8
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 221
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    move-object v0, v1

    .line 223
    goto/16 :goto_0

    .line 152
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    .line 153
    invoke-static {v0, p1, p2}, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->a(Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 154
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 168
    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    .line 169
    const-string/jumbo v9, "TOP"

    .line 170
    iget-object v10, v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->location:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 171
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_c
    const-string/jumbo v9, "LISTHEADER"

    .line 174
    iget-object v10, v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->location:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_d

    .line 175
    const-string/jumbo v9, "HEADER"

    .line 176
    iget-object v10, v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->location:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 177
    :cond_d
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_e
    const-string/jumbo v9, "CENTER"

    .line 180
    iget-object v10, v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->location:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_f

    .line 181
    const-string/jumbo v9, "FOOTER"

    .line 182
    iget-object v10, v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->location:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 183
    :cond_f
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_10
    const-string/jumbo v9, "BOTTOM"

    .line 186
    iget-object v10, v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->location:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 187
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_11
    const-string/jumbo v9, "FULL"

    .line 190
    iget-object v10, v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->location:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 191
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_12
    const-string/jumbo v9, "FLOATTOP"

    .line 194
    iget-object v10, v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->location:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 195
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2
.end method

.method public final a(Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;)V
    .locals 0

    .prologue
    .line 420
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->d:Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    .line 421
    return-void
.end method

.method public final a(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 306
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/f/a;->a()Lcom/alipay/android/phone/businesscommon/advertisement/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/f/a;->b()Lcom/alipay/android/phone/businesscommon/advertisement/g/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/businesscommon/advertisement/g/d;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 312
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->b:J

    .line 313
    return-void

    .line 307
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 309
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;Z)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 345
    .line 347
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->c:Ljava/util/List;

    if-nez v0, :cond_0

    .line 348
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->c:Ljava/util/List;

    :cond_0
    move v3, v1

    .line 352
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v3, v0, :cond_2

    move v2, v1

    .line 371
    :goto_1
    if-eqz p2, :cond_4

    .line 372
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/f/a;->a()Lcom/alipay/android/phone/businesscommon/advertisement/f/a;

    move-result-object v0

    .line 373
    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/businesscommon/advertisement/f/a;->b(Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 374
    if-nez v2, :cond_1

    .line 375
    :try_start_1
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_2

    .line 389
    :cond_1
    :goto_2
    return v0

    .line 353
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    iget-object v0, v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->spaceCode:Ljava/lang/String;

    .line 354
    iget-object v2, p1, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->spaceCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 355
    const/4 v2, 0x1

    .line 357
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    iget-object v4, p1, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->spaceObjectList:Ljava/lang/String;

    iput-object v4, v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->spaceObjectList:Ljava/lang/String;

    .line 358
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    iget-wide v4, p1, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->reqRpcTime:J

    iput-wide v4, v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->reqRpcTime:J

    .line 359
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    iget-object v4, p1, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->appId:Ljava/lang/String;

    iput-object v4, v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->appId:Ljava/lang/String;

    .line 360
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    iget-object v4, p1, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->viewId:Ljava/lang/String;

    iput-object v4, v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->viewId:Ljava/lang/String;

    .line 361
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    iget-object v4, p1, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->location:Ljava/lang/String;

    iput-object v4, v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->location:Ljava/lang/String;

    .line 362
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    iget-object v4, p1, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->multiStyle:Ljava/lang/String;

    iput-object v4, v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->multiStyle:Ljava/lang/String;

    .line 363
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    iget v4, p1, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->rotationTime:I

    iput v4, v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->rotationTime:I

    .line 364
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    iget-object v4, p1, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->updatePolicy:Ljava/lang/String;

    iput-object v4, v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->updatePolicy:Ljava/lang/String;

    .line 365
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    iget v4, p1, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->height:I

    iput v4, v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->height:I

    .line 366
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    iget v3, p1, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->displayMaxCount:I

    iput v3, v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->displayMaxCount:I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 383
    :catch_0
    move-exception v0

    move-object v6, v0

    move v0, v1

    move-object v1, v6

    .line 384
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->a(Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;)Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->b(Ljava/lang/String;)V

    .line 388
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->b:J

    goto/16 :goto_2

    .line 352
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    .line 379
    :cond_4
    :try_start_3
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/f/a;->a()Lcom/alipay/android/phone/businesscommon/advertisement/f/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/businesscommon/advertisement/f/a;->a(Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;)Z
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v0

    goto/16 :goto_2

    .line 385
    :catch_1
    move-exception v0

    move-object v6, v0

    move v0, v1

    move-object v1, v6

    .line 386
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->a(Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;)Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->b(Ljava/lang/String;)V

    goto :goto_4

    .line 385
    :catch_2
    move-exception v1

    goto :goto_5

    .line 383
    :catch_3
    move-exception v1

    goto :goto_3
.end method

.method public final a(Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 261
    if-nez p1, :cond_0

    .line 301
    :goto_0
    return v2

    .line 265
    :cond_0
    const/4 v3, 0x0

    .line 267
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/f/a;->a()Lcom/alipay/android/phone/businesscommon/advertisement/f/a;

    move-result-object v0

    .line 268
    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/f/a;->b()Lcom/alipay/android/phone/businesscommon/advertisement/g/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/g/d;->a()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    .line 267
    if-nez v0, :cond_1

    move v2, v1

    .line 270
    goto :goto_0

    .line 272
    :cond_1
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/f/a;->a()Lcom/alipay/android/phone/businesscommon/advertisement/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/f/a;->b()Lcom/alipay/android/phone/businesscommon/advertisement/g/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/g/d;->getWritableDatabase()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 273
    :try_start_1
    invoke-virtual {v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 280
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 287
    invoke-virtual {v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 295
    if-eqz v3, :cond_2

    .line 296
    invoke-virtual {v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_2
    move v0, v1

    .line 299
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->b:J

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "insertSpaceInfoList:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->b:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->c(Ljava/lang/String;)V

    move v2, v0

    .line 301
    goto :goto_0

    .line 280
    :cond_3
    :try_start_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    .line 281
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/f/a;->a()Lcom/alipay/android/phone/businesscommon/advertisement/f/a;

    move-result-object v7

    .line 282
    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->a(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    move-result-object v0

    .line 281
    invoke-virtual {v7, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/f/a;->b(Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 288
    :catch_0
    move-exception v0

    move-object v1, v3

    :goto_3
    :try_start_3
    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->b(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 295
    if-eqz v1, :cond_5

    .line 296
    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->endTransaction()V

    move v0, v2

    goto :goto_2

    .line 291
    :catch_1
    move-exception v0

    :try_start_4
    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->b(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 295
    if-eqz v3, :cond_5

    .line 296
    invoke-virtual {v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->endTransaction()V

    move v0, v2

    goto :goto_2

    .line 294
    :catchall_0
    move-exception v0

    .line 295
    :goto_4
    if-eqz v3, :cond_4

    .line 296
    invoke-virtual {v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->endTransaction()V

    .line 297
    :cond_4
    throw v0

    .line 294
    :catchall_1
    move-exception v0

    move-object v3, v1

    goto :goto_4

    .line 288
    :catch_2
    move-exception v0

    move-object v1, v3

    goto :goto_3

    :cond_5
    move v0, v2

    goto :goto_2
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 394
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->d()V

    .line 395
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 396
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 397
    invoke-static {p1}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 416
    :goto_0
    return-object v0

    .line 400
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 412
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 413
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 414
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    goto :goto_0

    .line 400
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    .line 401
    invoke-static {v0, p1, p2}, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->a(Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 403
    const-string/jumbo v4, "TOP"

    .line 404
    iget-object v5, v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->location:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 405
    const-string/jumbo v4, "ANNOUNCEMENT"

    .line 406
    iget-object v5, v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->multiStyle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 407
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 416
    goto :goto_0
.end method

.method public final b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->d()V

    .line 113
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->e:Ljava/util/Map;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 330
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/f/a;->a()Lcom/alipay/android/phone/businesscommon/advertisement/f/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/businesscommon/advertisement/f/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 336
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->b:J

    .line 337
    return-void

    .line 331
    :catch_0
    move-exception v0

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 333
    :catch_1
    move-exception v0

    .line 334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;
    .locals 2

    .prologue
    .line 426
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 427
    const-class v1, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    .line 428
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->d:Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    if-eqz v1, :cond_1

    .line 430
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->d:Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->a(Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;)Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    move-result-object v1

    .line 429
    invoke-virtual {v0, v1, p1, p2}, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;->isMatchSpaceInfo(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->d:Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    .line 443
    :goto_0
    return-object v0

    .line 433
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "AdDBCacheSingleton.getAnnoucementSpaceInfo:\u5f53\u524d\u9875\u9762\u7684appid:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 434
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 435
    const-string/jumbo v1, " viewid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 436
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 437
    const-string/jumbo v1, " \u4e0e\u672c\u5730\u5e7f\u544a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 438
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->d:Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    iget-object v1, v1, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 439
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 440
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->d:Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    iget-object v1, v1, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->viewId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u4e0d\u5339\u914d,\u4e0d\u4e88\u8fd4\u56de"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 433
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->c(Ljava/lang/String;)V

    .line 443
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 448
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->d()V

    .line 449
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 450
    :cond_0
    const/4 v0, 0x1

    .line 452
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
