.class public Lmtopsdk/mtop/common/ApiLockHelper;
.super Ljava/lang/Object;
.source "ApiLockHelper.java"


# static fields
.field private static final LOCK_PERIOD:J = 0xaL

.field private static final TAG:Ljava/lang/String; = "mtopsdk.ApiLockHelper"

.field private static lockedHashtable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lmtopsdk/mtop/common/LockedEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmtopsdk/mtop/common/ApiLockHelper;->lockedHashtable:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static iSApiLocked(Ljava/lang/String;J)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 56
    .line 57
    invoke-static {p0}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    :cond_0
    :goto_0
    return v1

    .line 60
    :cond_1
    sget-object v0, Lmtopsdk/mtop/common/ApiLockHelper;->lockedHashtable:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmtopsdk/mtop/common/LockedEntity;

    .line 61
    if-eqz v0, :cond_0

    .line 62
    iget-wide v2, v0, Lmtopsdk/mtop/common/LockedEntity;->lockStartTime:J

    sub-long v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0xa

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 63
    const/4 v1, 0x1

    .line 67
    :goto_1
    const-string/jumbo v2, "mtopsdk.ApiLockHelper"

    iget-wide v3, v0, Lmtopsdk/mtop/common/LockedEntity;->lockStartTime:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string/jumbo v2, "mtopsdk.ApiLockHelper"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string/jumbo v2, "mtopsdk.ApiLockHelper"

    iget-wide v3, v0, Lmtopsdk/mtop/common/LockedEntity;->lockStartTime:J

    sub-long v3, p1, v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_2
    invoke-static {p0}, Lmtopsdk/mtop/common/ApiLockHelper;->unLock(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static iSApiLocked(Ljava/util/List;J)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;J)Z"
        }
    .end annotation

    .prologue
    .line 37
    const/4 v1, 0x0

    .line 38
    if-eqz p0, :cond_1

    .line 39
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 40
    invoke-static {v0, p1, p2}, Lmtopsdk/mtop/common/ApiLockHelper;->iSApiLocked(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    const/4 v0, 0x1

    .line 46
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static lock(Ljava/lang/String;J)V
    .locals 3

    .prologue
    .line 94
    invoke-static {p0}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 97
    :cond_0
    sget-object v0, Lmtopsdk/mtop/common/ApiLockHelper;->lockedHashtable:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmtopsdk/mtop/common/LockedEntity;

    .line 98
    if-nez v0, :cond_1

    .line 99
    new-instance v0, Lmtopsdk/mtop/common/LockedEntity;

    invoke-direct {v0, p0, p1, p2}, Lmtopsdk/mtop/common/LockedEntity;-><init>(Ljava/lang/String;J)V

    .line 103
    :goto_1
    sget-object v1, Lmtopsdk/mtop/common/ApiLockHelper;->lockedHashtable:Ljava/util/Hashtable;

    invoke-virtual {v1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string/jumbo v1, "mtopsdk.ApiLockHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lmtopsdk/mtop/common/LockedEntity;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\u88ab\u9650\u6d4110\u79d2"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_1
    invoke-virtual {v0, p1, p2}, Lmtopsdk/mtop/common/LockedEntity;->setLockStartTime(J)V

    goto :goto_1
.end method

.method public static lock(Ljava/util/List;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 80
    if-eqz p0, :cond_0

    .line 81
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 82
    invoke-static {v0, p1, p2}, Lmtopsdk/mtop/common/ApiLockHelper;->lock(Ljava/lang/String;J)V

    goto :goto_0

    .line 85
    :cond_0
    return-void
.end method

.method public static lockApiByMtopResponse(Lmtopsdk/mtop/domain/MtopResponse;)V
    .locals 3

    .prologue
    .line 116
    if-nez p0, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v0

    .line 120
    const-string/jumbo v1, "API_STOP_SERVICE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "FAIL_SYS_FLOWLIMIT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "FAIL_SYS_TRAFFIC_LIMIT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    :cond_2
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getFullKey()Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-static {}, Lmtopsdk/mtop/global/SDKUtils;->getCorrectionTime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lmtopsdk/mtop/common/ApiLockHelper;->lock(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private static unLock(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 134
    invoke-static {p0}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    sget-object v0, Lmtopsdk/mtop/common/ApiLockHelper;->lockedHashtable:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_0
    return-void
.end method
