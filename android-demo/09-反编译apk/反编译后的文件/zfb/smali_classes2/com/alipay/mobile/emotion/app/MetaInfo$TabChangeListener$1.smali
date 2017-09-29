.class Lcom/alipay/mobile/emotion/app/MetaInfo$TabChangeListener$1;
.super Ljava/lang/Object;
.source "MetaInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/emotion/app/MetaInfo$TabChangeListener;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/app/MetaInfo$TabChangeListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/app/MetaInfo$TabChangeListener$1;->this$1:Lcom/alipay/mobile/emotion/app/MetaInfo$TabChangeListener;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->runSyncTask(Z)V

    .line 73
    const-string/jumbo v0, "KEY_BUILD_IN_FLAG"

    invoke-static {v0}, Lcom/alipay/mobile/emotion/util/StorageHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/EmotionDataManager;

    move-result-object v0

    .line 75
    const-string/jumbo v1, "1788303168490637619"

    .line 74
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->hasEmotionPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    const-string/jumbo v0, "wifi"

    invoke-static {}, Lcom/alipay/mobile/emotion/util/NetworkUtil;->getInstance()Lcom/alipay/mobile/emotion/util/NetworkUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/emotion/util/NetworkUtil;->getNetworkString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const-string/jumbo v0, "1788303168490637619"

    invoke-static {v0}, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper;->runRpc(Ljava/lang/String;)V

    .line 79
    :cond_0
    return-void
.end method
