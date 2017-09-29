.class public Lmtopsdk/common/util/TBSdkLog;
.super Ljava/lang/Object;
.source "TBSdkLog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.TBSdkLog"

.field private static printLog:Z


# instance fields
.field private lTag:Ljava/lang/String;

.field private logBuf:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 8
    invoke-static {}, Lmtopsdk/common/util/SdkSetting;->getEnv()Lmtopsdk/common/util/SdkSetting$ENV;

    move-result-object v0

    sget-object v1, Lmtopsdk/common/util/SdkSetting$ENV;->release:Lmtopsdk/common/util/SdkSetting$ENV;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lmtopsdk/common/util/TBSdkLog;->printLog:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object v0, p0, Lmtopsdk/common/util/TBSdkLog;->lTag:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lmtopsdk/common/util/TBSdkLog;->logBuf:Ljava/lang/StringBuilder;

    .line 82
    iput-object p1, p0, Lmtopsdk/common/util/TBSdkLog;->lTag:Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lmtopsdk/common/util/TBSdkLog;->logBuf:Ljava/lang/StringBuilder;

    .line 84
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 20
    sget-boolean v0, Lmtopsdk/common/util/TBSdkLog;->printLog:Z

    .line 21
    return-void
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 25
    sget-boolean v0, Lmtopsdk/common/util/TBSdkLog;->printLog:Z

    if-eqz v0, :cond_0

    .line 26
    if-eqz p1, :cond_0

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 29
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 52
    sget-boolean v0, Lmtopsdk/common/util/TBSdkLog;->printLog:Z

    .line 53
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 58
    sget-boolean v0, Lmtopsdk/common/util/TBSdkLog;->printLog:Z

    .line 59
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 36
    sget-boolean v0, Lmtopsdk/common/util/TBSdkLog;->printLog:Z

    .line 37
    return-void
.end method

.method public static varargs i(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 41
    sget-boolean v0, Lmtopsdk/common/util/TBSdkLog;->printLog:Z

    if-eqz v0, :cond_0

    .line 42
    if-eqz p1, :cond_0

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 45
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    :cond_0
    return-void
.end method

.method public static isPrintLog()Z
    .locals 1

    .prologue
    .line 16
    sget-boolean v0, Lmtopsdk/common/util/TBSdkLog;->printLog:Z

    return v0
.end method

.method public static setPrintLog(Z)V
    .locals 0

    .prologue
    .line 11
    sput-boolean p0, Lmtopsdk/common/util/TBSdkLog;->printLog:Z

    .line 13
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 64
    sget-boolean v0, Lmtopsdk/common/util/TBSdkLog;->printLog:Z

    .line 65
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 70
    sget-boolean v0, Lmtopsdk/common/util/TBSdkLog;->printLog:Z

    .line 71
    return-void
.end method


# virtual methods
.method public append(Ljava/lang/Object;)Lmtopsdk/common/util/TBSdkLog;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lmtopsdk/common/util/TBSdkLog;->logBuf:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    return-object p0
.end method

.method public append(Ljava/lang/String;)Lmtopsdk/common/util/TBSdkLog;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lmtopsdk/common/util/TBSdkLog;->logBuf:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    return-object p0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 97
    sget-boolean v0, Lmtopsdk/common/util/TBSdkLog;->printLog:Z

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lmtopsdk/common/util/TBSdkLog;->lTag:Ljava/lang/String;

    iget-object v0, p0, Lmtopsdk/common/util/TBSdkLog;->logBuf:Ljava/lang/StringBuilder;

    .line 100
    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 109
    sget-boolean v0, Lmtopsdk/common/util/TBSdkLog;->printLog:Z

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lmtopsdk/common/util/TBSdkLog;->lTag:Ljava/lang/String;

    iget-object v0, p0, Lmtopsdk/common/util/TBSdkLog;->logBuf:Ljava/lang/StringBuilder;

    .line 112
    :cond_0
    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 115
    sget-boolean v0, Lmtopsdk/common/util/TBSdkLog;->printLog:Z

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lmtopsdk/common/util/TBSdkLog;->lTag:Ljava/lang/String;

    iget-object v0, p0, Lmtopsdk/common/util/TBSdkLog;->logBuf:Ljava/lang/StringBuilder;

    .line 118
    :cond_0
    return-void
.end method

.method public i()V
    .locals 1

    .prologue
    .line 103
    sget-boolean v0, Lmtopsdk/common/util/TBSdkLog;->printLog:Z

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lmtopsdk/common/util/TBSdkLog;->lTag:Ljava/lang/String;

    iget-object v0, p0, Lmtopsdk/common/util/TBSdkLog;->logBuf:Ljava/lang/StringBuilder;

    .line 106
    :cond_0
    return-void
.end method

.method public w()V
    .locals 1

    .prologue
    .line 121
    sget-boolean v0, Lmtopsdk/common/util/TBSdkLog;->printLog:Z

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lmtopsdk/common/util/TBSdkLog;->lTag:Ljava/lang/String;

    iget-object v0, p0, Lmtopsdk/common/util/TBSdkLog;->logBuf:Ljava/lang/StringBuilder;

    .line 124
    :cond_0
    return-void
.end method

.method public w(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 127
    sget-boolean v0, Lmtopsdk/common/util/TBSdkLog;->printLog:Z

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lmtopsdk/common/util/TBSdkLog;->lTag:Ljava/lang/String;

    iget-object v0, p0, Lmtopsdk/common/util/TBSdkLog;->logBuf:Ljava/lang/StringBuilder;

    .line 130
    :cond_0
    return-void
.end method
