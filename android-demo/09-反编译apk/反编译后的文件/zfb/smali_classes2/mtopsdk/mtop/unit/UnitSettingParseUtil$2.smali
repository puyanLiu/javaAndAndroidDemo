.class final Lmtopsdk/mtop/unit/UnitSettingParseUtil$2;
.super Ljava/lang/Object;
.source "UnitSettingParseUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lmtopsdk/mtop/unit/UnitSettingParseUtil$2;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 182
    :try_start_0
    iget-object v0, p0, Lmtopsdk/mtop/unit/UnitSettingParseUtil$2;->val$url:Ljava/lang/String;

    sget-object v1, Lmtopsdk/mtop/domain/ProtocolEnum;->HTTP:Lmtopsdk/mtop/domain/ProtocolEnum;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/ProtocolEnum;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 185
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lmtopsdk/mtop/domain/ProtocolEnum;->HTTP:Lmtopsdk/mtop/domain/ProtocolEnum;

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/ProtocolEnum;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lmtopsdk/mtop/unit/UnitSettingParseUtil$2;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v1

    invoke-virtual {v1}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalContext()Landroid/content/Context;

    move-result-object v3

    .line 196
    new-instance v1, Lanetwork/channel/http/HttpNetwork;

    invoke-direct {v1, v3}, Lanetwork/channel/http/HttpNetwork;-><init>(Landroid/content/Context;)V

    .line 197
    new-instance v4, Lanetwork/channel/entity/RequestImpl;

    invoke-direct {v4, v0}, Lanetwork/channel/entity/RequestImpl;-><init>(Ljava/net/URL;)V

    .line 200
    invoke-interface {v1, v4}, Lanetwork/channel/Network;->a(Lanetwork/channel/Request;)Lanetwork/channel/Response;

    move-result-object v0

    .line 201
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lanetwork/channel/Response;->a()I

    move-result v1

    const/16 v4, 0xc8

    if-ne v1, v4, :cond_0

    invoke-interface {v0}, Lanetwork/channel/Response;->c()[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 206
    :try_start_1
    new-instance v1, Ljava/lang/String;

    invoke-interface {v0}, Lanetwork/channel/Response;->c()[B

    move-result-object v0

    const-string/jumbo v4, "utf-8"

    invoke-direct {v1, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 207
    :try_start_2
    const-class v0, Lmtopsdk/mtop/unit/ApiUnit;

    invoke-static {v1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmtopsdk/mtop/unit/ApiUnit;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 212
    :goto_1
    if-eqz v0, :cond_0

    iget-object v2, v0, Lmtopsdk/mtop/unit/ApiUnit;->version:Ljava/lang/String;

    invoke-static {v2}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v2

    invoke-virtual {v2}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalApiUnit()Lmtopsdk/mtop/unit/ApiUnit;

    move-result-object v2

    .line 214
    if-eqz v2, :cond_2

    iget-object v4, v0, Lmtopsdk/mtop/unit/ApiUnit;->version:Ljava/lang/String;

    iget-object v2, v2, Lmtopsdk/mtop/unit/ApiUnit;->version:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 222
    :cond_0
    :goto_2
    return-void

    .line 187
    :cond_1
    :try_start_3
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lmtopsdk/mtop/unit/UnitSettingParseUtil$2;->val$url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    const-string/jumbo v1, "UnitSettingParseUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[updateApiUnitInfo] generate URI error.---"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 208
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 209
    :goto_3
    const-string/jumbo v4, "UnitSettingParseUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[updateApiUnitInfo]parse apiUnit json from cdn error ---"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_1

    .line 217
    :cond_2
    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v2

    invoke-virtual {v2, v0}, Lmtopsdk/mtop/global/SDKConfig;->setGlobalApiUnit(Lmtopsdk/mtop/unit/ApiUnit;)Lmtopsdk/mtop/global/SDKConfig;

    .line 218
    invoke-static {}, Lmtopsdk/common/util/ConfigStoreManager;->getInstance()Lmtopsdk/common/util/ConfigStoreManager;

    move-result-object v2

    const-string/jumbo v4, "UnitSettingStore"

    const-string/jumbo v5, "API_UNIT_ITEM"

    invoke-virtual {v2, v3, v4, v5, v1}, Lmtopsdk/common/util/ConfigStoreManager;->saveConfigItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string/jumbo v1, "UnitSettingParseUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[updateApiUnitInfo] update apiUnit succeed.apiUnit="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 208
    :catch_2
    move-exception v0

    goto :goto_3
.end method
