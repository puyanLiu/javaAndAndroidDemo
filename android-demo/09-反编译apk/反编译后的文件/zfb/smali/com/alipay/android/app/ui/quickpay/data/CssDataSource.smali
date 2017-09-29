.class public Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/Object;

.field private static b:Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;

.field private static c:Ljava/util/Map;
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

.field private static d:Ljava/util/Map;
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

.field private static e:Ljava/util/Map;
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

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static final m:[Ljava/lang/String;


# instance fields
.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->a:Ljava/lang/Object;

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->b:Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->c:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->d:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->e:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/mspjson/androidcss.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->f:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/mspjson/commoncss.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->g:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/mspjson/formcss.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->h:Ljava/lang/String;

    .line 58
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "androidcss"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "commoncss"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "formcss"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->m:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean v4, p0, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->i:Z

    .line 50
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->j:Ljava/lang/String;

    .line 51
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->k:Ljava/lang/String;

    .line 52
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->l:Ljava/lang/String;

    .line 72
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->i:Z

    if-nez v0, :cond_4

    .line 74
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_0

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "androidcss.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->f:Ljava/lang/String;

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "commoncss.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->g:Ljava/lang/String;

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "formcss.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->h:Ljava/lang/String;

    .line 86
    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    sget-object v0, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->m:[Ljava/lang/String;

    aget-object v0, v0, v4

    sget-object v1, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_1
    sget-object v0, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->f:Ljava/lang/String;

    invoke-direct {p0, v0, v5}, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->a(Ljava/lang/String;I)Z

    .line 91
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->g:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 93
    sget-object v0, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->m:[Ljava/lang/String;

    aget-object v0, v0, v3

    sget-object v1, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_2
    sget-object v0, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->g:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->a(Ljava/lang/String;I)Z

    .line 97
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 99
    sget-object v0, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->m:[Ljava/lang/String;

    aget-object v0, v0, v5

    sget-object v1, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_3
    sget-object v0, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->h:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->a(Ljava/lang/String;I)Z

    .line 102
    iput-boolean v3, p0, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->i:Z

    .line 104
    :cond_4
    return-void
.end method

.method public static a(Lcom/alipay/android/app/json/JSONObject;)Lcom/alipay/android/app/json/JSONObject;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 205
    if-nez p0, :cond_1

    move-object p0, v0

    .line 227
    :cond_0
    :goto_0
    return-object p0

    .line 208
    :cond_1
    const-string/jumbo v1, "cssmap"

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    move-object p0, v0

    .line 209
    goto :goto_0

    .line 212
    :cond_2
    const-string/jumbo v0, "cssmap"

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 213
    if-eqz v1, :cond_0

    .line 214
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    check-cast v0, Ljava/lang/String;

    .line 217
    const-string/jumbo v2, "cssmap"

    invoke-virtual {p0, v2}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 218
    sget-object v3, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->e:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public static a()Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;
    .locals 2

    .prologue
    .line 63
    sget-object v1, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 64
    :try_start_0
    sget-object v0, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->b:Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;

    invoke-direct {v0}, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;-><init>()V

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->b:Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;

    .line 67
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    sget-object v0, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->b:Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;

    return-object v0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 161
    sget-object v1, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 164
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 165
    const/4 v0, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 166
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 167
    sget-object v3, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->e:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 168
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->e:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 176
    :cond_0
    sget-object v0, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 109
    :try_start_0
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0}, Lcom/alipay/android/app/util/ResUtils;->k(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 112
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 113
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 114
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 116
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    :goto_1
    return-void

    .line 118
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;I)Z
    .locals 2

    .prologue
    .line 127
    :try_start_0
    invoke-static {p1}, Lcom/alipay/android/app/ui/quickpay/util/JsonUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->c(Ljava/lang/String;)Z

    move-result v0

    .line 129
    if-eqz v0, :cond_0

    .line 130
    packed-switch p2, :pswitch_data_0

    .line 144
    :cond_0
    :goto_0
    return v0

    .line 132
    :pswitch_0
    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->j:Ljava/lang/String;

    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    .line 135
    :pswitch_1
    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->k:Ljava/lang/String;

    goto :goto_0

    .line 138
    :pswitch_2
    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->l:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static b(Lcom/alipay/android/app/json/JSONObject;)Lcom/alipay/android/app/json/JSONObject;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 238
    if-nez p0, :cond_1

    move-object p0, v1

    .line 278
    :cond_0
    return-object p0

    .line 242
    :cond_1
    const-string/jumbo v0, "form_key"

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 243
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 248
    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 249
    if-eqz v4, :cond_0

    .line 250
    array-length v5, v4

    .line 252
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v5, :cond_0

    .line 253
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->a()Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;

    aget-object v0, v4, v3

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 257
    :try_start_0
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0, v2}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v0

    .line 261
    :goto_1
    if-eqz v2, :cond_2

    .line 262
    invoke-virtual {v2}, Lcom/alipay/android/app/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .line 263
    :goto_2
    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 264
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 266
    :try_start_1
    sget-object v7, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->d:Ljava/util/Map;

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 269
    :catch_0
    move-exception v0

    goto :goto_2

    .line 258
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    move-object v2, v1

    goto :goto_1

    .line 252
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 181
    sget-object v1, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 183
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 184
    const/4 v0, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 185
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 186
    sget-object v3, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->e:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 187
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->e:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 191
    :cond_0
    sget-object v0, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 232
    sget-object v0, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->d:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 233
    sget-object v0, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 235
    :cond_0
    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 344
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 345
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 348
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 349
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "rw"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 351
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 317
    if-nez p0, :cond_0

    move v0, v1

    .line 338
    :goto_0
    return v0

    .line 322
    :cond_0
    :try_start_0
    new-instance v2, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v2, p0}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v2}, Lcom/alipay/android/app/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 324
    if-eqz v3, :cond_1

    .line 325
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 327
    check-cast v0, Ljava/lang/String;

    .line 328
    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 329
    sget-object v5, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->c:Ljava/util/Map;

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 338
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 333
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 357
    if-nez p0, :cond_0

    .line 358
    const-string/jumbo v0, ""

    .line 366
    :goto_0
    return-object v0

    .line 361
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 362
    invoke-static {v0}, Lcom/alipay/android/app/encrypt/MD5;->encryptMd5_32_byte([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 366
    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 283
    sget-object v1, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 284
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 285
    monitor-exit v1

    .line 306
    :goto_0
    return-void

    .line 288
    :cond_0
    if-eqz p1, :cond_1

    :try_start_0
    invoke-static {p1}, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    sget-object v0, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->g:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-static {p1}, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->k:Ljava/lang/String;

    .line 293
    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p2}, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 294
    sget-object v0, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->f:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-static {p2}, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->j:Ljava/lang/String;

    .line 298
    :cond_2
    if-eqz p3, :cond_3

    invoke-static {p3}, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 299
    sget-object v0, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->h:Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-static {p3}, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->l:Ljava/lang/String;

    .line 302
    :cond_3
    sget-object v2, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    const/4 v0, 0x0

    :try_start_1
    sput-object v0, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->b:Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;

    .line 304
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 305
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->i:Z

    .line 306
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 304
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method
