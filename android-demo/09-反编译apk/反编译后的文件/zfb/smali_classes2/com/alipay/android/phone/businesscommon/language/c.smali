.class final Lcom/alipay/android/phone/businesscommon/language/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/language/LanguageSettingActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/language/LanguageSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/language/c;->a:Lcom/alipay/android/phone/businesscommon/language/LanguageSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/language/c;->a:Lcom/alipay/android/phone/businesscommon/language/LanguageSettingActivity;

    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/language/LanguageSettingActivity;->a(Lcom/alipay/android/phone/businesscommon/language/LanguageSettingActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getSourceId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "20000008"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "20000008"

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/language/c;->a:Lcom/alipay/android/phone/businesscommon/language/LanguageSettingActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/language/LanguageSettingActivity;->a(Lcom/alipay/android/phone/businesscommon/language/LanguageSettingActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/language/LanguageApp;

    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/language/LanguageApp;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    invoke-static {}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->getInstance()Lcom/alipay/mobile/framework/locale/LocaleHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/language/c;->a:Lcom/alipay/android/phone/businesscommon/language/LanguageSettingActivity;

    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/language/c;->a:Lcom/alipay/android/phone/businesscommon/language/LanguageSettingActivity;

    invoke-static {v3}, Lcom/alipay/android/phone/businesscommon/language/LanguageSettingActivity;->b(Lcom/alipay/android/phone/businesscommon/language/LanguageSettingActivity;)Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/android/phone/businesscommon/language/LanguageAdapter;->a()I

    move-result v3

    invoke-static {v3}, Lcom/alipay/android/phone/businesscommon/language/LanguageSettingActivity;->a(I)I

    move-result v3

    iget-object v4, p0, Lcom/alipay/android/phone/businesscommon/language/c;->a:Lcom/alipay/android/phone/businesscommon/language/LanguageSettingActivity;

    invoke-virtual {v2, v3, v4, v1, v0}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->setNewLocale(ILandroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)Z

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/language/c;->a:Lcom/alipay/android/phone/businesscommon/language/LanguageSettingActivity;

    invoke-static {}, Lcom/alipay/android/phone/businesscommon/language/LanguageSettingActivity;->a()V

    return-void

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method
