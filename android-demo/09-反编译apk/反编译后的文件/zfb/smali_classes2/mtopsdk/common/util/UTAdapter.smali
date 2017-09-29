.class public Lmtopsdk/common/util/UTAdapter;
.super Ljava/lang/Object;
.source "UTAdapter.java"


# static fields
.field public static final MTOPSDK_EVENT_CACHE:I = 0xfb2e

.field public static final MTOPSDK_EVENT_ERROR:I = 0xfb87

.field public static final MTOPSDK_EVENT_ERROR_COMMON:I = 0xfb86

.field public static final MTOPSDK_EVENT_FILE_UPLOAD:I = 0xfb2f

.field public static final MTOPSDK_EVENT_LINK_MULTIPLEXING:I = 0xfb5e

.field public static final MTOPSDK_EVENT_PERFORMANCE:I = 0xfb2d

.field public static final MTOPSDK_EVENT_PERFORMANCE_STATISTICS:I = 0xfb5f

.field private static final MTOPSDK_UT_TAG:Ljava/lang/String; = "MTOPSDK"

.field private static final MTOPSDK_UT_TAG_PREFIX:Ljava/lang/String; = "MTOPSDK."

.field private static final TAG:Ljava/lang/String; = "mtopsdk.UTAdapter"

.field private static cls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static commitMethod:Ljava/lang/reflect/Method;

.field private static getMethod:Z

.field private static netExcepCommitMethod:Ljava/lang/reflect/Method;

.field private static netExcepGetMethod:Z

.field private static netPerfCommitMethod:Ljava/lang/reflect/Method;

.field private static netPerfGetMethod:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 51
    sput-object v1, Lmtopsdk/common/util/UTAdapter;->commitMethod:Ljava/lang/reflect/Method;

    .line 52
    sput-boolean v0, Lmtopsdk/common/util/UTAdapter;->getMethod:Z

    .line 54
    sput-object v1, Lmtopsdk/common/util/UTAdapter;->netPerfCommitMethod:Ljava/lang/reflect/Method;

    .line 55
    sput-boolean v0, Lmtopsdk/common/util/UTAdapter;->netPerfGetMethod:Z

    .line 57
    sput-object v1, Lmtopsdk/common/util/UTAdapter;->netExcepCommitMethod:Ljava/lang/reflect/Method;

    .line 58
    sput-boolean v0, Lmtopsdk/common/util/UTAdapter;->netExcepGetMethod:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static commit(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 136
    const/4 v0, 0x4

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    .line 137
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/lang/Object;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Ljava/lang/Object;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Ljava/lang/Object;

    aput-object v3, v1, v2

    .line 138
    invoke-static {v1}, Lmtopsdk/common/util/UTAdapter;->getNetExcepMethod([Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lmtopsdk/common/util/UTAdapter;->cls:Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 139
    sget-object v1, Lmtopsdk/common/util/UTAdapter;->netExcepCommitMethod:Ljava/lang/reflect/Method;

    sget-object v2, Lmtopsdk/common/util/UTAdapter;->cls:Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    const-string/jumbo v1, "mtopsdk.UTAdapter"

    const-string/jumbo v2, "UTAdapter commit(int eventId, Object arg1,Object arg2,Object arg3) failed---"

    invoke-static {v0, v2}, Lmtopsdk/common/util/StackTraceUtil;->getCustomStackTrace(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static commit(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 69
    const/4 v0, 0x3

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "MTOPSDK"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    .line 70
    invoke-static {}, Lmtopsdk/common/util/UTAdapter;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lmtopsdk/common/util/UTAdapter;->cls:Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 71
    sget-object v1, Lmtopsdk/common/util/UTAdapter;->commitMethod:Ljava/lang/reflect/Method;

    sget-object v2, Lmtopsdk/common/util/UTAdapter;->cls:Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    const-string/jumbo v1, "mtopsdk.UTAdapter"

    const-string/jumbo v2, "UTAdapter commit(int eventId, String msg) failed ---"

    invoke-static {v0, v2}, Lmtopsdk/common/util/StackTraceUtil;->getCustomStackTrace(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static varargs commit(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 112
    const/4 v0, 0x6

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    .line 113
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Ljava/lang/Object;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Ljava/lang/Object;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Ljava/lang/Object;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, [Ljava/lang/String;

    aput-object v3, v1, v2

    .line 115
    invoke-static {v1}, Lmtopsdk/common/util/UTAdapter;->getNetPerfMethod([Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lmtopsdk/common/util/UTAdapter;->cls:Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 116
    sget-object v1, Lmtopsdk/common/util/UTAdapter;->netPerfCommitMethod:Ljava/lang/reflect/Method;

    sget-object v2, Lmtopsdk/common/util/UTAdapter;->cls:Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    const-string/jumbo v1, "mtopsdk.UTAdapter"

    const-string/jumbo v2, "UTAdapter commit(String pageName,int eventId, Object arg1,Object arg2,Object arg3,String ... kvs) failed ---"

    invoke-static {v0, v2}, Lmtopsdk/common/util/StackTraceUtil;->getCustomStackTrace(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static commit(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 87
    const/4 v0, 0x3

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "MTOPSDK."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    .line 88
    invoke-static {}, Lmtopsdk/common/util/UTAdapter;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lmtopsdk/common/util/UTAdapter;->cls:Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 89
    sget-object v1, Lmtopsdk/common/util/UTAdapter;->commitMethod:Ljava/lang/reflect/Method;

    sget-object v2, Lmtopsdk/common/util/UTAdapter;->cls:Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    const-string/jumbo v1, "mtopsdk.UTAdapter"

    const-string/jumbo v2, "UTAdapter commit(String pageName,int eventId, String msg) failed ---"

    invoke-static {v0, v2}, Lmtopsdk/common/util/StackTraceUtil;->getCustomStackTrace(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getMethod()Ljava/lang/reflect/Method;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 150
    sget-boolean v0, Lmtopsdk/common/util/UTAdapter;->getMethod:Z

    if-eqz v0, :cond_0

    .line 151
    sget-object v0, Lmtopsdk/common/util/UTAdapter;->commitMethod:Ljava/lang/reflect/Method;

    .line 169
    :goto_0
    return-object v0

    .line 155
    :cond_0
    :try_start_0
    const-string/jumbo v0, "commitEvent"

    .line 156
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Ljava/lang/Object;

    aput-object v3, v1, v2

    .line 157
    const-string/jumbo v2, "com.taobao.statistic.TBS$Ext"

    .line 158
    const-class v3, Lmtopsdk/common/util/UTAdapter;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 159
    invoke-virtual {v3, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 160
    sput-object v2, Lmtopsdk/common/util/UTAdapter;->cls:Ljava/lang/Class;

    if-eqz v2, :cond_1

    .line 161
    sget-object v2, Lmtopsdk/common/util/UTAdapter;->cls:Ljava/lang/Class;

    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lmtopsdk/common/util/UTAdapter;->commitMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :cond_1
    :goto_1
    sput-boolean v4, Lmtopsdk/common/util/UTAdapter;->getMethod:Z

    .line 169
    sget-object v0, Lmtopsdk/common/util/UTAdapter;->commitMethod:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    const-string/jumbo v1, "mtopsdk.UTAdapter"

    const-string/jumbo v2, "Connot Found \"TBS.Ext.commitEvent(String, int, Object)\" Method ---"

    invoke-static {v0, v2}, Lmtopsdk/common/util/StackTraceUtil;->getCustomStackTrace(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getNetExcepMethod([Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 203
    sget-boolean v0, Lmtopsdk/common/util/UTAdapter;->netExcepGetMethod:Z

    if-eqz v0, :cond_0

    .line 204
    sget-object v0, Lmtopsdk/common/util/UTAdapter;->netExcepCommitMethod:Ljava/lang/reflect/Method;

    .line 221
    :goto_0
    return-object v0

    .line 208
    :cond_0
    :try_start_0
    const-string/jumbo v0, "commitEvent"

    .line 209
    const-string/jumbo v1, "com.taobao.statistic.TBS$Ext"

    .line 210
    const-class v2, Lmtopsdk/common/util/UTAdapter;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 211
    invoke-virtual {v2, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 212
    sput-object v1, Lmtopsdk/common/util/UTAdapter;->cls:Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 213
    sget-object v1, Lmtopsdk/common/util/UTAdapter;->cls:Ljava/lang/Class;

    invoke-virtual {v1, v0, p0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lmtopsdk/common/util/UTAdapter;->netExcepCommitMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :cond_1
    :goto_1
    const/4 v0, 0x1

    sput-boolean v0, Lmtopsdk/common/util/UTAdapter;->netExcepGetMethod:Z

    .line 221
    sget-object v0, Lmtopsdk/common/util/UTAdapter;->netExcepCommitMethod:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    const-string/jumbo v1, "mtopsdk.UTAdapter"

    const-string/jumbo v2, "Connot Found \"TBS.Ext.commitEvent(int, Object, Object, Object)\" Method ---"

    invoke-static {v0, v2}, Lmtopsdk/common/util/StackTraceUtil;->getCustomStackTrace(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getNetPerfMethod([Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 177
    sget-boolean v0, Lmtopsdk/common/util/UTAdapter;->netPerfGetMethod:Z

    if-eqz v0, :cond_0

    .line 178
    sget-object v0, Lmtopsdk/common/util/UTAdapter;->netPerfCommitMethod:Ljava/lang/reflect/Method;

    .line 195
    :goto_0
    return-object v0

    .line 182
    :cond_0
    :try_start_0
    const-string/jumbo v0, "commitEvent"

    .line 183
    const-string/jumbo v1, "com.taobao.statistic.TBS$Ext"

    .line 184
    const-class v2, Lmtopsdk/common/util/UTAdapter;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 185
    invoke-virtual {v2, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 186
    sput-object v1, Lmtopsdk/common/util/UTAdapter;->cls:Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 187
    sget-object v1, Lmtopsdk/common/util/UTAdapter;->cls:Ljava/lang/Class;

    invoke-virtual {v1, v0, p0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lmtopsdk/common/util/UTAdapter;->netPerfCommitMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :cond_1
    :goto_1
    const/4 v0, 0x1

    sput-boolean v0, Lmtopsdk/common/util/UTAdapter;->netPerfGetMethod:Z

    .line 195
    sget-object v0, Lmtopsdk/common/util/UTAdapter;->netPerfCommitMethod:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    const-string/jumbo v1, "mtopsdk.UTAdapter"

    const-string/jumbo v2, "Connot Found \"TBS.Ext.commitEvent(String, int, Object, Object, Object, String...)\" Method ---"

    invoke-static {v0, v2}, Lmtopsdk/common/util/StackTraceUtil;->getCustomStackTrace(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static unInit()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 225
    sput-boolean v0, Lmtopsdk/common/util/UTAdapter;->getMethod:Z

    .line 226
    sput-boolean v0, Lmtopsdk/common/util/UTAdapter;->netPerfGetMethod:Z

    .line 227
    sput-boolean v0, Lmtopsdk/common/util/UTAdapter;->netExcepGetMethod:Z

    .line 228
    return-void
.end method
