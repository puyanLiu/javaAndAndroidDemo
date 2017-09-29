.class public Lcom/alipay/mobile/appstoreapp/language/LanguageCache;
.super Ljava/lang/Object;
.source "LanguageCache.java"


# static fields
.field private static a:Lcom/alipay/mobile/appstoreapp/language/LanguageCache;


# instance fields
.field private b:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/appstoreapp/language/LanguageCache;->a:Lcom/alipay/mobile/appstoreapp/language/LanguageCache;

    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/language/LanguageCache;->b:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    .line 26
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "com.alipay.mobile.appstoreapp.language.stage"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/SharedPreferencesManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/language/LanguageCache;->b:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    .line 27
    return-void
.end method

.method public static a()Lcom/alipay/mobile/appstoreapp/language/LanguageCache;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/alipay/mobile/appstoreapp/language/LanguageCache;->a:Lcom/alipay/mobile/appstoreapp/language/LanguageCache;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/alipay/mobile/appstoreapp/language/LanguageCache;

    invoke-direct {v0}, Lcom/alipay/mobile/appstoreapp/language/LanguageCache;-><init>()V

    sput-object v0, Lcom/alipay/mobile/appstoreapp/language/LanguageCache;->a:Lcom/alipay/mobile/appstoreapp/language/LanguageCache;

    .line 33
    :cond_0
    sget-object v0, Lcom/alipay/mobile/appstoreapp/language/LanguageCache;->a:Lcom/alipay/mobile/appstoreapp/language/LanguageCache;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/language/LanguageCache;->b:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    if-nez v0, :cond_0

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/language/LanguageCache;->b:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    const-string/jumbo v1, "key_language_stage"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/language/LanguageCache;->b:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->commit()Z

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 41
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/language/LanguageCache;->b:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    if-nez v1, :cond_0

    .line 44
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/language/LanguageCache;->b:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    const-string/jumbo v2, "key_language_stage"

    invoke-virtual {v1, v2, v0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final c()Z
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/language/LanguageCache;->b:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    if-nez v0, :cond_0

    .line 61
    const/4 v0, 0x1

    .line 63
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/language/LanguageCache;->b:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    const-string/jumbo v1, "key_language_init"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public final d()V
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/language/LanguageCache;->b:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    if-nez v0, :cond_0

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/language/LanguageCache;->b:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    const-string/jumbo v1, "key_language_init"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putBoolean(Ljava/lang/String;Z)Z

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/language/LanguageCache;->b:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->commit()Z

    goto :goto_0
.end method
