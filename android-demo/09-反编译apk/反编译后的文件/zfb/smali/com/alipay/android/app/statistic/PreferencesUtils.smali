.class public Lcom/alipay/android/app/statistic/PreferencesUtils;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/app/statistic/PreferencesUtils;->a:Ljava/util/Map;

    return-void
.end method

.method private static a(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 23
    sget-object v0, Lcom/alipay/android/app/statistic/PreferencesUtils;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/android/app/statistic/PreferencesUtils;->a:Ljava/util/Map;

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    sget-object v1, Lcom/alipay/android/app/statistic/PreferencesUtils;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 29
    sget-object v0, Lcom/alipay/android/app/statistic/PreferencesUtils;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    .line 35
    :cond_1
    :goto_0
    return-object v0

    .line 30
    :cond_2
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 31
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 33
    sget-object v1, Lcom/alipay/android/app/statistic/PreferencesUtils;->a:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 40
    const/4 v0, 0x0

    .line 41
    invoke-static {p0}, Lcom/alipay/android/app/statistic/PreferencesUtils;->a(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 42
    if-eqz v1, :cond_0

    .line 43
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 47
    const/4 v0, 0x1

    .line 49
    :cond_0
    return v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    invoke-static {p0}, Lcom/alipay/android/app/statistic/PreferencesUtils;->a(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_0

    .line 60
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 67
    :cond_0
    return-object p2
.end method
