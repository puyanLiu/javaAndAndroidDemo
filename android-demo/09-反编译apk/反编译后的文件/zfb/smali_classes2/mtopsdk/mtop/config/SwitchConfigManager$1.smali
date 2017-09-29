.class Lmtopsdk/mtop/config/SwitchConfigManager$1;
.super Ljava/lang/Object;
.source "SwitchConfigManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lmtopsdk/mtop/config/SwitchConfigManager;

.field final synthetic val$apiConfig:Lmtopsdk/mtop/config/ApiConfig;

.field final synthetic val$apiKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmtopsdk/mtop/config/SwitchConfigManager;Lmtopsdk/mtop/config/ApiConfig;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lmtopsdk/mtop/config/SwitchConfigManager$1;->this$0:Lmtopsdk/mtop/config/SwitchConfigManager;

    iput-object p2, p0, Lmtopsdk/mtop/config/SwitchConfigManager$1;->val$apiConfig:Lmtopsdk/mtop/config/ApiConfig;

    iput-object p3, p0, Lmtopsdk/mtop/config/SwitchConfigManager$1;->val$apiKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 203
    :try_start_0
    iget-object v0, p0, Lmtopsdk/mtop/config/SwitchConfigManager$1;->val$apiConfig:Lmtopsdk/mtop/config/ApiConfig;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    invoke-static {}, Lmtopsdk/common/util/ConfigStoreManager;->getInstance()Lmtopsdk/common/util/ConfigStoreManager;

    move-result-object v1

    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v2

    invoke-virtual {v2}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lmtopsdk/mtop/config/SwitchConfigManager$1;->this$0:Lmtopsdk/mtop/config/SwitchConfigManager;

    invoke-static {v3}, Lmtopsdk/mtop/config/SwitchConfigManager;->access$000(Lmtopsdk/mtop/config/SwitchConfigManager;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lmtopsdk/mtop/config/SwitchConfigManager$1;->val$apiKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v0}, Lmtopsdk/common/util/ConfigStoreManager;->saveConfigItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-static {}, Lmtopsdk/common/util/TBSdkLog;->isPrintLog()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    const-string/jumbo v1, "mtopsdk.SwitchConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[updataAndStoreApiConfig]store apiconfig succeed,apiKey="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lmtopsdk/mtop/config/SwitchConfigManager$1;->val$apiKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",apiConfigJson="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 212
    const-string/jumbo v1, "mtopsdk.SwitchConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[updataAndStoreApiConfig] serialize and store apiConfig error --- "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
