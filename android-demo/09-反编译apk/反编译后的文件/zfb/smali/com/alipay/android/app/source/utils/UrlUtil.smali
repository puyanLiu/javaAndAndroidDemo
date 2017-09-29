.class public Lcom/alipay/android/app/source/utils/UrlUtil;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/android/app/source/utils/UrlUtil;->a:Ljava/util/Map;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .prologue
    .line 32
    if-nez p2, :cond_6

    .line 34
    sget-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->HTTP_URL:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-object p0

    .line 37
    :cond_1
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 40
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 41
    :goto_1
    if-eqz v0, :cond_2

    .line 42
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    :cond_2
    sget-object v0, Lcom/alipay/android/app/source/utils/UrlUtil;->a:Ljava/util/Map;

    const-string/jumbo v1, "pre_link_ip"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 49
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 50
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object p0, v0

    .line 51
    goto :goto_0

    .line 40
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 55
    :cond_4
    sget-object v1, Lcom/alipay/android/app/source/utils/UrlUtil;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 56
    sget-object v0, Lcom/alipay/android/app/source/utils/UrlUtil;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    goto :goto_0

    .line 58
    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 59
    sget-object v1, Lcom/alipay/android/app/source/utils/UrlUtil;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, v0

    .line 60
    goto :goto_0

    .line 65
    :cond_6
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 66
    sget-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->HTTP_URL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 67
    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/assist/MspAssistUtil;->a(Landroid/content/Context;)V

    .line 69
    :cond_7
    sget-object p0, Lcom/alipay/android/app/pay/GlobalConstant;->HTTP_URL:Ljava/lang/String;

    .line 71
    :cond_8
    invoke-static {p0}, Lcom/alipay/android/app/source/utils/UrlUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 72
    invoke-static {p1, p0}, Lcom/alipay/android/app/source/utils/UrlUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_9
    invoke-static {p0}, Lcom/alipay/android/app/assist/MspAssistUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 77
    invoke-static {p1, p0}, Lcom/alipay/android/app/source/utils/UrlUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 80
    :cond_a
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/app/source/utils/UrlUtil;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 81
    invoke-static {p1, p0}, Lcom/alipay/android/app/source/utils/UrlUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 84
    :cond_b
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    invoke-virtual {v1}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 94
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    .line 95
    invoke-static {p1, p0}, Lcom/alipay/android/app/source/utils/UrlUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 87
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    .line 89
    invoke-static {p1, p0}, Lcom/alipay/android/app/source/utils/UrlUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/alipay/android/app/source/utils/UrlUtil;->a:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 109
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    invoke-virtual {v0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/source/utils/UrlUtil;->b(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    .line 112
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    .line 114
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 100
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    sget-object v0, Lcom/alipay/android/app/source/utils/UrlUtil;->a:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    sget-object v0, Lcom/alipay/android/app/source/utils/UrlUtil;->a:Ljava/util/Map;

    const-string/jumbo v1, "pre_link_ip"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v4, 0xff

    .line 120
    .line 121
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    :goto_0
    return v1

    .line 124
    :cond_0
    const-string/jumbo v2, "\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}"

    invoke-virtual {p0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 125
    const-string/jumbo v2, "\\."

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 126
    aget-object v3, v2, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ge v3, v4, :cond_1

    .line 127
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ge v3, v4, :cond_1

    .line 128
    const/4 v3, 0x2

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ge v3, v4, :cond_1

    .line 129
    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ge v2, v4, :cond_1

    :goto_1
    move v1, v0

    .line 136
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method
