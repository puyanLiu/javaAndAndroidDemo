.class final Lcom/alipay/android/phone/businesscommon/receiver/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/receiver/LanguageChangeReceiver;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/receiver/LanguageChangeReceiver;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/receiver/c;->a:Lcom/alipay/android/phone/businesscommon/receiver/LanguageChangeReceiver;

    iput-object p2, p0, Lcom/alipay/android/phone/businesscommon/receiver/c;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->getInstance()Lcom/alipay/mobile/framework/locale/LocaleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->getAlipayLocaleDes()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/utils/LanguageSettingUtils;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/alipay/android/phone/businesscommon/utils/LanguageSettingUtils;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sput-boolean v3, Lcom/alipay/android/phone/businesscommon/utils/LanguageSettingUtils;->a:Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/receiver/c;->b:Landroid/content/Context;

    const-class v2, Lcom/alipay/android/phone/businesscommon/service/LanguageSettingService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/receiver/c;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/receiver/c;->a:Lcom/alipay/android/phone/businesscommon/receiver/LanguageChangeReceiver;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/receiver/LanguageChangeReceiver;->a(Lcom/alipay/android/phone/businesscommon/receiver/LanguageChangeReceiver;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "change"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->getInstance()Lcom/alipay/mobile/framework/locale/LocaleHelper;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->setUploadLocaleFlag(Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
