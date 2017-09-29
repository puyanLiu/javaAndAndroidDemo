.class public Lcom/alipay/mobile/framework/locale/LocaleHelper;
.super Ljava/lang/Object;
.source "LocaleHelper.java"


# static fields
.field public static final CURRENT_LANGUAGE:Ljava/lang/String; = "language"

.field public static final FLAG_CHINA:I = 0x1

.field public static final FLAG_HONGKONG:I = 0x3

.field public static final FLAG_TAIWAN:I = 0x2

.field public static final FLAG_US:I = 0x4

.field public static final LANGUAGE_CHANGE:Ljava/lang/String; = "com.alipay.mobile.language.CHANGE"

.field public static LANGUAGE_UPLOAD:Z = false

.field public static final SPKEY_CHANGE_FLAG:Ljava/lang/String; = "change"

.field public static final SPKEY_CURRENT_LANGUAGE:Ljava/lang/String; = "currentlanguage"

.field public static final SPKEY_UPLOAD_FLAG:Ljava/lang/String; = "uploadflag"

.field private static final a:Ljava/lang/String;

.field private static b:Lcom/alipay/mobile/framework/locale/LocaleHelper;

.field private static e:I


# instance fields
.field private c:Z

.field private d:Landroid/app/Application;

.field private final f:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/alipay/mobile/framework/locale/LocaleHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->LANGUAGE_UPLOAD:Z

    .line 52
    const/4 v0, -0x1

    sput v0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->e:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 546
    new-instance v0, Lcom/alipay/mobile/framework/locale/LocaleHelper$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/framework/locale/LocaleHelper$2;-><init>(Lcom/alipay/mobile/framework/locale/LocaleHelper;)V

    iput-object v0, p0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->f:Landroid/content/BroadcastReceiver;

    .line 236
    return-void
.end method

.method private a()I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 291
    .line 294
    invoke-direct {p0}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    const/4 v0, 0x1

    .line 310
    :goto_0
    return v0

    .line 299
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v2, "flag"

    const/4 v3, -0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 305
    :goto_1
    if-ne v0, v1, :cond_1

    .line 306
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->getAvailableLocaleFlag()I

    move-result v0

    .line 309
    :cond_1
    sget-object v1, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getSavedLocaleFlag "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 300
    :catch_0
    move-exception v0

    .line 301
    sget-object v2, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a:Ljava/lang/String;

    const-string/jumbo v3, "getSavedLocaleFlag"

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_1
.end method

.method private static a(Ljava/util/Locale;)I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 325
    if-nez p0, :cond_0

    .line 352
    :goto_0
    return v0

    .line 329
    :cond_0
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v1, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 330
    const/4 v0, 0x1

    goto :goto_0

    .line 333
    :cond_1
    sget-object v1, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v1, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 334
    const/4 v0, 0x2

    goto :goto_0

    .line 337
    :cond_2
    new-instance v1, Ljava/util/Locale;

    const-string/jumbo v2, "zh"

    const-string/jumbo v3, "HK"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-virtual {v1, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 340
    const/4 v0, 0x3

    goto :goto_0

    .line 343
    :cond_3
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 345
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 346
    const/4 v0, 0x4

    goto :goto_0

    .line 349
    :cond_4
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "incorrect locale: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 350
    sget-object v2, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a:Ljava/lang/String;

    const-string/jumbo v3, "getFlagByLocale"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(I)V
    .locals 3

    .prologue
    .line 270
    sget-object v0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setCurrentLanguage "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "currentlanguage"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :goto_0
    return-void

    .line 275
    :catch_0
    move-exception v0

    .line 276
    sget-object v1, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a:Ljava/lang/String;

    const-string/jumbo v2, "setCurrentLanguage"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-direct {p0}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a()I

    move-result v1

    .line 88
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->getCurrentLanguage()I

    move-result v0

    sput v0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->e:I

    .line 89
    sget-object v0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "flag = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    sget-object v0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "currentLanguage = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/alipay/mobile/framework/locale/LocaleHelper;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    sget v0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->e:I

    if-eq v0, v1, :cond_0

    .line 92
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->setUploadLocaleFlag(Z)V

    .line 93
    invoke-direct {p0, v1}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a(I)V

    :cond_0
    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move v5, p1

    .line 95
    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->setNewLocale(ILandroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Z)Z

    .line 96
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/framework/locale/LocaleHelper;Z)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a(Z)V

    return-void
.end method

.method private b()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 315
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->d:Landroid/app/Application;

    const-string/jumbo v1, "locale"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 320
    :goto_0
    return-object v0

    .line 318
    :catch_0
    move-exception v0

    .line 319
    sget-object v1, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a:Ljava/lang/String;

    const-string/jumbo v2, "getPreference"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 320
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 520
    iget-object v2, p0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->d:Landroid/app/Application;

    if-nez v2, :cond_0

    .line 537
    :goto_0
    return v0

    .line 524
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->d:Landroid/app/Application;

    const-string/jumbo v3, "CommonConfig"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 526
    const-string/jumbo v3, "LOCALE_SWITCH_ANDROID"

    const-string/jumbo v4, "open"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 528
    const-string/jumbo v3, "close"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 529
    sget-object v2, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a:Ljava/lang/String;

    const-string/jumbo v3, "isSupportMutiLocale false"

    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 530
    goto :goto_0

    .line 532
    :cond_1
    sget-object v1, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a:Ljava/lang/String;

    const-string/jumbo v2, "isSupportMutiLocale true"

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 537
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getInstance()Lcom/alipay/mobile/framework/locale/LocaleHelper;
    .locals 2

    .prologue
    .line 58
    sget-object v0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->b:Lcom/alipay/mobile/framework/locale/LocaleHelper;

    if-nez v0, :cond_1

    .line 60
    const-class v1, Lcom/alipay/mobile/framework/locale/LocaleHelper;

    monitor-enter v1

    .line 61
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->b:Lcom/alipay/mobile/framework/locale/LocaleHelper;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/alipay/mobile/framework/locale/LocaleHelper;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/locale/LocaleHelper;-><init>()V

    sput-object v0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->b:Lcom/alipay/mobile/framework/locale/LocaleHelper;

    .line 64
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :cond_1
    sget-object v0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->b:Lcom/alipay/mobile/framework/locale/LocaleHelper;

    return-object v0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getAlipayLocaleDes()Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->getAlipayLocaleFlag()I

    move-result v1

    .line 103
    const/4 v0, 0x0

    .line 104
    packed-switch v1, :pswitch_data_0

    .line 121
    :goto_0
    :pswitch_0
    return-object v0

    .line 106
    :pswitch_1
    const-string/jumbo v0, "zh-Hans"

    goto :goto_0

    .line 109
    :pswitch_2
    const-string/jumbo v0, "zh-Hant"

    goto :goto_0

    .line 112
    :pswitch_3
    const-string/jumbo v0, "zh-HK"

    goto :goto_0

    .line 115
    :pswitch_4
    const-string/jumbo v0, "en"

    goto :goto_0

    .line 118
    :pswitch_5
    const-string/jumbo v0, "en"

    goto :goto_0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getAlipayLocaleFlag()I
    .locals 4

    .prologue
    .line 128
    const/4 v0, 0x0

    .line 131
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->d:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    invoke-static {v0}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a(Ljava/util/Locale;)I

    move-result v0

    .line 139
    sget-object v1, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getAlipayLocaleFlag: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return v0

    .line 133
    :catch_0
    move-exception v1

    .line 134
    sget-object v2, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a:Ljava/lang/String;

    const-string/jumbo v3, "getAlipayLocaleFlag"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getAvailableLocaleFlag()I
    .locals 5

    .prologue
    const/4 v0, 0x4

    .line 155
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 156
    if-nez v1, :cond_1

    const/4 v0, -0x1

    .line 158
    :cond_0
    :goto_0
    sget-object v1, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getAvailableFlagByLocale: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return v0

    .line 156
    :cond_1
    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v2, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    sget-object v2, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v2, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/util/Locale;

    const-string/jumbo v3, "zh"

    const-string/jumbo v4, "HK"

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "incorrect locale: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a:Ljava/lang/String;

    const-string/jumbo v3, "getFlagByLocale"

    invoke-static {v1, v3, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getCurrentLanguage()I
    .locals 3

    .prologue
    .line 287
    invoke-direct {p0}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "currentlanguage"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSystemLocaleFlag()I
    .locals 4

    .prologue
    .line 147
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 148
    invoke-static {v0}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a(Ljava/util/Locale;)I

    move-result v0

    .line 150
    sget-object v1, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getSystemLocaleFlag: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return v0
.end method

.method public getUploadLocaleFlag()Z
    .locals 4

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "uploadflag"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 282
    sget-object v1, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setCurrentLanguage "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    return v0
.end method

.method public initSavedLocale(Landroid/app/Application;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 74
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->c:Z

    if-eqz v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 78
    :cond_0
    sget-object v0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a:Ljava/lang/String;

    const-string/jumbo v1, "initSavedLocale start"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iput-object p1, p0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->d:Landroid/app/Application;

    .line 80
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->d:Landroid/app/Application;

    iget-object v2, p0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 81
    invoke-direct {p0, v3}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a(Z)V

    .line 82
    sget-object v0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a:Ljava/lang/String;

    const-string/jumbo v1, "initSavedLocale end"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iput-boolean v3, p0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->c:Z

    goto :goto_0
.end method

.method public setNewLocale(ILandroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 6

    .prologue
    .line 175
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->setNewLocale(ILandroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Z)Z

    move-result v0

    return v0
.end method

.method public setNewLocale(ILandroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Z)Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 194
    .line 196
    if-gez p1, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->getSystemLocaleFlag()I

    move-result v2

    if-gez v2, :cond_1

    .line 232
    :cond_0
    :goto_0
    return v0

    .line 200
    :cond_1
    sget-object v2, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "setNewLocale "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->getAlipayLocaleFlag()I

    move-result v4

    .line 204
    if-nez p2, :cond_2

    if-nez p3, :cond_2

    if-eqz p4, :cond_3

    .line 205
    :cond_2
    sget-object v2, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "saveLocale "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->b()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v5, "flag"

    invoke-interface {v2, v5, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :cond_3
    :goto_1
    if-eq p1, v4, :cond_0

    .line 212
    if-gez p1, :cond_5

    .line 214
    :goto_2
    if-eqz v3, :cond_0

    .line 218
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a(I)V

    .line 219
    :try_start_1
    invoke-direct {p0}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->b()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v4, "change"

    const/4 v5, 0x1

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object v2, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a:Ljava/lang/String;

    const-string/jumbo v4, "setChangeLocaleFlag 1"

    invoke-static {v2, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 221
    :goto_3
    if-eqz p5, :cond_4

    .line 222
    iget-boolean v2, p0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->c:Z

    if-nez v2, :cond_6

    .line 227
    :cond_4
    :goto_4
    :try_start_2
    iget-object v1, p0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->d:Landroid/app/Application;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "setLocaleToApplicationResources"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/util/Locale;

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v2, p0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->d:Landroid/app/Application;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->d:Landroid/app/Application;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "clearCachedBundleResources"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v2, p0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->d:Landroid/app/Application;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a:Ljava/lang/String;

    const-string/jumbo v2, "setLocaleToResource"

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 228
    :goto_5
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 229
    const-string/jumbo v2, "com.alipay.mobile.language.CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    const-string/jumbo v2, "language"

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->getAlipayLocaleDes()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    iget-object v2, p0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->d:Landroid/app/Application;

    invoke-virtual {v2, v1}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 205
    :catch_0
    move-exception v2

    sget-object v5, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a:Ljava/lang/String;

    const-string/jumbo v6, "saveLocale"

    invoke-static {v5, v6, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 212
    :cond_5
    packed-switch p1, :pswitch_data_0

    new-instance v2, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "incorrect flag: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a:Ljava/lang/String;

    const-string/jumbo v5, "getLocaleByFlag"

    invoke-static {v4, v5, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :pswitch_0
    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    move-object v3, v2

    goto/16 :goto_2

    :pswitch_1
    sget-object v2, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    move-object v3, v2

    goto/16 :goto_2

    :pswitch_2
    new-instance v2, Ljava/util/Locale;

    const-string/jumbo v3, "zh"

    const-string/jumbo v4, "HK"

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    goto/16 :goto_2

    :pswitch_3
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object v3, v2

    goto/16 :goto_2

    .line 219
    :catch_1
    move-exception v2

    sget-object v4, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a:Ljava/lang/String;

    const-string/jumbo v5, "setChangeLocaleFlag"

    invoke-static {v4, v5, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 222
    :cond_6
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2, p2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishAllActivities(Landroid/app/Activity;)Z

    move-result v4

    sget-object v5, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "refreshHomeActivity: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/alipay/mobile/framework/locale/LocaleHelper$1;

    invoke-direct {v0, p0, v2, p3, p4}, Lcom/alipay/mobile/framework/locale/LocaleHelper$1;-><init>(Lcom/alipay/mobile/framework/locale/LocaleHelper;Lcom/alipay/mobile/framework/MicroApplicationContext;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move v0, v1

    goto/16 :goto_4

    .line 227
    :catch_2
    move-exception v1

    sget-object v2, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a:Ljava/lang/String;

    const-string/jumbo v3, "setLocaleToResource"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 212
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setUploadLocaleFlag(Z)V
    .locals 3

    .prologue
    .line 259
    sget-object v0, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setUploadLocaleFlag "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "uploadflag"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :goto_0
    return-void

    .line 264
    :catch_0
    move-exception v0

    .line 265
    sget-object v1, Lcom/alipay/mobile/framework/locale/LocaleHelper;->a:Ljava/lang/String;

    const-string/jumbo v2, "setUploadLocaleFlag"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
