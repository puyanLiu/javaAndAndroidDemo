.class public Lcom/alipay/android/app/ui/quickpay/MspInitAssistServiceImpl;
.super Lcom/alipay/android/app/MspInitAssistService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alipay/android/app/MspInitAssistService;-><init>()V

    return-void
.end method


# virtual methods
.method public initWhenServiceCreate()V
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->l()V

    .line 22
    :try_start_0
    invoke-static {}, Lcom/alipay/android/app/helper/MspConfig;->r()Lcom/alipay/android/app/helper/MspConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/helper/MspConfig;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/EditTextPostProcessor;->setRsaPublicKey(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :goto_0
    return-void

    .line 24
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public initWhenServiceFirstCreate(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 16
    return-void
.end method

.method public stopWhenServiceDestroy(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 32
    return-void
.end method
