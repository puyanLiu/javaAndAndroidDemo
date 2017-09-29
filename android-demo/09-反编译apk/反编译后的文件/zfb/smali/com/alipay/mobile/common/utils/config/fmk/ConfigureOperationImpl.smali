.class public Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;
.super Ljava/lang/Object;
.source "ConfigureOperationImpl.java"

# interfaces
.implements Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperation;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->a:Ljava/util/Map;

    .line 27
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 232
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 233
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 234
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, p0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 241
    :catch_0
    move-exception v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private a(Ljava/util/Map;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 155
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 156
    :cond_0
    const-string/jumbo v1, "Conf_ConfigureOperation"

    const-string/jumbo v2, "configMap is empty!"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :goto_0
    return v0

    .line 159
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    .line 160
    iget-object v2, p0, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->a:Ljava/util/Map;

    if-ne v2, v1, :cond_2

    .line 161
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->a:Ljava/util/Map;

    .line 164
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    const/4 v0, 0x1

    goto :goto_0

    .line 166
    :catch_0
    move-exception v1

    .line 167
    const-string/jumbo v2, "Conf_ConfigureOperation"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "update. Parse spdy config exception.  spdyConfig="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 168
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->a:Ljava/util/Map;

    goto :goto_0
.end method


# virtual methods
.method public equalsInt(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;I)Z
    .locals 1

    .prologue
    .line 195
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->getIntValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)I

    move-result v0

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equalsLong(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;J)Z
    .locals 2

    .prologue
    .line 188
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->getLongValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equalsString(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public getIntValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)I
    .locals 1

    .prologue
    .line 31
    invoke-interface {p1}, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;->getIntValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->getIntValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;I)I

    move-result v0

    return v0
.end method

.method public getIntValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;I)I
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->a:Ljava/util/Map;

    invoke-interface {p1}, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;->getConfigName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 38
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 40
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 44
    :cond_0
    :goto_0
    return p2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getLongValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)J
    .locals 2

    .prologue
    .line 49
    invoke-interface {p1}, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;->getLongValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->getLongValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLongValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;J)J
    .locals 2

    .prologue
    .line 54
    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->a:Ljava/util/Map;

    invoke-interface {p1}, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;->getConfigName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 56
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    .line 62
    :cond_0
    :goto_0
    return-wide p2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    invoke-interface {p1}, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->a:Ljava/util/Map;

    invoke-interface {p1}, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;->getConfigName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 87
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public getStringValueList(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    invoke-interface {p1}, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->getStringValueList(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStringValueList(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 81
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0, p3}, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public isLoadedConfig()Z
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeConfig(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 213
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->a:Ljava/util/Map;

    if-ne v1, v0, :cond_2

    .line 219
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->a:Ljava/util/Map;

    .line 221
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public parseObject(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    new-instance v0, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl$JsonObjectTypeReference;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl$JsonObjectTypeReference;-><init>(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;)V

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {p1, v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public setValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 200
    invoke-interface {p1, p2}, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;->setValue(Ljava/lang/String;)V

    .line 202
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 203
    iget-object v1, p0, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->a:Ljava/util/Map;

    if-ne v1, v0, :cond_0

    .line 204
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->a:Ljava/util/Map;

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->a:Ljava/util/Map;

    invoke-interface {p1}, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;->getConfigName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object v0, p0, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->a:Ljava/util/Map;

    invoke-interface {p1}, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;->getConfigName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    return-void
.end method

.method public updateFromJsonStrAndSave(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 114
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 115
    const-string/jumbo v1, "Conf_ConfigureOperation"

    const-string/jumbo v2, "json value is empty!!"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_0
    :goto_0
    return v0

    .line 118
    :cond_1
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->parseObject(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->a(Ljava/util/Map;)Z

    move-result v2

    .line 119
    if-eqz v2, :cond_0

    .line 122
    iget-object v2, p0, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 123
    goto :goto_0

    .line 125
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->a:Ljava/util/Map;

    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p3, p4, v2}, Lcom/alipay/mobile/common/utils/SharedSwitchUtil;->refreshSharedSwitch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 126
    goto :goto_0

    .line 127
    :catch_0
    move-exception v1

    .line 128
    const-string/jumbo v2, "Conf_ConfigureOperation"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public updateFromMapAndSave(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 96
    if-eqz p2, :cond_0

    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v0

    .line 99
    :cond_1
    invoke-direct {p0, p2}, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->a(Ljava/util/Map;)Z

    move-result v1

    .line 100
    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->a:Ljava/util/Map;

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p3, p4, v1}, Lcom/alipay/mobile/common/utils/SharedSwitchUtil;->refreshSharedSwitch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    const/4 v0, 0x1

    goto :goto_0

    .line 105
    :catch_0
    move-exception v1

    .line 106
    const-string/jumbo v2, "Conf_ConfigureOperation"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public updateFromSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 137
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/alipay/mobile/common/utils/SharedSwitchUtil;->getSharedSwitch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    const-string/jumbo v1, "Conf_ConfigureOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "No config at sharedPref. sharedPrefName=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] sharedPerf=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] !"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :goto_0
    return v0

    .line 144
    :cond_0
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->parseObject(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 145
    invoke-direct {p0, v1}, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;->a(Ljava/util/Map;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 146
    :catch_0
    move-exception v1

    .line 147
    const-string/jumbo v2, "Conf_ConfigureOperation"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
