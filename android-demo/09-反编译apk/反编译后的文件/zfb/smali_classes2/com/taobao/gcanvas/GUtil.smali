.class public Lcom/taobao/gcanvas/GUtil;
.super Ljava/lang/Object;
.source "GUtil.java"


# static fields
.field public static BUILD_VERSION:I

.field public static JS_RENDERMODE_CONTINUOUSLY:I

.field public static JS_RENDERMODE_WHEN_DIRTY:I

.field public static MAJOR_VERSION:I

.field public static MINOR_VERSION:I

.field public static REVISION_VERSION:I

.field public static clearColor:Ljava/lang/String;

.field public static hybridLayerType:I

.field public static mCanvasRenderCmdLenLimit:I

.field public static mEnableCanvasCount:I

.field public static mInstanceCount:I

.field public static mJsVersion:I

.field public static newCanvasMode:Z

.field public static preInitActivity:Landroid/app/Activity;

.field public static preRenderMode:I

.field public static preUrl:Ljava/lang/String;

.field public static supportScroll:Z


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 20
    sput v2, Lcom/taobao/gcanvas/GUtil;->MAJOR_VERSION:I

    .line 21
    const/4 v0, 0x4

    sput v0, Lcom/taobao/gcanvas/GUtil;->MINOR_VERSION:I

    .line 22
    const/4 v0, 0x2

    sput v0, Lcom/taobao/gcanvas/GUtil;->REVISION_VERSION:I

    .line 23
    const/16 v0, 0xf

    sput v0, Lcom/taobao/gcanvas/GUtil;->BUILD_VERSION:I

    .line 24
    sput v1, Lcom/taobao/gcanvas/GUtil;->mJsVersion:I

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/taobao/gcanvas/GUtil;->preInitActivity:Landroid/app/Activity;

    .line 27
    const-string/jumbo v0, ""

    sput-object v0, Lcom/taobao/gcanvas/GUtil;->preUrl:Ljava/lang/String;

    .line 29
    sput v1, Lcom/taobao/gcanvas/GUtil;->JS_RENDERMODE_WHEN_DIRTY:I

    .line 31
    sput v2, Lcom/taobao/gcanvas/GUtil;->JS_RENDERMODE_CONTINUOUSLY:I

    sput v2, Lcom/taobao/gcanvas/GUtil;->preRenderMode:I

    .line 35
    sput v3, Lcom/taobao/gcanvas/GUtil;->hybridLayerType:I

    .line 36
    sput v1, Lcom/taobao/gcanvas/GUtil;->mInstanceCount:I

    .line 38
    sput-boolean v1, Lcom/taobao/gcanvas/GUtil;->supportScroll:Z

    .line 39
    sput-boolean v2, Lcom/taobao/gcanvas/GUtil;->newCanvasMode:Z

    .line 40
    const-string/jumbo v0, "white"

    sput-object v0, Lcom/taobao/gcanvas/GUtil;->clearColor:Ljava/lang/String;

    .line 41
    sput v3, Lcom/taobao/gcanvas/GUtil;->mCanvasRenderCmdLenLimit:I

    .line 42
    sput v1, Lcom/taobao/gcanvas/GUtil;->mEnableCanvasCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static FilterString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/16 v1, 0x27

    .line 167
    if-nez p0, :cond_1

    const-string/jumbo p0, ""

    .line 169
    :cond_0
    :goto_0
    return-object p0

    .line 168
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 169
    const/16 v0, 0x20

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getReleaseVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/taobao/gcanvas/GUtil;->MAJOR_VERSION:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/taobao/gcanvas/GUtil;->MINOR_VERSION:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/taobao/gcanvas/GUtil;->REVISION_VERSION:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/taobao/gcanvas/GUtil;->BUILD_VERSION:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static printMemoryInfo(Landroid/content/Context;)V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v3, 0x0

    .line 174
    invoke-static {}, Lcom/taobao/gcanvas/GLog;->getLevel()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    .line 210
    :cond_0
    return-void

    .line 176
    :cond_1
    if-nez p0, :cond_2

    .line 177
    sget-object p0, Lcom/taobao/gcanvas/GUtil;->preInitActivity:Landroid/app/Activity;

    .line 180
    :cond_2
    if-eqz p0, :cond_0

    .line 182
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 184
    const-string/jumbo v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 185
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 186
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 188
    const-string/jumbo v2, "CANVAS"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, " memoryInfo.availMem "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/taobao/gcanvas/GLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string/jumbo v2, "CANVAS"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, " memoryInfo.lowMemory "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, v1, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/taobao/gcanvas/GLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string/jumbo v2, "CANVAS"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, " memoryInfo.threshold "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, v1, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/taobao/gcanvas/GLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    .line 193
    const-string/jumbo v2, ""

    .line 195
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 196
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 198
    iget v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v6, v4, :cond_4

    .line 199
    iget-object v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    :goto_1
    move-object v2, v1

    goto :goto_0

    .line 202
    :cond_3
    new-array v1, v11, [I

    aput v4, v1, v3

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v1

    .line 203
    array-length v5, v1

    move v0, v3

    :goto_2
    if-ge v0, v5, :cond_0

    aget-object v6, v1, v0

    .line 205
    const-string/jumbo v7, "CANVAS"

    const-string/jumbo v8, "** MEMINFO in pid %d [%s] **\n"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v3

    aput-object v2, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/taobao/gcanvas/GLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string/jumbo v7, "CANVAS"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, " pidMemoryInfo.getTotalPrivateDirty(): "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/taobao/gcanvas/GLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string/jumbo v7, "CANVAS"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, " pidMemoryInfo.getTotalPss(): "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/taobao/gcanvas/GLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string/jumbo v7, "CANVAS"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, " pidMemoryInfo.getTotalSharedDirty(): "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    move-result v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/taobao/gcanvas/GLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_4
    move-object v1, v2

    goto/16 :goto_1
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lcom/taobao/gcanvas/GCanvasResult;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[GUtil::execute] action:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", args:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;)V

    .line 56
    const-string/jumbo v1, "getDeviceInfo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 57
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 58
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    sput v0, Lcom/taobao/gcanvas/GUtil;->mJsVersion:I

    .line 62
    :goto_0
    invoke-virtual {p0, p2, p3}, Lcom/taobao/gcanvas/GUtil;->executeGetDeviceInfo(Lorg/json/JSONArray;Lcom/taobao/gcanvas/GCanvasResult;)V

    .line 88
    :cond_0
    :goto_1
    const/4 v0, 0x1

    :cond_1
    return v0

    .line 60
    :cond_2
    sput v0, Lcom/taobao/gcanvas/GUtil;->mJsVersion:I

    goto :goto_0

    .line 64
    :cond_3
    const-string/jumbo v1, "setDefaultViewMode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 65
    invoke-virtual {p0, p2, p3}, Lcom/taobao/gcanvas/GUtil;->executeSetDefaultViewMode(Lorg/json/JSONArray;Lcom/taobao/gcanvas/GCanvasResult;)V

    goto :goto_1

    .line 67
    :cond_4
    const-string/jumbo v1, "getVersion"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 68
    invoke-virtual {p0, p2, p3}, Lcom/taobao/gcanvas/GUtil;->executeGetVersion(Lorg/json/JSONArray;Lcom/taobao/gcanvas/GCanvasResult;)V

    goto :goto_1

    .line 70
    :cond_5
    const-string/jumbo v1, "isAvailable"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 71
    invoke-virtual {p0, p2, p3}, Lcom/taobao/gcanvas/GUtil;->executeIsAvailable(Lorg/json/JSONArray;Lcom/taobao/gcanvas/GCanvasResult;)V

    goto :goto_1

    .line 73
    :cond_6
    const-string/jumbo v1, "setConfig"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    :goto_2
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 76
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 77
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    .line 78
    const-string/jumbo v3, "renderCmdLimit"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 79
    sput v1, Lcom/taobao/gcanvas/GUtil;->mCanvasRenderCmdLenLimit:I

    goto :goto_2

    .line 81
    :cond_7
    invoke-static {v2, v1}, Lcom/taobao/gcanvas/GCanvasJNI;->setConfig(Ljava/lang/String;I)V

    goto :goto_2
.end method

.method public executeGetDeviceInfo(Lorg/json/JSONArray;Lcom/taobao/gcanvas/GCanvasResult;)V
    .locals 3

    .prologue
    .line 92
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 94
    :try_start_0
    const-string/jumbo v0, "MODEL"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v2}, Lcom/taobao/gcanvas/GUtil;->FilterString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    const-string/jumbo v0, "PRODUCT"

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-static {v2}, Lcom/taobao/gcanvas/GUtil;->FilterString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    const-string/jumbo v0, "DEVICE"

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v2}, Lcom/taobao/gcanvas/GUtil;->FilterString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    const-string/jumbo v0, "ID"

    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-static {v2}, Lcom/taobao/gcanvas/GUtil;->FilterString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    const-string/jumbo v0, "MANUFACTURER"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v2}, Lcom/taobao/gcanvas/GUtil;->FilterString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    const-string/jumbo v0, "VERSION"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 100
    const-string/jumbo v0, "OS_RELEASE"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    const-string/jumbo v0, "GCANVAS_VERSION"

    invoke-static {}, Lcom/taobao/gcanvas/GUtil;->getReleaseVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    const-string/jumbo v0, "VIEWMODE"

    invoke-static {}, Lcom/taobao/gcanvas/GCanvas;->getDefaultViewMode()Lcom/taobao/gcanvas/GCanvas$ViewMode;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    const-string/jumbo v0, "GCANVASLIBENABLE"

    sget-boolean v2, Lcom/taobao/gcanvas/GCanvasJNI;->GCanvaslibEnable:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 104
    const-string/jumbo v0, "TARGET_SDK"

    iget-object v2, p0, Lcom/taobao/gcanvas/GUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 105
    const-string/jumbo v0, "IS_AVAILABLE"

    iget-object v2, p0, Lcom/taobao/gcanvas/GUtil;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/taobao/gcanvas/GCanvas;->isAvailable(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 106
    const-string/jumbo v0, "INSTANCE_COUNT"

    sget v2, Lcom/taobao/gcanvas/GUtil;->mInstanceCount:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 107
    const-string/jumbo v0, "ENABLE_CANVAS_COUNT"

    sget v2, Lcom/taobao/gcanvas/GUtil;->mEnableCanvasCount:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    invoke-virtual {p2, v1}, Lcom/taobao/gcanvas/GCanvasResult;->success(Lorg/json/JSONObject;)V

    .line 113
    return-void

    .line 108
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public executeGetVersion(Lorg/json/JSONArray;Lcom/taobao/gcanvas/GCanvasResult;)V
    .locals 3

    .prologue
    .line 142
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 144
    :try_start_0
    const-string/jumbo v0, "MAJOR"

    sget v2, Lcom/taobao/gcanvas/GUtil;->MAJOR_VERSION:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 145
    const-string/jumbo v0, "MINOR"

    sget v2, Lcom/taobao/gcanvas/GUtil;->MINOR_VERSION:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 146
    const-string/jumbo v0, "REVISION"

    sget v2, Lcom/taobao/gcanvas/GUtil;->REVISION_VERSION:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 147
    const-string/jumbo v0, "BUILD"

    sget v2, Lcom/taobao/gcanvas/GUtil;->BUILD_VERSION:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 148
    const-string/jumbo v0, "RELEASE"

    invoke-static {}, Lcom/taobao/gcanvas/GUtil;->getReleaseVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    invoke-virtual {p2, v1}, Lcom/taobao/gcanvas/GCanvasResult;->success(Lorg/json/JSONObject;)V

    .line 153
    return-void

    .line 149
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public executeIsAvailable(Lorg/json/JSONArray;Lcom/taobao/gcanvas/GCanvasResult;)V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/taobao/gcanvas/GUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/gcanvas/GCanvas;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    .line 134
    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p2}, Lcom/taobao/gcanvas/GCanvasResult;->success()V

    .line 138
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-virtual {p2}, Lcom/taobao/gcanvas/GCanvasResult;->error()V

    goto :goto_0
.end method

.method public executeSetDefaultViewMode(Lorg/json/JSONArray;Lcom/taobao/gcanvas/GCanvasResult;)V
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 126
    invoke-static {v0}, Lcom/taobao/gcanvas/GCanvasHelper;->parseViewModeString(Ljava/lang/String;)Lcom/taobao/gcanvas/GCanvas$ViewMode;

    move-result-object v0

    .line 127
    invoke-static {v0}, Lcom/taobao/gcanvas/GCanvas;->setDefaultViewMode(Lcom/taobao/gcanvas/GCanvas$ViewMode;)Z

    .line 128
    invoke-virtual {p2}, Lcom/taobao/gcanvas/GCanvasResult;->success()V

    .line 129
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    invoke-virtual {p2}, Lcom/taobao/gcanvas/GCanvasResult;->error()V

    goto :goto_0
.end method

.method public initialize(Landroid/content/Context;Lcom/taobao/gcanvas/GCanvasWebView;)V
    .locals 1

    .prologue
    .line 46
    sget v0, Lcom/taobao/gcanvas/GUtil;->mInstanceCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/taobao/gcanvas/GUtil;->mInstanceCount:I

    .line 47
    const/16 v0, 0x800

    sput v0, Lcom/taobao/gcanvas/GUtil;->mCanvasRenderCmdLenLimit:I

    .line 48
    iput-object p1, p0, Lcom/taobao/gcanvas/GUtil;->mContext:Landroid/content/Context;

    .line 49
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 161
    sget v0, Lcom/taobao/gcanvas/GUtil;->mInstanceCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/taobao/gcanvas/GUtil;->mInstanceCount:I

    .line 162
    const/4 v0, 0x0

    sput-object v0, Lcom/taobao/gcanvas/GUtil;->preInitActivity:Landroid/app/Activity;

    .line 163
    const-string/jumbo v0, ""

    sput-object v0, Lcom/taobao/gcanvas/GUtil;->preUrl:Ljava/lang/String;

    .line 164
    return-void
.end method
