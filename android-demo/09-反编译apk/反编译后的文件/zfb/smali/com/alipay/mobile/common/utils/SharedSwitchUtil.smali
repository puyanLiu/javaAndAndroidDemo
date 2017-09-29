.class public Lcom/alipay/mobile/common/utils/SharedSwitchUtil;
.super Ljava/lang/Object;
.source "SharedSwitchUtil.java"


# static fields
.field public static final KEY_NET_SWITCH_ONE:Ljava/lang/String; = "netsdk_normal_switch"

.field public static final KEY_NET_SWITCH_TWO:Ljava/lang/String; = "android_network_core"

.field public static final SHARED_FILE_NAME:Ljava/lang/String; = "sdkSharedSwitch"

.field public static final UNI_DOMAIN_CONFIG:Ljava/lang/String; = "spdy_uniformorigin_config"

.field private static a:Ljava/lang/Boolean;

.field public static switchChangedObserble:Lcom/alipay/mobile/common/utils/SharedSwitchUtil$SwitchChangedObserble;

.field public static switchList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
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
    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/utils/SharedSwitchUtil;->a:Ljava/lang/Boolean;

    .line 54
    new-instance v0, Lcom/alipay/mobile/common/utils/SharedSwitchUtil$1;

    invoke-direct {v0}, Lcom/alipay/mobile/common/utils/SharedSwitchUtil$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/utils/SharedSwitchUtil;->switchList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    return-void
.end method

.method private static a()Lcom/alipay/mobile/common/utils/SharedSwitchUtil$SwitchChangedObserble;
    .locals 1

    .prologue
    .line 180
    sget-object v0, Lcom/alipay/mobile/common/utils/SharedSwitchUtil;->switchChangedObserble:Lcom/alipay/mobile/common/utils/SharedSwitchUtil$SwitchChangedObserble;

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Lcom/alipay/mobile/common/utils/SharedSwitchUtil$SwitchChangedObserble;

    invoke-direct {v0}, Lcom/alipay/mobile/common/utils/SharedSwitchUtil$SwitchChangedObserble;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/utils/SharedSwitchUtil;->switchChangedObserble:Lcom/alipay/mobile/common/utils/SharedSwitchUtil$SwitchChangedObserble;

    .line 183
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/utils/SharedSwitchUtil;->switchChangedObserble:Lcom/alipay/mobile/common/utils/SharedSwitchUtil$SwitchChangedObserble;

    return-object v0
.end method

.method public static final addSwitchChangedListener(Ljava/util/Observer;)V
    .locals 1

    .prologue
    .line 176
    invoke-static {}, Lcom/alipay/mobile/common/utils/SharedSwitchUtil;->a()Lcom/alipay/mobile/common/utils/SharedSwitchUtil$SwitchChangedObserble;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/common/utils/SharedSwitchUtil$SwitchChangedObserble;->addObserver(Ljava/util/Observer;)V

    .line 177
    return-void
.end method

.method public static declared-synchronized getSharedSwitch(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 73
    const-class v1, Lcom/alipay/mobile/common/utils/SharedSwitchUtil;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "sdkSharedSwitch"

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 74
    const/4 v2, 0x0

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getSharedSwitch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 171
    const-class v1, Lcom/alipay/mobile/common/utils/SharedSwitchUtil;

    monitor-enter v1

    const/4 v0, 0x4

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 172
    const/4 v2, 0x0

    invoke-interface {v0, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static final isDebugger(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 197
    sget-object v1, Lcom/alipay/mobile/common/utils/SharedSwitchUtil;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 198
    sget-object v0, Lcom/alipay/mobile/common/utils/SharedSwitchUtil;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 210
    :goto_0
    return v0

    .line 202
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 203
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 204
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 205
    sput-object v1, Lcom/alipay/mobile/common/utils/SharedSwitchUtil;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :cond_1
    move v1, v0

    .line 204
    goto :goto_1

    .line 206
    :catch_0
    move-exception v1

    .line 207
    const-string/jumbo v2, "MiscUtils"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static refreshSharedSwitch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 132
    :try_start_0
    const-string/jumbo v0, "sdkSharedSwitch"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 133
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 134
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 135
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static refreshSharedSwitch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 154
    const/4 v0, 0x4

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 155
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 156
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 157
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 159
    const-string/jumbo v1, "SharedSwitchUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "refreshSharedSwitch, sharedPrefName=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "], key=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "], value=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static declared-synchronized refreshSharedSwitch(Landroid/content/Context;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    const-class v3, Lcom/alipay/mobile/common/utils/SharedSwitchUtil;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v0, "sdkSharedSwitch"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 95
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 97
    const/4 v2, 0x0

    .line 98
    sget-object v0, Lcom/alipay/mobile/common/utils/SharedSwitchUtil;->switchList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 99
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 100
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 101
    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 102
    const/4 v2, 0x1

    .line 103
    invoke-static {p0}, Lcom/alipay/mobile/common/utils/SharedSwitchUtil;->isDebugger(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 104
    const-string/jumbo v6, "SharedSwitchUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "key=["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v7, "], value=["

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    move v0, v2

    move v2, v0

    .line 107
    goto :goto_0

    .line 108
    :cond_1
    if-nez v2, :cond_2

    .line 117
    :goto_1
    monitor-exit v3

    return-void

    .line 112
    :cond_2
    :try_start_1
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 114
    invoke-static {}, Lcom/alipay/mobile/common/utils/SharedSwitchUtil;->a()Lcom/alipay/mobile/common/utils/SharedSwitchUtil$SwitchChangedObserble;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/utils/SharedSwitchUtil$SwitchChangedObserble;->notifyObservers()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 116
    :catch_0
    move-exception v0

    goto :goto_1

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method
