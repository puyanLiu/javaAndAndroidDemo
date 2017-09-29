.class Lcom/alipay/mobile/quinox/splash/WelcomeSplasher$UploadSplasherSeed;
.super Ljava/lang/Thread;
.source "WelcomeSplasher.java"


# instance fields
.field mApp:Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;

.field final synthetic this$0:Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;)V
    .locals 1

    .prologue
    .line 234
    iput-object p1, p0, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher$UploadSplasherSeed;->this$0:Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher$UploadSplasherSeed;->mApp:Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;

    .line 235
    iput-object p2, p0, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher$UploadSplasherSeed;->mApp:Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;

    .line 236
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 240
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 241
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher$UploadSplasherSeed;->mApp:Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher$UploadSplasherSeed;->mApp:Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;->getSpaceObjectInfo()Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    :try_start_0
    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    .line 246
    const-string/jumbo v1, "startPage"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 247
    const-string/jumbo v1, "UC-FFC-150108-03"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setUserCaseID(Ljava/lang/String;)V

    .line 248
    iget-object v1, p0, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher$UploadSplasherSeed;->mApp:Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;->getSpaceObjectInfo()Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;->getObjectId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    .line 249
    const-string/jumbo v1, "STARTPAGE"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam3(Ljava/lang/String;)V

    .line 250
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->openPage(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 253
    :catch_0
    move-exception v0

    goto :goto_0
.end method
