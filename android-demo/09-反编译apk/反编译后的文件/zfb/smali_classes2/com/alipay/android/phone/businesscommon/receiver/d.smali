.class final Lcom/alipay/android/phone/businesscommon/receiver/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/receiver/SettingReceiver;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/receiver/SettingReceiver;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/receiver/d;->a:Lcom/alipay/android/phone/businesscommon/receiver/SettingReceiver;

    iput-object p2, p0, Lcom/alipay/android/phone/businesscommon/receiver/d;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v1, 0x0

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
    sput-boolean v1, Lcom/alipay/android/phone/businesscommon/utils/LanguageSettingUtils;->a:Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/receiver/d;->b:Landroid/content/Context;

    const-class v2, Lcom/alipay/android/phone/businesscommon/service/LanguageSettingService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/receiver/d;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->getInstance()Lcom/alipay/mobile/framework/locale/LocaleHelper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->setUploadLocaleFlag(Z)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/android/phone/businesscommon/utils/LanguageSettingUtils;->a:Z

    goto :goto_0
.end method
