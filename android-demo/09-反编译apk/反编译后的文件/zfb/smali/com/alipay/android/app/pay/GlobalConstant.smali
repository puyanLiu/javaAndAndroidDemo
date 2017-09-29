.class public Lcom/alipay/android/app/pay/GlobalConstant;
.super Ljava/lang/Object;


# static fields
.field public static API_VERSION:Ljava/lang/String; = null

.field public static APPID:Ljava/lang/String; = null

.field public static DEBUG:Z = false

.field public static DRAW_COLUMN_FRAME:Z = false

.field public static DRAW_ROW_FRAME:Z = false

.field public static EXTERNAL_PROVIDED_HTTP_URL:Ljava/lang/String; = null

.field public static FROM_WHICH:Ljava/lang/String; = null

.field public static final GLOBAL_SETTINGS:Ljava/lang/String; = "demo_global_settings"

.field public static HARDWARE_PAY_TYPES:Ljava/lang/String; = null

.field public static HTTP_CONNECTION_TIMEOUT:I = 0x0

.field public static HTTP_SOCKET_BUFFER_SIZE:I = 0x0

.field public static HTTP_SO_TIMEOUT:I = 0x0

.field public static HTTP_URL:Ljava/lang/String; = null

.field public static KERNEL_VERSION:Ljava/lang/String; = null

.field public static final KEY_RSA:Ljava/lang/String; = "trideskey"

.field public static final LAST_MSP_PARAMS:Ljava/lang/String; = "last_msp_params"

.field public static MINI_DEMO_ENV:Z = false

.field public static MONITOR_URL:Ljava/lang/String; = null

.field public static final MSP_CHECK_UPDATE_INTERVAL_TIME:Ljava/lang/String; = "msp_check_update_interval_time"

.field public static final MSP_LAST_CHECK_UPDATE_TIME:Ljava/lang/String; = "msp_last_check_update_time"

.field public static MSP_PACKAGENAME:Ljava/lang/String; = null

.field public static final MSP_SWITCH_GATEWAY:Ljava/lang/String; = "msp_switch_gateway"

.field public static MSP_VERSION:Ljava/lang/String; = null

.field public static PATH:Ljava/lang/String; = null

.field public static RSA_GET_COUNT:I = 0x0

.field public static RSA_PUBLIC:Ljava/lang/String; = null

.field public static SDK:Z = false

.field public static SDK_TEXT:Ljava/lang/String; = null

.field public static SDK_TYPE:Ljava/lang/String; = null

.field public static SID:Ljava/lang/String; = null

.field public static TID_COUNT:I = 0x0

.field public static UPDATE_OS_TYPE:Ljava/lang/String; = null

.field private static final contentUri:Ljava/lang/String; = "content://com.alipay.android.app.settings.data.ServerProvider/current_server"

.field private static isConvertProperties:Z

.field public static isLoadProperties:Z

.field private static prePayConfig:Lcom/alipay/android/app/logic/request/RequestConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x4e20

    const/4 v2, 0x0

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/mspjson/test.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->PATH:Ljava/lang/String;

    .line 40
    sput-boolean v2, Lcom/alipay/android/app/pay/GlobalConstant;->isLoadProperties:Z

    .line 41
    sput-boolean v2, Lcom/alipay/android/app/pay/GlobalConstant;->isConvertProperties:Z

    .line 45
    const-string/jumbo v0, "SPSafePay"

    sput-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->APPID:Ljava/lang/String;

    .line 47
    sput v3, Lcom/alipay/android/app/pay/GlobalConstant;->HTTP_CONNECTION_TIMEOUT:I

    .line 48
    sput v3, Lcom/alipay/android/app/pay/GlobalConstant;->HTTP_SO_TIMEOUT:I

    .line 49
    const/16 v0, 0x4000

    sput v0, Lcom/alipay/android/app/pay/GlobalConstant;->HTTP_SOCKET_BUFFER_SIZE:I

    .line 52
    sput-boolean v2, Lcom/alipay/android/app/pay/GlobalConstant;->MINI_DEMO_ENV:Z

    .line 53
    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->KERNEL_VERSION:Ljava/lang/String;

    .line 55
    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->MSP_VERSION:Ljava/lang/String;

    .line 57
    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->FROM_WHICH:Ljava/lang/String;

    .line 59
    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->UPDATE_OS_TYPE:Ljava/lang/String;

    .line 61
    const/16 v0, 0xe

    sput v0, Lcom/alipay/android/app/pay/GlobalConstant;->TID_COUNT:I

    .line 63
    const/4 v0, 0x3

    sput v0, Lcom/alipay/android/app/pay/GlobalConstant;->RSA_GET_COUNT:I

    .line 67
    sput-boolean v2, Lcom/alipay/android/app/pay/GlobalConstant;->DRAW_ROW_FRAME:Z

    .line 68
    sput-boolean v2, Lcom/alipay/android/app/pay/GlobalConstant;->DRAW_COLUMN_FRAME:Z

    .line 71
    const-string/jumbo v0, "1"

    sput-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->SID:Ljava/lang/String;

    .line 72
    const-string/jumbo v0, "com.alipay.android.app"

    sput-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->MSP_PACKAGENAME:Ljava/lang/String;

    .line 73
    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->SDK_TYPE:Ljava/lang/String;

    .line 74
    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->SDK_TEXT:Ljava/lang/String;

    .line 75
    sput-boolean v2, Lcom/alipay/android/app/pay/GlobalConstant;->SDK:Z

    .line 78
    sput-object v4, Lcom/alipay/android/app/pay/GlobalConstant;->HARDWARE_PAY_TYPES:Ljava/lang/String;

    .line 79
    sput-object v4, Lcom/alipay/android/app/pay/GlobalConstant;->EXTERNAL_PROVIDED_HTTP_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertProperties(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 176
    sget-boolean v0, Lcom/alipay/android/app/pay/GlobalConstant;->isConvertProperties:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/alipay/android/app/pay/GlobalConstant;->DEBUG:Z

    if-nez v0, :cond_0

    .line 218
    :goto_0
    return-void

    .line 181
    :cond_0
    :try_start_0
    const-string/jumbo v0, "demo_mini_app_env"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 183
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/alipay/android/app/pay/GlobalConstant;->MINI_DEMO_ENV:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 189
    :cond_1
    :goto_1
    sget-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->MONITOR_URL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 190
    const-string/jumbo v0, "https://alipay.com"

    sput-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->MONITOR_URL:Ljava/lang/String;

    .line 193
    :cond_2
    sget-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->HTTP_URL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 194
    const-string/jumbo v0, "http://mcgw.alipay.com/gateway.do"

    sput-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->HTTP_URL:Ljava/lang/String;

    .line 198
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 199
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_7

    move v0, v6

    .line 200
    :goto_2
    sput-boolean v0, Lcom/alipay/android/app/pay/GlobalConstant;->DEBUG:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/alipay/android/app/pay/GlobalConstant;->MINI_DEMO_ENV:Z

    if-eqz v0, :cond_6

    .line 201
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 202
    const-string/jumbo v1, "content://com.alipay.android.app.settings.data.ServerProvider/current_server"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 203
    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_6

    .line 204
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 205
    const-string/jumbo v1, "url"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 206
    const-string/jumbo v1, "url"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->HTTP_URL:Ljava/lang/String;

    .line 210
    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 217
    :cond_6
    :goto_3
    sput-boolean v6, Lcom/alipay/android/app/pay/GlobalConstant;->isConvertProperties:Z

    goto/16 :goto_0

    .line 199
    :cond_7
    const/4 v0, 0x0

    goto :goto_2

    .line 213
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static getPrePayConfig()Lcom/alipay/android/app/logic/request/RequestConfig;
    .locals 1

    .prologue
    .line 227
    sget-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->prePayConfig:Lcom/alipay/android/app/logic/request/RequestConfig;

    if-nez v0, :cond_0

    .line 228
    new-instance v0, Lcom/alipay/android/app/logic/request/RequestConfig;

    invoke-direct {v0}, Lcom/alipay/android/app/logic/request/RequestConfig;-><init>()V

    .line 229
    sput-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->prePayConfig:Lcom/alipay/android/app/logic/request/RequestConfig;

    invoke-virtual {v0}, Lcom/alipay/android/app/logic/request/RequestConfig;->a()V

    .line 231
    :cond_0
    sget-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->prePayConfig:Lcom/alipay/android/app/logic/request/RequestConfig;

    return-object v0
.end method

.method public static loadProperties(Landroid/content/Context;Ljava/io/InputStream;Z)V
    .locals 4

    .prologue
    .line 86
    sget-boolean v0, Lcom/alipay/android/app/pay/GlobalConstant;->isLoadProperties:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/alipay/android/app/pay/GlobalConstant;->DEBUG:Z

    if-nez v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 90
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 92
    invoke-virtual {v0, p1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 94
    if-eqz p2, :cond_1

    sget-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->KERNEL_VERSION:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 95
    :cond_1
    const-string/jumbo v1, "kernel_version"

    const-string/jumbo v2, "app-and"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->KERNEL_VERSION:Ljava/lang/String;

    .line 99
    :cond_2
    if-eqz p2, :cond_3

    sget-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->FROM_WHICH:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 100
    :cond_3
    const-string/jumbo v1, "from_which"

    const-string/jumbo v2, "msp"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->FROM_WHICH:Ljava/lang/String;

    .line 103
    :cond_4
    if-eqz p2, :cond_5

    sget-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->UPDATE_OS_TYPE:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 104
    :cond_5
    const-string/jumbo v1, "update_os_type"

    const-string/jumbo v2, "android"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->UPDATE_OS_TYPE:Ljava/lang/String;

    .line 107
    :cond_6
    if-eqz p2, :cond_7

    sget-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->MSP_VERSION:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 108
    :cond_7
    const-string/jumbo v1, "msp_version"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->MSP_VERSION:Ljava/lang/String;

    .line 111
    :cond_8
    if-eqz p2, :cond_9

    sget-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->HARDWARE_PAY_TYPES:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 112
    :cond_9
    const-string/jumbo v1, "hardware_pay_types"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->HARDWARE_PAY_TYPES:Ljava/lang/String;

    .line 115
    :cond_a
    if-eqz p2, :cond_b

    sget-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->SDK_TEXT:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 116
    :cond_b
    const-string/jumbo v1, "sdk"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->SDK_TEXT:Ljava/lang/String;

    .line 118
    :cond_c
    sget-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->SDK_TEXT:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/alipay/android/app/pay/GlobalConstant;->SDK:Z

    .line 120
    if-eqz p2, :cond_d

    sget-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->SDK_TYPE:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 121
    :cond_d
    sget-boolean v1, Lcom/alipay/android/app/pay/GlobalConstant;->SDK:Z

    if-eqz v1, :cond_e

    .line 122
    const-string/jumbo v1, "sdk_type"

    const-string/jumbo v2, "CommonChannelInfo"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->SDK_TYPE:Ljava/lang/String;

    .line 125
    :cond_e
    if-eqz p2, :cond_f

    sget-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->RSA_PUBLIC:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 126
    :cond_f
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 127
    const-string/jumbo v2, "trideskey"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 128
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 129
    sput-object v2, Lcom/alipay/android/app/pay/GlobalConstant;->RSA_PUBLIC:Ljava/lang/String;

    .line 137
    :cond_10
    :goto_1
    if-eqz p2, :cond_11

    sget-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->MONITOR_URL:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 138
    :cond_11
    const-string/jumbo v1, "monitor_url"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->MONITOR_URL:Ljava/lang/String;

    .line 141
    :cond_12
    if-eqz p2, :cond_13

    sget-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->HTTP_URL:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_14

    .line 143
    :cond_13
    :try_start_1
    const-string/jumbo v1, "http_url"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->HTTP_URL:Ljava/lang/String;

    .line 144
    sget-boolean v1, Lcom/alipay/android/app/pay/GlobalConstant;->SDK:Z

    if-eqz v1, :cond_14

    .line 145
    const-string/jumbo v1, "mini_http_url"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->HTTP_URL:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 150
    :cond_14
    :goto_2
    if-eqz p2, :cond_15

    :try_start_2
    sget-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->API_VERSION:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 151
    :cond_15
    const-string/jumbo v1, "api_version"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->API_VERSION:Ljava/lang/String;

    .line 154
    :cond_16
    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->f()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 155
    const-string/jumbo v0, "https://sandboxmcgw.alipay.com/gateway.do"

    sput-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->MONITOR_URL:Ljava/lang/String;

    .line 156
    const-string/jumbo v0, "https://sandboxmcgw.alipay.com/gateway.do"

    sput-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->HTTP_URL:Ljava/lang/String;

    .line 158
    :cond_17
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/android/app/pay/GlobalConstant;->isLoadProperties:Z

    .line 159
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/app/IAppConfig;->b()Z

    move-result v0

    if-nez v0, :cond_19

    .line 161
    const-string/jumbo v0, "http://mcgw.alipay.com/sdklog.do"

    invoke-static {v0}, Lcom/alipay/android/app/statistic/SDKConfig;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 170
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 131
    :cond_18
    :try_start_3
    const-string/jumbo v2, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDENksAVqDoz5SMCZq0bsZwE+I3NjrANyTTwUVSf1+ec1PfPB4tiocEpYJFCYju9MIbawR8ivECbUWjpffZq5QllJg+19CB7V5rYGcEnb/M7CS3lFF2sNcRFJUtXUUAqyR3/l7PmpxTwObZ4DLG258dhE2vFlVGXjnuLs+FI2hg4QIDAQAB"

    .line 132
    const-string/jumbo v3, "rsa_public"

    invoke-virtual {v0, v3, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/alipay/android/app/pay/GlobalConstant;->RSA_PUBLIC:Ljava/lang/String;

    .line 133
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "trideskey"

    sget-object v3, Lcom/alipay/android/app/pay/GlobalConstant;->RSA_PUBLIC:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    .line 164
    :cond_19
    sget-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->HTTP_URL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 165
    const-string/jumbo v0, "http://mcgw.alipay.com/sdklog.do"

    invoke-static {v0}, Lcom/alipay/android/app/statistic/SDKConfig;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 167
    :cond_1a
    sget-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->HTTP_URL:Ljava/lang/String;

    const-string/jumbo v1, "gateway.do"

    const-string/jumbo v2, "sdklog.do"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/statistic/SDKConfig;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catch_1
    move-exception v1

    goto/16 :goto_2
.end method
