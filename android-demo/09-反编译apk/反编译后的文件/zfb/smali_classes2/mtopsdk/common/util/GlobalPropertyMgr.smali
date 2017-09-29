.class public Lmtopsdk/common/util/GlobalPropertyMgr;
.super Ljava/lang/Object;
.source "GlobalPropertyMgr.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.GlobalPropertyMgr"

.field private static globalProp:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static instance:Lmtopsdk/common/util/GlobalPropertyMgr;

.field private static isInitSuccess:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lmtopsdk/common/util/GlobalPropertyMgr;->instance:Lmtopsdk/common/util/GlobalPropertyMgr;

    .line 17
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmtopsdk/common/util/GlobalPropertyMgr;->globalProp:Ljava/util/Hashtable;

    .line 18
    const/4 v0, 0x0

    sput-boolean v0, Lmtopsdk/common/util/GlobalPropertyMgr;->isInitSuccess:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lmtopsdk/common/util/GlobalPropertyMgr;
    .locals 3

    .prologue
    .line 24
    const-class v1, Lmtopsdk/common/util/GlobalPropertyMgr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lmtopsdk/common/util/GlobalPropertyMgr;->instance:Lmtopsdk/common/util/GlobalPropertyMgr;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lmtopsdk/common/util/GlobalPropertyMgr;

    invoke-direct {v0}, Lmtopsdk/common/util/GlobalPropertyMgr;-><init>()V

    sput-object v0, Lmtopsdk/common/util/GlobalPropertyMgr;->instance:Lmtopsdk/common/util/GlobalPropertyMgr;

    .line 27
    :cond_0
    sget-boolean v0, Lmtopsdk/common/util/GlobalPropertyMgr;->isInitSuccess:Z

    if-nez v0, :cond_1

    .line 28
    if-nez p0, :cond_2

    .line 29
    const-string/jumbo v0, "mtopsdk.GlobalPropertyMgr"

    const-string/jumbo v2, "miss context argument,load property file failed"

    invoke-static {v0, v2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_1
    :goto_0
    sget-object v0, Lmtopsdk/common/util/GlobalPropertyMgr;->instance:Lmtopsdk/common/util/GlobalPropertyMgr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 31
    :cond_2
    :try_start_1
    invoke-static {p0}, Lmtopsdk/common/util/GlobalPropertyMgr;->initMtopSdkProperty(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static initMtopSdkProperty(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 43
    :try_start_0
    const-string/jumbo v1, "mtopsdk.property"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 44
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 45
    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 46
    invoke-static {v1}, Lmtopsdk/common/util/GlobalPropertyMgr;->loadProperties(Ljava/util/Properties;)V

    .line 47
    const/4 v0, 0x1

    sput-boolean v0, Lmtopsdk/common/util/GlobalPropertyMgr;->isInitSuccess:Z

    .line 48
    const-string/jumbo v0, "mtopsdk.GlobalPropertyMgr"

    const-string/jumbo v1, "load property file succeed"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    sput-boolean v2, Lmtopsdk/common/util/GlobalPropertyMgr;->isInitSuccess:Z

    .line 51
    const-string/jumbo v0, "mtopsdk.GlobalPropertyMgr"

    const-string/jumbo v1, "read mtopsdk.property failed!"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static loadProperties(Ljava/util/Properties;)V
    .locals 5

    .prologue
    .line 57
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/Properties;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    :cond_0
    return-void

    .line 60
    :cond_1
    invoke-virtual {p0}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 61
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 64
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 65
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 66
    sget-object v3, Lmtopsdk/common/util/GlobalPropertyMgr;->globalProp:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    const-string/jumbo v2, "mtopsdk.GlobalPropertyMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[loadPropertiesIgnoreCase] load  property error"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getProperties()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    sget-object v0, Lmtopsdk/common/util/GlobalPropertyMgr;->globalProp:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    const-string/jumbo v0, ""

    .line 82
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lmtopsdk/common/util/GlobalPropertyMgr;->globalProp:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method
