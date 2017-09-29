.class final Lmtopsdk/mtop/unit/UnitSettingParseUtil$1;
.super Ljava/lang/Object;
.source "UnitSettingParseUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$userUnit:Lmtopsdk/mtop/unit/UserUnit;


# direct methods
.method constructor <init>(Lmtopsdk/mtop/unit/UserUnit;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lmtopsdk/mtop/unit/UnitSettingParseUtil$1;->val$userUnit:Lmtopsdk/mtop/unit/UserUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 137
    const/4 v5, 0x0

    .line 139
    :try_start_0
    iget-object v0, p0, Lmtopsdk/mtop/unit/UnitSettingParseUtil$1;->val$userUnit:Lmtopsdk/mtop/unit/UserUnit;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 140
    const-string/jumbo v0, "UnitSettingParseUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[updateUserUnitInfo] userUnitStr="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    invoke-static {v5}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    :goto_1
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    const-string/jumbo v1, "UnitSettingParseUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[updateUserUnitInfo] Serialize userUnit to json error ---"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_0
    invoke-static {}, Lmtopsdk/common/util/ConfigStoreManager;->getInstance()Lmtopsdk/common/util/ConfigStoreManager;

    move-result-object v0

    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v1

    invoke-virtual {v1}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "UnitSettingStore"

    const-string/jumbo v3, "USER_UNIT_ITEM."

    iget-object v4, p0, Lmtopsdk/mtop/unit/UnitSettingParseUtil$1;->val$userUnit:Lmtopsdk/mtop/unit/UserUnit;

    iget-object v4, v4, Lmtopsdk/mtop/unit/UserUnit;->userId:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lmtopsdk/common/util/ConfigStoreManager;->saveConfigItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
