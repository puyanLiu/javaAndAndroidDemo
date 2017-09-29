.class public Lcom/alibaba/android/babylon/search/SearchImpl;
.super Ljava/lang/Object;
.source "SearchImpl.java"

# interfaces
.implements Lcom/alibaba/android/babylon/search/ISearch;


# static fields
.field private static final DELAY_TIME:I = 0x1388

.field private static final INDEX_SIZE:I = 0x80

.field private static final TAG:Ljava/lang/String; = "SearchImpl"

.field private static enableEllipse:Z

.field private static iSearch:Lcom/alibaba/android/babylon/search/SearchImpl;

.field private static final initLock:Ljava/lang/Object;


# instance fields
.field private final MIN_TIME:J

.field private final Name:Ljava/lang/String;

.field private final ScanAll:Ljava/lang/String;

.field private final Version:Ljava/lang/String;

.field private isScanAll:Z

.field private lock:Ljava/lang/Object;

.field private mapConn:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private runnable:Ljava/lang/Runnable;

.field private scanHandler:Landroid/os/Handler;

.field private taskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/babylon/search/SearchImpl$ScanTask;",
            ">;"
        }
    .end annotation
.end field

.field private taskSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alibaba/android/babylon/search/SearchImpl;->initLock:Ljava/lang/Object;

    .line 46
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alibaba/android/babylon/search/SearchImpl;->enableEllipse:Z

    .line 28
    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-wide/32 v0, 0x240c8400

    iput-wide v0, p0, Lcom/alibaba/android/babylon/search/SearchImpl;->MIN_TIME:J

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/babylon/search/SearchImpl;->lock:Ljava/lang/Object;

    .line 42
    const-string/jumbo v0, "global-search"

    iput-object v0, p0, Lcom/alibaba/android/babylon/search/SearchImpl;->Name:Ljava/lang/String;

    .line 43
    const-string/jumbo v0, "indexVersion"

    iput-object v0, p0, Lcom/alibaba/android/babylon/search/SearchImpl;->Version:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, "scanAll"

    iput-object v0, p0, Lcom/alibaba/android/babylon/search/SearchImpl;->ScanAll:Ljava/lang/String;

    .line 65
    new-instance v0, Lcom/alibaba/android/babylon/search/SearchImpl$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/babylon/search/SearchImpl$1;-><init>(Lcom/alibaba/android/babylon/search/SearchImpl;)V

    iput-object v0, p0, Lcom/alibaba/android/babylon/search/SearchImpl;->runnable:Ljava/lang/Runnable;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/babylon/search/SearchImpl;->taskList:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/babylon/search/SearchImpl;->taskSet:Ljava/util/Set;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/babylon/search/SearchImpl;->mapConn:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/alibaba/android/babylon/search/SearchImpl;->runnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 53
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    const-string/jumbo v1, "global-search"

    invoke-virtual {v0, v1, v4}, Lcom/alipay/mobile/framework/AlipayApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 54
    invoke-direct {p0}, Lcom/alibaba/android/babylon/search/SearchImpl;->native_index_version()Ljava/lang/String;

    move-result-object v1

    .line 55
    const-string/jumbo v2, "indexVersion"

    const-string/jumbo v3, "0.0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    const-string/jumbo v1, "scanAll"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/babylon/search/SearchImpl;->isScanAll:Z

    .line 63
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "indexVersion"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "scanAll"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 60
    iput-boolean v4, p0, Lcom/alibaba/android/babylon/search/SearchImpl;->isScanAll:Z

    goto :goto_0
.end method

.method public static JNI_LOG(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 483
    const-string/jumbo v0, "native_search_callback"

    invoke-static {v0, p0}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    return-void
.end method

.method static synthetic access$0(Lcom/alibaba/android/babylon/search/SearchImpl;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/alibaba/android/babylon/search/SearchImpl;->scanHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$1(Lcom/alibaba/android/babylon/search/SearchImpl;)Ljava/util/List;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/android/babylon/search/SearchImpl;->taskList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alibaba/android/babylon/search/SearchImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 551
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/babylon/search/SearchImpl;->native_scan_table(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/alibaba/android/babylon/search/SearchImpl;)Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/alibaba/android/babylon/search/SearchImpl;->isScanAll:Z

    return v0
.end method

.method static synthetic access$4(Lcom/alibaba/android/babylon/search/SearchImpl;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/android/babylon/search/SearchImpl;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5(Lcom/alibaba/android/babylon/search/SearchImpl;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/android/babylon/search/SearchImpl;->taskSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$6(Lcom/alibaba/android/babylon/search/SearchImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 571
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/android/babylon/search/SearchImpl;->native_del_doc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$7()Z
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/alibaba/android/babylon/search/SearchImpl;->enableEllipse:Z

    return v0
.end method

.method static synthetic access$8(Lcom/alibaba/android/babylon/search/SearchImpl;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 575
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/babylon/search/SearchImpl;->native_ellipse_index(Ljava/lang/String;Z)V

    return-void
.end method

.method public static getSearcher()Lcom/alibaba/android/babylon/search/ISearch;
    .locals 2

    .prologue
    .line 179
    sget-object v1, Lcom/alibaba/android/babylon/search/SearchImpl;->initLock:Ljava/lang/Object;

    monitor-enter v1

    .line 180
    :try_start_0
    sget-object v0, Lcom/alibaba/android/babylon/search/SearchImpl;->iSearch:Lcom/alibaba/android/babylon/search/SearchImpl;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getSearcher(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/babylon/search/ISearch;
    .locals 5

    .prologue
    .line 131
    sget-object v2, Lcom/alibaba/android/babylon/search/SearchImpl;->initLock:Ljava/lang/Object;

    monitor-enter v2

    .line 132
    :try_start_0
    sget-object v0, Lcom/alibaba/android/babylon/search/SearchImpl;->iSearch:Lcom/alibaba/android/babylon/search/SearchImpl;

    if-eqz v0, :cond_0

    .line 133
    sget-object v0, Lcom/alibaba/android/babylon/search/SearchImpl;->iSearch:Lcom/alibaba/android/babylon/search/SearchImpl;

    monitor-exit v2

    .line 168
    :goto_0
    return-object v0

    .line 135
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "search"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 143
    :goto_1
    new-instance v1, Lcom/alibaba/android/babylon/search/SearchImpl;

    invoke-direct {v1}, Lcom/alibaba/android/babylon/search/SearchImpl;-><init>()V

    sput-object v1, Lcom/alibaba/android/babylon/search/SearchImpl;->iSearch:Lcom/alibaba/android/babylon/search/SearchImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    const/16 v1, -0xa

    .line 147
    :try_start_1
    sget-object v3, Lcom/alibaba/android/babylon/search/SearchImpl;->iSearch:Lcom/alibaba/android/babylon/search/SearchImpl;

    const/16 v4, 0x80

    invoke-direct {v3, v0, v4}, Lcom/alibaba/android/babylon/search/SearchImpl;->native_init_engine(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 151
    :goto_2
    :try_start_2
    sget-object v1, Lcom/alibaba/android/babylon/search/SearchImpl;->iSearch:Lcom/alibaba/android/babylon/search/SearchImpl;

    invoke-direct {v1}, Lcom/alibaba/android/babylon/search/SearchImpl;->native_set_log_callback()I

    .line 152
    if-gez v0, :cond_2

    .line 153
    invoke-static {v0}, Lcom/alibaba/android/babylon/search/SearchImpl;->printNativeInfo(I)V

    .line 154
    monitor-exit v2

    const/4 v0, 0x0

    goto :goto_0

    .line 141
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 148
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_2

    .line 157
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    .line 159
    const/4 v1, 0x1

    .line 160
    if-eqz v0, :cond_3

    .line 161
    const-string/jumbo v3, "SEARCH_ELLIPS_ENABLED"

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 163
    const-string/jumbo v1, "yes"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 166
    :goto_3
    invoke-static {v0}, Lcom/alibaba/android/babylon/search/SearchImpl;->setEllipseState(Z)V

    .line 168
    sget-object v0, Lcom/alibaba/android/babylon/search/SearchImpl;->iSearch:Lcom/alibaba/android/babylon/search/SearchImpl;

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_3
    move v0, v1

    goto :goto_3
.end method

.method private native native_addDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
.end method

.method private native native_add_index_for_table(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native native_del_doc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native native_ellipse_index(Ljava/lang/String;Z)V
.end method

.method private native native_get_del_num(Ljava/lang/String;)I
.end method

.method private native native_hook_db(Ljava/lang/String;I)I
.end method

.method private native native_index_version()Ljava/lang/String;
.end method

.method private native native_init_engine(Ljava/lang/String;I)I
.end method

.method private native native_modify_doc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
.end method

.method private native native_release_engine()V
.end method

.method private native native_scan_table(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native native_search(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;
.end method

.method private native native_set_index_dataFunc(Ljava/lang/String;)I
.end method

.method private native native_set_log_callback()I
.end method

.method private native native_set_max_rawid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method private native native_sqlite_handler(Ljava/lang/Object;)I
.end method

.method private native native_stop_hook_db(Ljava/lang/String;)I
.end method

.method private static printNativeInfo(I)V
    .locals 0

    .prologue
    .line 487
    return-void
.end method

.method public static profLayerDataProcFunc(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 187
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->decryptor:Lcom/alipay/android/phone/globalsearch/api/Decryptor;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "coupon"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 188
    sget-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->decryptor:Lcom/alipay/android/phone/globalsearch/api/Decryptor;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/alipay/android/phone/globalsearch/api/Decryptor;->decryptValues(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 189
    aget-object v1, p3, v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    aget-object v1, v0, v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 190
    :cond_0
    const-string/jumbo v1, "searchError"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " decrypt filled !!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object p3, v0

    .line 195
    :cond_2
    return-object p3
.end method

.method public static setEllipseState(Z)V
    .locals 0

    .prologue
    .line 612
    sput-boolean p0, Lcom/alibaba/android/babylon/search/SearchImpl;->enableEllipse:Z

    .line 613
    return-void
.end method


# virtual methods
.method public addDB(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6

    .prologue
    .line 200
    const-string/jumbo v4, ""

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/babylon/search/SearchImpl;->addDB(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public addDB(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 210
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 228
    :cond_0
    :goto_0
    return v0

    .line 212
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 216
    :try_start_0
    invoke-direct {p0, p2, p1, p4, p5}, Lcom/alibaba/android/babylon/search/SearchImpl;->native_addDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :goto_1
    invoke-virtual {p0, p2, p3}, Lcom/alibaba/android/babylon/search/SearchImpl;->hookDB(Ljava/lang/String;I)Z

    .line 228
    const/4 v0, 0x1

    goto :goto_0

    .line 217
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public addDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 6

    .prologue
    .line 205
    const-string/jumbo v4, ""

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/babylon/search/SearchImpl;->addDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public addDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Z)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 233
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 245
    :cond_0
    :goto_0
    return v0

    .line 235
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 239
    :try_start_0
    invoke-direct {p0, p2, p1, p4, p5}, Lcom/alibaba/android/babylon/search/SearchImpl;->native_addDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :goto_1
    invoke-virtual {p0, p2, p3}, Lcom/alibaba/android/babylon/search/SearchImpl;->hookDB(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 245
    const/4 v0, 0x1

    goto :goto_0

    .line 240
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public addIndexForTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 292
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v11, p8

    invoke-virtual/range {v0 .. v11}, Lcom/alibaba/android/babylon/search/SearchImpl;->addIndexForTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public addIndexForTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 304
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    :cond_0
    const/4 v0, 0x0

    .line 346
    :goto_0
    return v0

    .line 307
    :cond_1
    invoke-static/range {p5 .. p5}, Lcom/alibaba/android/babylon/search/Utils;->formIndexString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    .line 308
    invoke-static/range {p7 .. p7}, Lcom/alibaba/android/babylon/search/Utils;->formIndexString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    .line 309
    invoke-static/range {p8 .. p8}, Lcom/alibaba/android/babylon/search/Utils;->formIndexString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    .line 310
    invoke-static/range {p9 .. p9}, Lcom/alibaba/android/babylon/search/Utils;->formIndexString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v9

    .line 312
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 313
    const/4 v0, 0x0

    goto :goto_0

    .line 315
    :cond_2
    new-instance v11, Lcom/alibaba/android/babylon/search/SearchImpl$ScanTask;

    const/4 v0, 0x0

    invoke-direct {v11, p0, v0}, Lcom/alibaba/android/babylon/search/SearchImpl$ScanTask;-><init>(Lcom/alibaba/android/babylon/search/SearchImpl;Lcom/alibaba/android/babylon/search/SearchImpl$ScanTask;)V

    .line 316
    iput-object p2, v11, Lcom/alibaba/android/babylon/search/SearchImpl$ScanTask;->dbName:Ljava/lang/String;

    .line 317
    iput-object p3, v11, Lcom/alibaba/android/babylon/search/SearchImpl$ScanTask;->tableName:Ljava/lang/String;

    .line 318
    iput-object p1, v11, Lcom/alibaba/android/babylon/search/SearchImpl$ScanTask;->indexName:Ljava/lang/String;

    .line 319
    iget-object v0, p0, Lcom/alibaba/android/babylon/search/SearchImpl;->taskSet:Ljava/util/Set;

    invoke-virtual {v11}, Lcom/alibaba/android/babylon/search/SearchImpl$ScanTask;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 320
    const/4 v0, 0x1

    goto :goto_0

    .line 325
    :cond_3
    :try_start_0
    const-string/jumbo v0, "search"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "native_add_index_for_table "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v10, p11

    .line 326
    invoke-direct/range {v0 .. v10}, Lcom/alibaba/android/babylon/search/SearchImpl;->native_add_index_for_table(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    if-eqz p10, :cond_4

    .line 329
    const-string/jumbo v0, "search"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "add index for encrypted data,index is  : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-direct {p0, p1}, Lcom/alibaba/android/babylon/search/SearchImpl;->native_set_index_dataFunc(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/babylon/search/SearchImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 338
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/android/babylon/search/SearchImpl;->taskSet:Ljava/util/Set;

    invoke-virtual {v11}, Lcom/alibaba/android/babylon/search/SearchImpl$ScanTask;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 339
    const-string/jumbo v0, "search"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "add new task : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/alibaba/android/babylon/search/SearchImpl;->taskList:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    iget-object v0, p0, Lcom/alibaba/android/babylon/search/SearchImpl;->taskSet:Ljava/util/Set;

    invoke-virtual {v11}, Lcom/alibaba/android/babylon/search/SearchImpl$ScanTask;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 342
    iget-object v0, p0, Lcom/alibaba/android/babylon/search/SearchImpl;->scanHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 337
    :cond_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 346
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 332
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    .line 334
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 337
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public addIndexForTableOnly(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 352
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    :cond_0
    const/4 v0, 0x0

    .line 374
    :goto_0
    return v0

    .line 355
    :cond_1
    invoke-static/range {p5 .. p5}, Lcom/alibaba/android/babylon/search/Utils;->formIndexString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    .line 356
    invoke-static/range {p7 .. p7}, Lcom/alibaba/android/babylon/search/Utils;->formIndexString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    .line 357
    invoke-static/range {p8 .. p8}, Lcom/alibaba/android/babylon/search/Utils;->formIndexString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    .line 358
    invoke-static/range {p9 .. p9}, Lcom/alibaba/android/babylon/search/Utils;->formIndexString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v9

    .line 360
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 361
    const/4 v0, 0x0

    goto :goto_0

    .line 364
    :cond_2
    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v6, p6

    :try_start_0
    invoke-direct/range {v0 .. v10}, Lcom/alibaba/android/babylon/search/SearchImpl;->native_add_index_for_table(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    if-eqz p10, :cond_3

    .line 367
    const-string/jumbo v0, "search"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "add index for encrypted data,index is  : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-direct {p0, p1}, Lcom/alibaba/android/babylon/search/SearchImpl;->native_set_index_dataFunc(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 370
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    .line 372
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addIndexForTableWithEncrypted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 297
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v11}, Lcom/alibaba/android/babylon/search/SearchImpl;->addIndexForTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 458
    sget-object v1, Lcom/alibaba/android/babylon/search/SearchImpl;->initLock:Ljava/lang/Object;

    monitor-enter v1

    .line 460
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/android/babylon/search/SearchImpl;->native_release_engine()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    :goto_0
    const/4 v0, 0x0

    :try_start_1
    sput-object v0, Lcom/alibaba/android/babylon/search/SearchImpl;->iSearch:Lcom/alibaba/android/babylon/search/SearchImpl;

    .line 458
    monitor-exit v1

    return-void

    .line 461
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 458
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public deleteDoc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 583
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    :goto_0
    return-void

    .line 586
    :cond_0
    new-instance v0, Lcom/alibaba/android/babylon/search/SearchImpl$2;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/babylon/search/SearchImpl$2;-><init>(Lcom/alibaba/android/babylon/search/SearchImpl;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public doSearch(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/IndexResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 379
    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/babylon/search/SearchImpl;->doSearch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public doSearch(Ljava/lang/String;Ljava/lang/String;III)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/IndexResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 407
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 419
    :cond_0
    :goto_0
    return-object v7

    .line 410
    :cond_1
    if-gez p3, :cond_2

    .line 411
    :goto_1
    if-gtz p4, :cond_3

    const v5, 0x7fffffff

    .line 415
    :goto_2
    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    :try_start_0
    invoke-direct/range {v0 .. v6}, Lcom/alibaba/android/babylon/search/SearchImpl;->native_search(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 419
    :goto_3
    const/4 v1, 0x1

    invoke-static {v0, p5, v1}, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->parseResults(Ljava/lang/String;IZ)Ljava/util/List;

    move-result-object v7

    goto :goto_0

    :cond_2
    move v4, p3

    .line 410
    goto :goto_1

    :cond_3
    move v5, p4

    .line 411
    goto :goto_2

    .line 416
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    move-object v0, v7

    goto :goto_3
.end method

.method public doSearch(Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIZ)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/IndexResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 437
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/babylon/search/SearchImpl;->doSearch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public doSearch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/IndexResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 389
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 402
    :cond_0
    :goto_0
    return-object v7

    .line 392
    :cond_1
    if-gez p4, :cond_2

    move v4, v8

    .line 393
    :goto_1
    if-gtz p5, :cond_3

    const v5, 0x7fffffff

    .line 397
    :goto_2
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    :try_start_0
    invoke-direct/range {v0 .. v6}, Lcom/alibaba/android/babylon/search/SearchImpl;->native_search(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 401
    :goto_3
    const-string/jumbo v1, "SearchImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Query : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ,res : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    invoke-static {v0, v8}, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->parseResults(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v7

    goto :goto_0

    :cond_2
    move v4, p4

    .line 392
    goto :goto_1

    :cond_3
    move v5, p5

    .line 393
    goto :goto_2

    .line 398
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    move-object v0, v7

    goto :goto_3
.end method

.method public doSearch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIZ)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/IndexResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 424
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 425
    :cond_0
    const/4 v0, 0x0

    .line 432
    :goto_0
    return-object v0

    .line 427
    :cond_1
    if-gez p4, :cond_2

    move v4, v6

    .line 428
    :goto_1
    if-gtz p5, :cond_3

    const v5, 0x7fffffff

    :goto_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 430
    invoke-direct/range {v0 .. v6}, Lcom/alibaba/android/babylon/search/SearchImpl;->native_search(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    .line 431
    const-string/jumbo v1, "SearchImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "query : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ,res : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    invoke-static {v0, p6}, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->parseResults(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v4, p4

    .line 427
    goto :goto_1

    :cond_3
    move v5, p5

    .line 428
    goto :goto_2
.end method

.method public doSearchOutbundle(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/IndexResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 384
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/babylon/search/SearchImpl;->doSearch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDelNumForGroup(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/alibaba/android/babylon/search/SearchImpl;->native_get_del_num(Ljava/lang/String;)I

    move-result v0

    .line 175
    return v0
.end method

.method public hookDB(Ljava/lang/String;I)Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 250
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 272
    :goto_0
    return v0

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/babylon/search/SearchImpl;->mapConn:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/babylon/search/SearchImpl;->mapConn:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p2, :cond_1

    move v0, v2

    .line 254
    goto :goto_0

    .line 256
    :cond_1
    sget-object v4, Lcom/alibaba/android/babylon/search/SearchImpl;->initLock:Ljava/lang/Object;

    monitor-enter v4

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/babylon/search/SearchImpl;->mapConn:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 258
    iget-object v0, p0, Lcom/alibaba/android/babylon/search/SearchImpl;->mapConn:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    :try_start_1
    invoke-direct {p0, p1}, Lcom/alibaba/android/babylon/search/SearchImpl;->native_stop_hook_db(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    :cond_2
    :goto_1
    const/16 v3, -0xa

    .line 267
    :try_start_2
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/babylon/search/SearchImpl;->native_hook_db(Ljava/lang/String;I)I

    move-result v3

    .line 268
    const-string/jumbo v0, "SearchImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "hook db : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", dbName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", Connection : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 272
    :goto_2
    if-nez v3, :cond_3

    move v0, v2

    :goto_3
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 256
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    .line 261
    :catch_0
    move-exception v0

    :try_start_4
    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 269
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :cond_3
    move v0, v1

    .line 272
    goto :goto_3
.end method

.method public hookDB(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 278
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 287
    :cond_0
    :goto_0
    return v0

    .line 281
    :cond_1
    invoke-direct {p0, p2}, Lcom/alibaba/android/babylon/search/SearchImpl;->native_sqlite_handler(Ljava/lang/Object;)I

    move-result v1

    .line 283
    if-ltz v1, :cond_0

    .line 286
    invoke-direct {p0, p1, v1}, Lcom/alibaba/android/babylon/search/SearchImpl;->native_hook_db(Ljava/lang/String;I)I

    .line 287
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public resetTableScanPositon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 608
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/babylon/search/SearchImpl;->native_set_max_rawid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 609
    return-void
.end method

.method public scanTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 442
    const/16 v1, -0xa

    .line 444
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/babylon/search/SearchImpl;->native_scan_table(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 449
    :goto_0
    if-gez v1, :cond_1

    .line 450
    invoke-static {v1}, Lcom/alibaba/android/babylon/search/SearchImpl;->printNativeInfo(I)V

    .line 453
    :cond_0
    :goto_1
    return v0

    .line 445
    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 453
    :cond_1
    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_1
.end method

.method public stopHook(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 470
    sget-object v1, Lcom/alibaba/android/babylon/search/SearchImpl;->initLock:Ljava/lang/Object;

    monitor-enter v1

    .line 471
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/babylon/search/SearchImpl;->mapConn:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/alibaba/android/babylon/search/SearchImpl;->mapConn:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/alibaba/android/babylon/search/SearchImpl;->native_stop_hook_db(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 470
    :goto_0
    :try_start_2
    monitor-exit v1

    return-void

    .line 476
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 470
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
