.class final Lcom/alipay/android/phone/businesscommon/advertisement/impl/n;
.super Ljava/lang/Object;
.source "AdvertisementServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/n;->a:Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 74
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 76
    const-string/jumbo v1, "com.alipay.android.phone.businesscommon"

    .line 73
    invoke-static {v0, v1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/SharedPreferencesManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/n;->a:Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;

    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->a(Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/n;->a:Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;

    const-string/jumbo v2, "AdLastLoginUser"

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->a(Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;Ljava/lang/String;)V

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/n;->a:Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->b(Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;)V

    .line 81
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/n;->a:Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->c(Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;)V

    .line 82
    return-void
.end method
