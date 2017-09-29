.class final Lmtopsdk/mtop/global/MtopSDK$3;
.super Ljava/lang/Object;
.source "MtopSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$envMode:Lmtopsdk/mtop/domain/EnvModeEnum;


# direct methods
.method constructor <init>(Lmtopsdk/mtop/domain/EnvModeEnum;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lmtopsdk/mtop/global/MtopSDK$3;->val$envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 217
    invoke-static {}, Lmtopsdk/mtop/global/MtopSDK;->checkMtopSDKInit()V

    .line 218
    const-string/jumbo v0, "mtopsdk.MtopSDK"

    const-string/jumbo v1, "[switchEnvMode]MtopSDK switchEnvMode start"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    sget-object v0, Lmtopsdk/mtop/global/MtopSDK$4;->$SwitchMap$mtopsdk$mtop$domain$EnvModeEnum:[I

    iget-object v1, p0, Lmtopsdk/mtop/global/MtopSDK$3;->val$envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/EnvModeEnum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 252
    :goto_0
    invoke-static {}, Lmtopsdk/mtop/global/MtopSDK;->access$400()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmtopsdk/mtop/global/MtopSDK;->access$600(Landroid/content/Context;)V

    .line 258
    invoke-static {}, Lmtopsdk/mtop/config/SwitchConfigManager;->getInstance()Lmtopsdk/mtop/config/SwitchConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lmtopsdk/mtop/config/SwitchConfigManager;->initConfigReceiverAndLoadLocalConfig()V

    .line 260
    const-string/jumbo v0, "mtopsdk.MtopSDK"

    const-string/jumbo v1, "[switchEnvMode]MtopSDK switchEnvMode end"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    return-void

    .line 221
    :pswitch_0
    invoke-static {}, Lmtopsdk/mtop/global/MtopSDK;->access$400()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v0

    sget-object v1, Lmtopsdk/mtop/domain/EnvModeEnum;->ONLINE:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/global/SDKConfig;->setGlobalEnvMode(Lmtopsdk/mtop/domain/EnvModeEnum;)Lmtopsdk/mtop/global/SDKConfig;

    .line 222
    sget-object v0, Lmtopsdk/mtop/domain/EnvModeEnum;->ONLINE:Lmtopsdk/mtop/domain/EnvModeEnum;

    sput-object v0, Lmtopsdk/mtop/MtopProxyBase;->envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    .line 223
    sget-object v0, Lmtopsdk/common/util/SdkSetting$ENV;->release:Lmtopsdk/common/util/SdkSetting$ENV;

    invoke-static {v0}, Lmtopsdk/common/util/SdkSetting;->setEnv(Lmtopsdk/common/util/SdkSetting$ENV;)V

    .line 224
    iget-object v0, p0, Lmtopsdk/mtop/global/MtopSDK$3;->val$envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-static {v0}, Lmtopsdk/mtop/global/MtopSDK;->access$500(Lmtopsdk/mtop/domain/EnvModeEnum;)V

    .line 225
    const-string/jumbo v0, "mtopsdk.MtopSDK"

    const-string/jumbo v1, "switch envMode to ONLINE!"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const/4 v0, 0x0

    invoke-static {v0}, Lmtopsdk/mtop/global/MtopSDK;->setLogSwitch(Z)V

    goto :goto_0

    .line 230
    :pswitch_1
    invoke-static {}, Lmtopsdk/mtop/global/MtopSDK;->access$400()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v0

    sget-object v1, Lmtopsdk/mtop/domain/EnvModeEnum;->PREPARE:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/global/SDKConfig;->setGlobalEnvMode(Lmtopsdk/mtop/domain/EnvModeEnum;)Lmtopsdk/mtop/global/SDKConfig;

    .line 231
    sget-object v0, Lmtopsdk/mtop/domain/EnvModeEnum;->PREPARE:Lmtopsdk/mtop/domain/EnvModeEnum;

    sput-object v0, Lmtopsdk/mtop/MtopProxyBase;->envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    .line 232
    sget-object v0, Lmtopsdk/common/util/SdkSetting$ENV;->develop:Lmtopsdk/common/util/SdkSetting$ENV;

    invoke-static {v0}, Lmtopsdk/common/util/SdkSetting;->setEnv(Lmtopsdk/common/util/SdkSetting$ENV;)V

    .line 233
    invoke-static {v2}, Lmtopsdk/mtop/global/MtopSDK;->setLogSwitch(Z)V

    .line 234
    iget-object v0, p0, Lmtopsdk/mtop/global/MtopSDK$3;->val$envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-static {v0}, Lmtopsdk/mtop/global/MtopSDK;->access$500(Lmtopsdk/mtop/domain/EnvModeEnum;)V

    .line 235
    const-string/jumbo v0, "mtopsdk.MtopSDK"

    const-string/jumbo v1, "switch envMode to PRE!"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 238
    :pswitch_2
    invoke-static {}, Lmtopsdk/mtop/global/MtopSDK;->access$400()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v0

    sget-object v1, Lmtopsdk/mtop/domain/EnvModeEnum;->TEST:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/global/SDKConfig;->setGlobalEnvMode(Lmtopsdk/mtop/domain/EnvModeEnum;)Lmtopsdk/mtop/global/SDKConfig;

    .line 239
    sget-object v0, Lmtopsdk/mtop/domain/EnvModeEnum;->TEST:Lmtopsdk/mtop/domain/EnvModeEnum;

    sput-object v0, Lmtopsdk/mtop/MtopProxyBase;->envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    .line 240
    sget-object v0, Lmtopsdk/common/util/SdkSetting$ENV;->debug:Lmtopsdk/common/util/SdkSetting$ENV;

    invoke-static {v0}, Lmtopsdk/common/util/SdkSetting;->setEnv(Lmtopsdk/common/util/SdkSetting$ENV;)V

    .line 241
    invoke-static {v2}, Lmtopsdk/mtop/global/MtopSDK;->setLogSwitch(Z)V

    .line 242
    iget-object v0, p0, Lmtopsdk/mtop/global/MtopSDK$3;->val$envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-static {v0}, Lmtopsdk/mtop/global/MtopSDK;->access$500(Lmtopsdk/mtop/domain/EnvModeEnum;)V

    .line 243
    const-string/jumbo v0, "mtopsdk.MtopSDK"

    const-string/jumbo v1, "switch envMode to DAILY!"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 246
    :pswitch_3
    invoke-static {}, Lmtopsdk/mtop/global/MtopSDK;->access$400()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v0

    sget-object v1, Lmtopsdk/mtop/domain/EnvModeEnum;->TEST_SANDBOX:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/global/SDKConfig;->setGlobalEnvMode(Lmtopsdk/mtop/domain/EnvModeEnum;)Lmtopsdk/mtop/global/SDKConfig;

    .line 247
    sget-object v0, Lmtopsdk/mtop/domain/EnvModeEnum;->TEST_SANDBOX:Lmtopsdk/mtop/domain/EnvModeEnum;

    sput-object v0, Lmtopsdk/mtop/MtopProxyBase;->envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    .line 248
    sget-object v0, Lmtopsdk/common/util/SdkSetting$ENV;->debug:Lmtopsdk/common/util/SdkSetting$ENV;

    invoke-static {v0}, Lmtopsdk/common/util/SdkSetting;->setEnv(Lmtopsdk/common/util/SdkSetting$ENV;)V

    .line 249
    invoke-static {v2}, Lmtopsdk/mtop/global/MtopSDK;->setLogSwitch(Z)V

    .line 250
    iget-object v0, p0, Lmtopsdk/mtop/global/MtopSDK$3;->val$envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-static {v0}, Lmtopsdk/mtop/global/MtopSDK;->access$500(Lmtopsdk/mtop/domain/EnvModeEnum;)V

    .line 251
    const-string/jumbo v0, "mtopsdk.MtopSDK"

    const-string/jumbo v1, "switch envMode to DAILY SandBox!"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 219
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
