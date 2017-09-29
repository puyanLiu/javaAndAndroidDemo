.class public Lcom/alipay/mobile/hotpatch/Hotpatch;
.super Ljava/lang/Object;
.source "Hotpatch.java"


# static fields
.field private static a:Landroid/app/Application;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurProcessName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 153
    const/4 v1, 0x0

    .line 155
    :try_start_0
    const-string/jumbo v0, "android.ddm.DdmHandleAppName"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 156
    const-string/jumbo v2, "getAppName"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 157
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 162
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 164
    sget-object v0, Lcom/alipay/mobile/hotpatch/Hotpatch;->a:Landroid/app/Application;

    const-string/jumbo v3, "activity"

    invoke-virtual {v0, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 165
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 166
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 173
    :cond_1
    :goto_1
    return-object v1

    .line 158
    :catch_0
    move-exception v0

    .line 159
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "Hotpatch"

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 166
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 167
    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v2, :cond_0

    .line 168
    iget-object v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_1
.end method

.method public static init(Landroid/app/Application;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 4

    .prologue
    .line 36
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "Hotpatch"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "init Hotpatch, app: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    sput-object p0, Lcom/alipay/mobile/hotpatch/Hotpatch;->a:Landroid/app/Application;

    .line 38
    invoke-static {}, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;->a()Lcom/taobao/updatecenter/hotpatch/HotPatchManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;->a(Landroid/app/Application;Ljava/lang/String;Ljava/util/HashMap;)Lcom/taobao/updatecenter/hotpatch/HotPatchManager;

    .line 39
    invoke-static {}, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;->a()Lcom/taobao/updatecenter/hotpatch/HotPatchManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;->b()V

    .line 40
    return-void
.end method

.method public static isDeviceSupport()Z
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/alipay/mobile/hotpatch/Hotpatch;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/taobao/hotpatch/util/HotPatchUtils;->isDeviceSupport(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isInMainProcess(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 149
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/hotpatch/Hotpatch;->getCurProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static loadBundlePatch(Ljava/lang/String;)Z
    .locals 7

    .prologue
    .line 95
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "Hotpatch"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onBundleLoad: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    sget-object v0, Lcom/alipay/mobile/hotpatch/Hotpatch;->a:Landroid/app/Application;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/taobao/hotpatch/patch/PatchMain;->loadBundlePatch(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)Lcom/taobao/hotpatch/patch/PatchResult;

    move-result-object v0

    .line 97
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "Hotpatch"

    const-string/jumbo v3, "Bundle:%s\u52a0\u8f7dpatch\u7ed3\u679c, ret:%s, code:%s, info:%s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 98
    aput-object p0, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Lcom/taobao/hotpatch/patch/PatchResult;->isSuccess()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v0}, Lcom/taobao/hotpatch/patch/PatchResult;->getErrocode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-virtual {v0}, Lcom/taobao/hotpatch/patch/PatchResult;->getErrorInfo()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 97
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0}, Lcom/taobao/hotpatch/patch/PatchResult;->isSuccess()Z

    move-result v0

    return v0
.end method

.method public static loadBundlePatchs()Z
    .locals 3

    .prologue
    .line 89
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "Hotpatch"

    const-string/jumbo v2, "loadBundlePatchs"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    sget-object v0, Lcom/alipay/mobile/hotpatch/Hotpatch;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/taobao/hotpatch/patch/PatchMain;->loadBundlePatchs(Landroid/content/Context;)Lcom/taobao/hotpatch/patch/PatchResult;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcom/taobao/hotpatch/patch/PatchResult;->isSuccess()Z

    move-result v0

    return v0
.end method

.method public static loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 5

    .prologue
    .line 118
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/hotpatch/Hotpatch;->a:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 119
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "Hotpatch"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "class loader from app: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 123
    :goto_0
    return-object v0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    const-string/jumbo v1, "Hotpatch"

    invoke-static {v1, v0}, Lcom/alipay/mobile/hotpatch/util/LogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static loadClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 6

    .prologue
    .line 135
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/hotpatch/Hotpatch;->a:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string/jumbo v1, "getBundleClassLoader"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/hotpatch/util/ReflectUtil;->invokeDeclaredMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    .line 140
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "Hotpatch"

    const-string/jumbo v3, "Bundle:%s - classloader:%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 144
    :goto_0
    return-object v0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    const-string/jumbo v1, "Hotpatch"

    invoke-static {v1, v0}, Lcom/alipay/mobile/hotpatch/util/LogUtil;->logException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static loadHostPatchs()V
    .locals 3

    .prologue
    .line 56
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "Hotpatch"

    const-string/jumbo v2, "loadHostPatchs"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    sget-object v0, Lcom/alipay/mobile/hotpatch/Hotpatch;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/taobao/hotpatch/patch/PatchMain;->loadHostPatchs(Landroid/content/Context;)Lcom/taobao/hotpatch/patch/PatchResult;

    .line 58
    return-void
.end method

.method public static loadPatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 68
    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/hotpatch/util/LogUtil;->logLoadPatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "Hotpatch"

    const-string/jumbo v2, "loadPatch, path:%s, version:%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;->a()Lcom/taobao/updatecenter/hotpatch/HotPatchManager;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 72
    if-eqz v0, :cond_0

    .line 73
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "Hotpatch"

    const-string/jumbo v3, "\u7cfb\u7edf\u7c7bpatch\u52a0\u8f7dok\uff0c\u7ee7\u7eed\u52a0\u8f7dbundle\u7c7bpatch"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/alipay/mobile/hotpatch/Hotpatch;->loadBundlePatchs()Z

    .line 76
    :cond_0
    return v0
.end method

.method public static loadPatchIfNeed()V
    .locals 4

    .prologue
    .line 80
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "Hotpatch"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "loadPatchIfNeed in process:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/hotpatch/Hotpatch;->getCurProcessName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;->a()Lcom/taobao/updatecenter/hotpatch/HotPatchManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;->e()V

    .line 82
    return-void
.end method

.method public static rollback()V
    .locals 3

    .prologue
    .line 103
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "Hotpatch"

    const-string/jumbo v2, "rollback"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-static {}, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;->a()Lcom/taobao/updatecenter/hotpatch/HotPatchManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;->c()V

    .line 105
    return-void
.end method

.method public static startHotPatch()V
    .locals 3

    .prologue
    .line 47
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "Hotpatch"

    const-string/jumbo v2, "startHotPatch"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;->a()Lcom/taobao/updatecenter/hotpatch/HotPatchManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/updatecenter/hotpatch/HotPatchManager;->d()V

    .line 49
    return-void
.end method
